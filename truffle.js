module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
   networks: {
    development: {
    host: "127.0.0.1",
    port: 8545,
    gas:  6712388,
    gasPrice: 65000000000,
    network_id: "*" // Match any network id
  },
  ropsten: {
    // provider: new HDWalletProvider(mnemonic, "https://ropsten.infura.io/"),
    host: "localhost",
    // host: "https://ropsten.infura.io/",
    port: 8545,
    gas:  6712388,
    gasPrice: 65000000000,
    network_id: '3'
  }
 },
  rpc: {
     host: 'localhost',
     port: 8080
   },
  solc: {
    optimizer: {
      enabled: true,
      runs: 200
    }
  }
};
