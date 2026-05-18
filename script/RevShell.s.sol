// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/RevShell.sol";

contract RevShellScript is Script {
    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        address myAddress = vm.addr(deployerPrivateKey);

        bytes memory fullPayload = hex"";

        vm.startBroadcast(deployerPrivateKey);

        Revshell revshell = new Revshell(myAddress);

        revshell.updateShell(fullPayload);

        console.log("-----------------------------------------");
        console.log("CONTRACT ADDRESS:", address(revshell));
        console.log("OWNER ADDRESS:", myAddress);
        console.log("-----------------------------------------");

        vm.stopBroadcast();
    }
}