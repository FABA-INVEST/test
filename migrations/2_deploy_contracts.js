
// var ProofOfExistence3 = artifacts.require("./ProofOfExistence3.sol");

// module.exports = function(deployer) {
//  deployer.deploy(ProofOfExistence3);
// };

//var TestContract = artifacts.require("FABATest1");
//var BeanToken1 = artifacts.require("BeanToken1");
var beanToken = artifacts.require("BeanToken1.sol");
var beanFactory = artifacts.require("Factory.sol");


module.exports = function(deployer, network, accounts) {
  // deployer.deploy(TestContract);
  // deployer.deploy( beanToken( "0xe7e6fd5d8f4c3442eb82a07c15814defb3a34d60", 1522540800, 100, 160000000, {gas: 6721975, "0xa1879c11816468c38429701b739f8a9e31941633"});

  // deployer.deploy( beanToken1( "0x8450a1ade46e95d1ad47d29b3b98cacb9818b4ae", "1522540800", "100", "160000000") );
  // deployer.deploy( beanToken );
  deployer.deploy(beanFactory);
  // deployer.deploy(TestContract, {gas: 6721975, "0xa1879c11816468c38429701b739f8a9e31941633"});
  // deployer.deploy(TokenContract, {gas: 6721975, "0xa1879c11816468c38429701b739f8a9e31941633"});

  // deployer.deploy(beanToken( "0x627306090abab3a6e1400e9345bc60c78a8bef57", "1522540800", "100", "160000000" ))

//    deployer.deploy(beanToken( "0x627306090abab3a6e1400e9345bc60c78a8bef57", "1522540800", "100", "160000000" )).then(function() {
//      return deployer.deploy(beanFactory, beanToken.address);
//  });

};


