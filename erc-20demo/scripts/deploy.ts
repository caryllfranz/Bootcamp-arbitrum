import { ethers } from "hardhat";

async function main() {
  const token = await ethers.deployContract("Gwenchana", [
    "0x059cbe3764E5a4787027a50d101aC183Bb0aC24b"
  ]);

  await token.waitForDeployment();

  console.log(
    `Token deployed to ${token.target}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});