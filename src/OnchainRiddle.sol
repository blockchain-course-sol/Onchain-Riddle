// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OnchainRiddle {
    address public bot;

    struct Riddle {
        string riddle;
        bytes32 answerHash;
        address winner;
        bool isActive;
        uint256 timestamp;
        uint256 prize;
    }

    uint256 public riddleCounter;
    mapping(uint256 => Riddle) public riddles;

    event RiddleSet(uint256 indexed riddleId, string riddle, uint256 prize);
    event AnswerAttempt(
        uint256 indexed riddleId,
        address indexed user,
        bool correct
    );
    event Winner(uint256 indexed riddleId, address indexed user, uint256 prize);
    event ContractFunded(address indexed funder, uint256 amount);

    modifier onlyBot() {
        require(msg.sender == bot, "Only bot can call this function");
        _;
    }

    constructor() {
        bot = msg.sender;
    }

    function setRiddle(
        string memory _riddle,
        bytes32 _answerHash,
        uint256 _prizeAmount
    ) external onlyBot {
        if (riddleCounter > 0) {
            require(
                !riddles[riddleCounter].isActive,
                "Previous riddle still active"
            );
        }
        require(
            address(this).balance >= _prizeAmount,
            "Insufficient contract balance for prize"
        );

        riddleCounter++;
        riddles[riddleCounter] = Riddle({
            riddle: _riddle,
            answerHash: _answerHash,
            winner: address(0),
            isActive: true,
            timestamp: block.timestamp,
            prize: _prizeAmount
        });

        emit RiddleSet(riddleCounter, _riddle, _prizeAmount);
    }

    function submitAnswer(string memory _answer) external {
        require(riddleCounter > 0, "No riddles exist");
        Riddle storage currentRiddle = riddles[riddleCounter];
        require(currentRiddle.isActive, "No active riddle");
        require(currentRiddle.winner == address(0), "Riddle already solved");

        if (keccak256(abi.encodePacked(_answer)) == currentRiddle.answerHash) {
            currentRiddle.winner = msg.sender;
            currentRiddle.isActive = false;

            uint256 prize = currentRiddle.prize;
            if (prize > 0) {
                (bool success, ) = payable(msg.sender).call{value: prize}("");
                require(success, "Prize transfer failed");
            }

            emit Winner(riddleCounter, msg.sender, prize);
        }

        emit AnswerAttempt(
            riddleCounter,
            msg.sender,
            currentRiddle.winner == msg.sender
        );
    }

    function getCurrentRiddle()
        external
        view
        returns (string memory, bool, address, uint256)
    {
        require(riddleCounter > 0, "No riddles exist");
        Riddle memory current = riddles[riddleCounter];
        return (current.riddle, current.isActive, current.winner, current.prize);
    }

    function getRiddle(
        uint256 _riddleId
    ) external view returns (string memory, bool, address, uint256, uint256) {
        require(
            _riddleId > 0 && _riddleId <= riddleCounter,
            "Invalid riddle ID"
        );
        Riddle memory r = riddles[_riddleId];
        return (r.riddle, r.isActive, r.winner, r.timestamp, r.prize);
    }

    function getContractBalance() external view returns (uint256) {
        return address(this).balance;
    }

    receive() external payable {
        emit ContractFunded(msg.sender, msg.value);
    }
}
