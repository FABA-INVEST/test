pragma solidity ^0.4.18;
import '../zeppelin-solidity/contracts/token/ERC20/ERC20Basic.sol';
import '../zeppelin-solidity/contracts/token/ERC20/PausableToken.sol';

/**
 * @title FABA Test Token 1
 * @dev Very simple Token example
 * `StandardToken` functions.
 */
contract FABAToken1 is PausableToken {

  using SafeMath for uint256;

  // mapping(address => uint256) balances;

  string public constant name = "FABA_Token1"; // solium-disable-line uppercase
  string public constant symbol = "FABAT1"; // solium-disable-line uppercase
  uint8 public constant decimals = 18; // solium-disable-line uppercase

  uint256 public constant INITIAL_SUPPLY = 10000 * (10 ** uint256(decimals));

  uint256 public totalSupply_;

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  function FABAToken1() public {
    totalSupply_ = INITIAL_SUPPLY;
    // balances[msg.sender] = INITIAL_SUPPLY;
    // Transfer(0x0, msg.sender, INITIAL_SUPPLY);
  }

}
