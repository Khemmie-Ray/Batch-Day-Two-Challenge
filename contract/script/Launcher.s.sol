// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Launcher} from "../src/Launcher.sol";

contract LauncherScript is Script {
    Launcher public launcher;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        launcher = new Launcher();

        vm.stopBroadcast();
    }
}
