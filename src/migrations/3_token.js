const Token = artifacts.require("Token");

module.exports = function (deployer, network, accounts) {
  deployer.then(async function () {
    await deployer.deploy(Token, "FAKE", "FAKE");
    const conToken = await Token.deployed();
    console.log(("Token", conToken.address));
  });
};
