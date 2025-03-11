// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {SimpleStorage} from "./SimpleStorage.sol";

// is  代表繼承
contract AddFiveStorage is SimpleStorage {
    function store(uint256 _newNumber) public override {
        myFavoriteNumber = _newNumber + 5;
    }
}