// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// to run locally, import the below contract locally first and add directory
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ZWSToken is ERC20 {
    address public immutable i_owner;

    constructor(uint256 initialSupply) ERC20("Zeuwis", "ZWS") {
        _mint(msg.sender, initialSupply);
        i_owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == i_owner, "only owner can do this function call");
        _;
    }

    function decimals() public view virtual override returns (uint8) {
        return 8;
    }

    function userBurn(address account, uint256 value) public {
        super._burn(account, value);
    }

    function mintTokens(address account, uint256 value) public onlyOwner {
        super._mint(account, value);
    }
}

