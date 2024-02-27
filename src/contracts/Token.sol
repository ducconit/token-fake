// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";

contract Token is ERC20, Ownable {
  using Math for uint256;

  uint256 public constant cap = 1_000_000_000 * 1e18;

  mapping (address => uint256) private _balances;

  mapping (address => mapping (address => uint256)) private _allowances;

  uint256 private _totalSupply;
  uint8 private _decimals;
  string private _symbol;
  string private _name;

  constructor(string memory name, string memory symbol)ERC20(name, symbol) Ownable() {
    _mint(msg.sender, cap);
  }
}