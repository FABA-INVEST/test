module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
   networks: {
   development: {
   host: "localhost",
   port: 8545,
   network_id: "*" // Match any network id
  },
  ropsten: {
    // provider: new HDWalletProvider(mnemonic, "https://ropsten.infura.io/"),
    host: "localhost",
    // host: "https://ropsten.infura.io/",
    port: 8545,
    gas:  485000,
    network_id: '3'
  }
 },
   rpc: {
    host: 'localhost',
    port: 8080
  }
};
