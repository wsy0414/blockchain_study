// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25; // this is the solidity version

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

contract FundMe {

    uint256 public minimizeUsd = 5 * 1e18;

    mapping(address funder => uint256 fundedAmount) public fundedRecord;

    function fund() public payable {
        // Allow users to send $
        // Have a minimum $ sent
        require(convertEthToUsd(msg.value) >= minimizeUsd, "didn't send enough ETH"); // 1e18 = 1ETH = 1 * 10 ** 18
        // msg.sender代表發起這個交易的address
        fundedRecord[msg.sender] = fundedRecord[msg.sender] + msg.value;
    }

    function getVersion() view public returns (uint256) {
        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
    }

    function getRate() public view returns(uint256) {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        // 如果是多回傳值，可以用這種方式接有需要的值
        (, int256 price, , , ) = priceFeed.latestRoundData();

        // 因為msg.value的單位是wei所以要做換算
        return uint256(price * 1e10);
    }

    function convertEthToUsd(uint256 ethAmount) public view returns(uint256) {
        uint256 rate = getRate();
        // 除以1e18是要處理小數位數
        uint256 convertedValue = (rate * ethAmount) / 1e18;
        return convertedValue;
    }

}