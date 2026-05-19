// SPDX-License-Identifier: MIT

contract RevShell {

    address private owner;
    bytes private revShell;

    constructor(address _owner) {
        owner = _owner;
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