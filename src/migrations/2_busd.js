const Token = artifacts.require("BusdMock");

module.exports = function (deployer, network, accounts) {
  deployer.then(async function () {
    await deployer.deploy(Token);
    const conToken = await Token.deployed();
    console.log(("BusdMock: ", conToken.address));
  });
};
