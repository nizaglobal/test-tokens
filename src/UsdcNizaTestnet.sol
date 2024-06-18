// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract USDC is ERC20 {
    constructor() ERC20("USD Coin Best", "USDCB") {
        _mint(msg.sender, 100000000 * 10 ** 6);
    }

    function decimals() public view virtual override returns (uint8) {
        return 6;
    }
}