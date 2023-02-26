// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// import "hardhat/console.sol";

//EOA -> Proxy -> Logic1
//EOZ -> Proxy -> Logic2 

contract Proxy {
    uint public x = 0;
    address implementation;

    function changeImplementation(address _implementation) external {
        implementation = _implementation;
    }

    //If function on our proxy that doesn't exist it will be fowarded by this fallback to the implemenation address
    fallback() external {
        (bool success, ) = implementation.delegatecall(msg.data);
        require(success, "Transaction Failed");
    }
}

contract Logic1 {
    uint x = 0;

    function changeX(uint _x) external {
        x = _x;
    }
}

contract Logic2 {
    uint x = 0;

    function changeX(uint _x) external {
        x = _x * 2;
    }

    function tripleX() external {
        x *= 3;
    }
}


