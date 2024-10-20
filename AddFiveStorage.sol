// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    //override the store function
    function store(uint256 num) public override {
        myFavoriteNumber = num + 5;
    }
}