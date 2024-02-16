// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Gengar is ERC20, Ownable {
    constructor(address initialOwner)
        ERC20("Gengar", "gng")
        Ownable(initialOwner)
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        uint256 newamount = amount * 1e18;
        _mint(to, newamount);
    }
}