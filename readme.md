##### Ekolance Bootcamp

Create a smart contract for a voting application. In this application, allow a particular address to add candidates to be voted for. This address should be able to add the candidates within 3 mins of which the smart contract was deployed. After 3 mins, additional candidates can no longer be added and the smart contract should allow people to start voting. The voting period should last for another 3mins after which voting is no longer allowed. After the voting period, users should be able to get the results and the winning candidate. Please follow the instructions below:

- Implement this interface: https://github.com/Ekolance/Voting-Smart-Contract-Interface/blob/main/IVotingContract.sol

- Use the variables and functions in the default _ballot.sol smart contract in remix IDE, except that instead of proposals, you now have candidates, and the candidates are added one after another via a function, not in the constructor. 

### Test Address
```javascript 
["0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db", "0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2", "0x1aE0EA34a72D944a8C7603FfB3eC30a6669E454C"]
```