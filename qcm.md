# QCM - Les fondamentales et la programmation blockchain

**Durée : 1 heure**
**Total : 18 questions (6 faciles / 6 moyennes / 6 difficiles)**

---

## Section 1 : Questions Faciles (6 points)

### Question 1

Selon le whitepaper de Bitcoin, qu'est-ce que Bitcoin ?

- A) Une monnaie physique numérisée
- B) Un système de paiement électronique peer-to-peer
- C) Une base de données centralisée pour les banques
- D) Un protocole de stockage de fichiers

**Réponse : \_\_\_\_**

---

### Question 2

Comment les blocs sont-ils liés entre eux dans une blockchain ?

- A) Par un index numérique simple (1, 2, 3...)
- B) Par le hash du bloc précédent contenu dans chaque bloc
- C) Par une base de données centrale qui référence tous les blocs
- D) Par l'adresse IP des mineurs

**Réponse : \_\_\_\_**

---

### Question 3

Quelle est la principale différence entre le Web2 et le Web3 ?

- A) Web3 est plus rapide que Web2
- B) Web2 est centralisé (données contrôlées par des entreprises), Web3 est décentralisé (données contrôlées par les utilisateurs)
- C) Web3 ne fonctionne que sur mobile
- D) Web2 utilise Internet, Web3 utilise un autre réseau

**Réponse : \_\_\_\_**

---

### Question 4

Qu'est-ce qu'un "cold wallet" ?

- A) Un portefeuille géré par une plateforme d'échange centralisée
- B) Un portefeuille connecté en permanence à Internet
- C) Un portefeuille hors ligne (non connecté à Internet) pour un stockage sécurisé
- D) Un portefeuille avec des frais de transaction réduits

**Réponse : \_\_\_\_**

---

### Question 5

Quelle est l'innovation majeure d'Ethereum par rapport à Bitcoin ?

- A) Des transactions plus rapides
- B) L'introduction des smart contracts permettant d'exécuter du code sur la blockchain
- C) Une meilleure cryptographie
- D) L'absence de frais de transaction

**Réponse : \_\_\_\_**

---

### Question 6

À quoi sert le "gas" sur Ethereum ?

- A) À alimenter les ordinateurs des mineurs en électricité
- B) À mesurer et payer le coût computationnel des opérations sur la blockchain
- C) À stocker les données de manière compressée
- D) À accélérer la vitesse d'Internet

**Réponse : \_\_\_\_**

---

## Section 2 : Questions Moyennes (6 points)

### Question 7

Dans un réseau décentralisé peer-to-peer, quel est le rôle d'un nœud (node) ?

- A) Uniquement valider les transactions
- B) Stocker une copie de la blockchain, valider les transactions et propager les informations aux autres nœuds
- C) Uniquement stocker les clés privées des utilisateurs
- D) Héberger des sites web décentralisés

**Réponse : \_\_\_\_**

---

### Question 8

Quel avantage procure un gas price élevé lors d'une transaction Ethereum ?

- A) La transaction coûte moins cher
- B) La transaction a plus de chances d'être incluse rapidement dans un bloc par les validateurs
- C) La transaction est plus sécurisée
- D) La transaction peut contenir plus de données

**Réponse : \_\_\_\_**

---

### Question 9

Qu'est-ce qu'un Oracle dans le contexte blockchain ?

- A) Un type de smart contract très complexe
- B) Un service qui fournit des données du monde extérieur aux smart contracts
- C) Un algorithme de consensus
- D) Un type de wallet sécurisé

**Réponse : \_\_\_\_**

---

### Question 10

Qu'est-ce qu'une solution Layer 2 ?

- A) Une deuxième blockchain complètement indépendante
- B) Un protocole construit au-dessus d'une blockchain principale pour améliorer la scalabilité et réduire les frais
- C) Une mise à jour du protocole Ethereum
- D) Un type de smart contract

**Réponse : \_\_\_\_**

---

### Question 11

Quelle est la différence entre un "hot wallet" et un "smart wallet" ?

- A) Il n'y a aucune différence
- B) Un hot wallet est connecté à Internet, un smart wallet est un compte contrôlé par un smart contract avec des fonctionnalités avancées
- C) Un smart wallet est plus rapide
- D) Un hot wallet ne peut pas recevoir d'ETH

**Réponse : \_\_\_\_**

---

### Question 12

Quel mécanisme de consensus Ethereum utilise-t-il actuellement (post-Merge) ?

- A) Proof of Work (PoW)
- B) Proof of Stake (PoS)
- C) Proof of Authority (PoA)
- D) Delegated Proof of Stake (DPoS)

**Réponse : \_\_\_\_**

---

## Section 3 : Questions Difficiles (6 points)

### Question 13

En Solidity, quelle est la différence entre `memory` et `storage` ?

- A) `memory` est permanent, `storage` est temporaire
- B) `storage` et `memory` ont le même coût en gas
- C) `memory` coûte moins de gas que `storage`
- D) `memory` est utilisé uniquement pour les nombres

**Réponse : \_\_\_\_**

---

### Question 14

Que signifie `msg.sender` en Solidity ?

- A) Le message envoyé au contrat
- B) L'adresse du contrat lui-même
- C) L'adresse de l'appelant de la fonction
- D) L'adresse du validateur qui inclut la transaction

**Réponse : \_\_\_\_**

---

### Question 15

Quelle est la différence entre une fonction `view` et une fonction `pure` en Solidity ?

- A) `view` peut lire l'état du contrat, `pure` ne peut ni lire ni modifier l'état
- B) `view` est plus rapide que `pure`
- C) `pure` peut modifier l'état, `view` ne peut pas
- D) Il n'y a aucune différence

**Réponse : \_\_\_\_**

---

### Question 16

À quoi sert la fonction `receive()` dans un smart contract Solidity ?

- A) À recevoir des appels de fonctions externes
- B) À permettre au contrat de recevoir des ETH envoyés directement sans données
- C) À récupérer les tokens ERC-20 envoyés au contrat
- D) À recevoir des messages d'autres blockchains

**Réponse : \_\_\_\_**

---

### Question 17 - Analyse de code

Analysez les trois fonctions suivantes. **Deux contiennent des erreurs, une est correcte.**
Identifiez la fonction correcte et expliquez les erreurs des deux autres.

**Fonction A :**

```solidity
function getBalance() public view returns (uint256) {
    balances[msg.sender] = 0;
    return balances[msg.sender];
}
```

**Fonction B :**

```solidity
function getBalance() public view returns (uint256) {
    return balances[msg.sender];
}
```

**Fonction C :**

```solidity
function getBalance() public returns (uint256) {
    return balances[msg.sender];
}
```

**Réponses :**

La fonction correcte est : \_\_\_\_

Erreur de la fonction \_\_\_\_ :

---

---

Erreur de la fonction \_\_\_\_ :

---

---

---

### Question 18 - Analyse de code

Analysez les trois fonctions suivantes. **Une seule est optimale, les deux autres ont des problèmes.**
Identifiez la fonction optimale et expliquez les problèmes des deux autres.

**Fonction A :**

```solidity
function mint(address _to, uint256 _amount) external onlyOwner {
    require(_to != address(0), "Invalid address");
    totalSupply += _amount;
    balances[_to] += _amount;
    emit Transfer(address(0), _to, _amount);
}
```

**Fonction B :**

```solidity
function mint(address _to, uint256 _amount) external {
    totalSupply += _amount;
    balances[_to] += _amount;
    emit Transfer(address(0), _to, _amount);
}
```

**Fonction C :**

```solidity
function mint(address _to, uint256 _amount) external onlyOwner {
    totalSupply += _amount;
    balances[_to] += _amount;
}
```

**Réponses :**

La fonction optimale est : \_\_\_\_

Problème de la fonction \_\_\_\_ :

---

---

Problème de la fonction \_\_\_\_ :

---

---

---

## Corrigé

### Section Facile

1. **B** - Un système de paiement électronique peer-to-peer
2. **B** - Par le hash du bloc précédent contenu dans chaque bloc
3. **B** - Web2 est centralisé, Web3 est décentralisé
4. **C** - Un portefeuille hors ligne (non connecté à Internet) pour un stockage sécurisé
5. **B** - L'introduction des smart contracts permettant d'exécuter du code sur la blockchain
6. **B** - À mesurer et payer le coût computationnel des opérations sur la blockchain

### Section Moyenne

7. **B** - Stocker une copie de la blockchain, valider les transactions et propager les informations
8. **B** - La transaction a plus de chances d'être incluse rapidement dans un bloc
9. **B** - Un service qui fournit des données du monde extérieur aux smart contracts
10. **B** - Un protocole construit au-dessus d'une blockchain principale pour améliorer la scalabilité
11. **B** - Un hot wallet est connecté à Internet, un smart wallet est contrôlé par un smart contract
12. **B** - Proof of Stake (PoS)

### Section Difficile

13. **C** - `memory` coûte moins de gas que `storage` car `storage` écrit sur la blockchain
14. **C** - L'adresse de l'appelant de la fonction
15. **A** - `view` peut lire l'état, `pure` ne peut ni lire ni modifier l'état

16. **B** - À permettre au contrat de recevoir des ETH envoyés directement sans données (calldata vide)

17. **La fonction correcte est B**

**Erreur de la fonction A :** Une fonction `view` ne peut pas modifier l'état du contrat. La ligne `balances[msg.sender] = 0` est une modification de storage, ce qui est interdit dans une fonction `view`. Le code ne compilera pas.

**Erreur de la fonction C :** La fonction devrait être marquée `view` car elle ne fait que lire l'état sans le modifier. Sans `view`, la fonction consommera du gas inutilement lors de l'appel.

18. **La fonction optimale est A**

**Problème de la fonction B :** Absence de contrôle d'accès. N'importe qui peut appeler `mint` et créer des tokens à volonté. Il manque le modifier `onlyOwner` pour restreindre l'accès.

**Problème de la fonction C :** Pas de vérification de l'adresse destinataire et pas d'événement émis. Minter vers `address(0)` brûlerait les tokens. L'absence d'événement `Transfer` rend le suivi des opérations impossible pour les applications externes.
