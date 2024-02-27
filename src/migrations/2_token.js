const Token = artifacts.require("Token");

module.exports = function (deployer, network, accounts) {
  deployer.then(async function () {
    await deployer.deploy(Token, "USDT", "USDT");
    const conToken = await Token.deployed();
    console.log(("Token", conToken.address));
  });
};
