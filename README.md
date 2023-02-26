# Proxy Storage 

### In this project a proxy contract is written with 2 logic contracts (implementaion contracts). In the proxy contract a function is created to pass in the the implementation address and a fallabck function that uses delegatecall is created to forwad the calls to the implemnation (logic contract), all the while using the storage on the proxy contract.

### A number of tests have been written in the test folder (proxy.js) to test the smart contract functionality and ensure the upgrade from Logic1 contract to Logic2 contract are working correctly. 