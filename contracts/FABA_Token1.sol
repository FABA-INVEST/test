pragma solidity ^0.4.18;

import 'zeppelin-solidity/contracts/token/ERC20/ERC20Basic.sol';
import 'zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';


/**
 * @title Bean Token 1
 * @dev Simple Standard Token
 * `StandardToken` functions.
 */
contract BeanToken1 is StandardToken {

  using SafeMath for uint256;

  mapping(address => uint256) balances;

  string public constant name = "BeanToken1"; // solium-disable-line uppercase
  string public constant symbol = "BEAN1"; // solium-disable-line uppercase
  uint8 public constant decimals = 18; // solium-disable-line uppercase

  uint256 public constant INITIAL_SUPPLY = 16000000 * (10 ** uint256(decimals));

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  uint256 public totalSupply = INITIAL_SUPPLY;
  uint256 public totalRaised; // total ether raised (in wei)

  uint256 public startTimestamp; // timestamp after which ICO will start
  uint256 public durationSeconds = 4 * 7 * 24 * 60 * 60; // 4 weeks

  uint256 public minCap; // the ICO ether goal (in wei)
  uint256 public maxCap; // the ICO ether max cap (in wei)

  /**
   * Address which will receive raised funds 
   * and owns the total supply of tokens
   */
    address public fundsWallet;

    function BeanToken1(
        address _fundsWallet,
        uint256 _startTimestamp,
        uint256 _minCap,
        uint256 _maxCap) {
        fundsWallet = _fundsWallet;
        startTimestamp = _startTimestamp;
        minCap = _minCap;
        maxCap = _maxCap;

        // initially assign all tokens to the fundsWallet
        balances[fundsWallet] = totalSupply;
        Transfer(0x0, fundsWallet, totalSupply);
  }


  function() isIcoOpen payable {
        totalRaised = totalRaised.add(msg.value);

        uint256 tokenAmount = calculateTokenAmount(msg.value);
        balances[fundsWallet] = balances[fundsWallet].sub(tokenAmount);
        balances[msg.sender] = balances[msg.sender].add(tokenAmount);
        Transfer(fundsWallet, msg.sender, tokenAmount);

        // immediately transfer ether to fundsWallet
        fundsWallet.transfer(msg.value);
    }

    function calculateTokenAmount(uint256 weiAmount) constant returns(uint256) {
        // standard rate: 1 USD = 1 FABA
        uint256 tokenAmount = weiAmount.mul(50);
        if (now <= startTimestamp + 7 days) {
            // +50% bonus during first week               // TODO: check the numbers!
            return tokenAmount.mul(150).div(100);
        } else {
            return tokenAmount;
        }
    }

    function transfer(address _to, uint _value) isIcoFinished returns (bool) {
        return super.transfer(_to, _value);
    }

    function transferFrom(address _from, address _to, uint _value) isIcoFinished returns (bool) {
        return super.transferFrom(_from, _to, _value);
    }

    modifier isIcoOpen() {
        require(now >= startTimestamp);
        require(now <= (startTimestamp + durationSeconds) || totalRaised < minCap);
        require(totalRaised <= maxCap);
        _;
    }

    modifier isIcoFinished() {
        require(now >= startTimestamp);
        require(totalRaised >= maxCap || (now >= (startTimestamp + durationSeconds) && totalRaised >= minCap));
        _;
    }
}

// var now = Math.floor(new Date().getTime() / 1000);
// var ICOstart = Math.floor(new Date('2018-04-01').getTime() /1000)
// var Phase1 = Math.floor(new Date('2018-04-01').getTime() /1000)
// var Phase2 = Math.floor(new Date('2018-04-08').getTime() /1000)
// var Phase3 = Math.floor(new Date('2018-04-15').getTime() /1000)



