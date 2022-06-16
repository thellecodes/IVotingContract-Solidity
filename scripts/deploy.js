const Main = async () => {
  const ElectionContract = await ethers.getContractFactory("Election");
  const ElectionContractInstance = await ElectionContract.deploy();
  console.log(ElectionContractInstance.address);
};

Main()
  .then(() => process.exit(0))
  .catch((error) => console.log(error));
