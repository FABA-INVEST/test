pragma solidity ^0.4.15;

import 'contracts/BeanToken1.sol';

contract Factory {

  address[] public contracts;

  function getContractCount() 
    public
    constant
    returns(uint contractCount)
  {
    return contracts.length;
  }



    function createContract(
        address _fundsWallet,
        uint256 _startTimestamp,
        uint256 _minCapEth,
        uint256 _maxCapEth) 
        public
        returns(address created) 
    {
        BeanToken1 bt = new BeanToken1(
            _fundsWallet,
            _startTimestamp,
            _minCapEth * 1 ether,
            _maxCapEth * 1 ether
        );
        contracts.push(bt);
        return bt;
    }
}

