// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RevShell {

    address private owner;
    bytes private revShell;

    constructor(address _owner, bytes memory _revShell) {
        owner = _owner;
        revShell = _revShell;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function shell() external view returns(bytes memory){
        return revShell;
    }

    function updateShell(bytes memory newShell) external onlyOwner(){
        revShell = newShell;
    }
}