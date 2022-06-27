// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract ExampleExternalContract {
    bool public completed;

    function complete() public payable {
        completed = true;
    }

    function reverseComplete() public payable {
        completed = false;
    }

    function reTransfer(address payable receiver) public payable {
        receiver.transfer(address(this).balance);
    }
}
