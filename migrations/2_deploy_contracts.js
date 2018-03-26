
// var ProofOfExistence3 = artifacts.require("./ProofOfExistence3.sol");

// module.exports = function(deployer) {
//  deployer.deploy(ProofOfExistence3);
// };

//var TestContract = artifacts.require("FABATest1");
var BeanToken = artifacts.require("BeanToken1");
var BeanFactory = artifacts.require("Factory");


module.exports = function(deployer) {
  // deployer.deploy(TestContract);
  // deployer.deploy( BeanToken( "0xe7e6fd5d8f4c3442eb82a07c15814defb3a34d60", 1522540800, 100, 160000000));
  deployer.deploy(BeanFactory);
  // deployer.deploy(TestContract, {gas: 6721975, "0xa1879c11816468c38429701b739f8a9e31941633"});
  // deployer.deploy(TokenContract, {gas: 6721975, "0xa1879c11816468c38429701b739f8a9e31941633"});
};


