// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/UsdcNizaTestnet.sol";
import "../src/WethNizaTestnet.sol";

contract DeployTokens is Script {
    function run() external {
        string memory rpcUrl = vm.envString("RPC_URL");

        require(bytes(rpcUrl).length > 0, "RPC_URL is not set");

        vm.createSelectFork(rpcUrl);

        vm.startBroadcast();

        USDC usdc = new USDC();
        WETH weth = new WETH();

        vm.stopBroadcast();
    }
}