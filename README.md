# Token Zeuwis 🪙
a erc20 coin created for the metacrafters avax intermediate module 3

## Description 📓
this contract uses the openZeppelin configuration for making ERC20 Tokens along with updates made to the general contract.  
changes include -
1. any user can burn their tokens
2. the owner can mint more tokens to any address

## Getting Started 🫐
- copy the code to remix, compile and deploy to test the contract easily
- add the initial supply to the constructor while deploying
- keep in mind the different addresses being used while interacting with the token contract
- to run code locally and deploy using hardhat, first you'll need to bring the OpenZeppelin ERC20 Token contract locally and update the code for import based on the same

## Main Functions :accessibility:
1. `mintTokens` - to mint new tokens to any address
2. `userBurn` - for any user to burn their tokens
3. `transfer` - to transfer tokens from our address to another address by specifying the address and value to be sent

## Authors 🤍
Swayam Duhan (@swayamwins on Discord) 

## License
MIT License 
