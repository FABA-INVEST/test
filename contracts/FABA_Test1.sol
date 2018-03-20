pragma solidity ^0.4.18;

import '../zeppelin-solidity/contracts/token/ERC20/ERC20Basic.sol';
import '../zeppelin-solidity/contracts/token/ERC20/PausableToken.sol';

/**
 * @title FABA Test Token 1
 * @dev Very simple Token example
 * `StandardToken` functions.
 */
contract FABATest1 {

  uint256 public totalSupply_;
  mapping(address => uint256) balances;

  string public constant name = "FABA_Test1"; // solium-disable-line uppercase
  string public constant symbol = "FABA1"; // solium-disable-line uppercase
  uint8 public constant decimals = 18; // solium-disable-line uppercase

  uint256 public constant INITIAL_SUPPLY = 160000000 * (10 ** uint256(decimals));

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  function FABATest1() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    // Transfer(0x0, msg.sender, INITIAL_SUPPLY);
  }

}
