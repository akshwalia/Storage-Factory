// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfStorage;

    function createSimpleStorageContarct() public {
        SimpleStorage newSimpleStorage = new SimpleStorage();
        listOfStorage.push(newSimpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        listOfStorage[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function retrieveInfo(uint256 index) view public returns(uint256) {
        return listOfStorage[index].retrieve();
    }
}