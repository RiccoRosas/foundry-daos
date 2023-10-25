//SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {TimelockController} from "lib/openzeppelin-contracts/contracts/governance/TimelockController.sol";

contract TimeLock is TimelockController {
    //minDelay is how long you have to wait before exexcuting
    //proposers is the list of addresses that can prpose
    //executors is th list of addesses that can execute 
    constructor(uint256 minDelay, address[] memory proposers, address[] memory executors)
    TimelockController(minDelay, proposers, executors, msg.sender)
     {}
}