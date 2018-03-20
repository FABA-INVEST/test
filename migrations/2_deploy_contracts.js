
// var ProofOfExistence3 = artifacts.require("./ProofOfExistence3.sol");

// module.exports = function(deployer) {
//  deployer.deploy(ProofOfExistence3);
// };

var TestContract = artifacts.require("FABATest1");
var TokenContract = artifacts.require("FABAToken1");

module.exports = function(deployer) {
  deployer.deploy(TestContract);
  deployer.deploy(TokenContract);
};


