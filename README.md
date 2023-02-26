# Proxy Storage 

### In this project a proxy contract is written with 2 logic contracts (implementaion contracts). In the proxy contract a function is created to pass in the the implementation address (upgraded contract) and a fallback function that uses delegatecall is created to forward the calls to the implementation (logic contract), all the while using the storage on the proxy contract.

### A number of tests have been written in the test folder (proxy.js) (`npx hardhat test`) to test the smart contract functionality and ensure the upgrade from Logic1 to Logic2 contract's are working correctly. 