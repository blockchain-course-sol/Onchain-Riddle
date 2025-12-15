// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {OnchainRiddle} from "../src/OnchainRiddle.sol";

contract OnchainRiddleScript is Script {
    function setUp() public {}

    function run() public returns (OnchainRiddle) {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        OnchainRiddle riddleContract = new OnchainRiddle();

        console.log("OnchainRiddle deployed at:", address(riddleContract));
        console.log("Bot address:", riddleContract.bot());

        vm.stopBroadcast();

        return riddleContract;
    }
}