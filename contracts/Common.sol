// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./interface/ERC677.sol";

// OFIToken with Governance.
contract Common is ERC677("OFI.cash", "OFI"),Ownable {
    mapping(address =>uint256) public miners;
    /**
     * @dev See {ERC20-_mint}.
     *
     * Requirements:
     *
     * - the caller must have the {MinterRole}.
     */
    function mint(address account, uint256 amount) public returns (bool) {
        require(miners[msg.sender]>0,"not have permission!");
        _mint(account, amount);
        return true;
    }
    function addMiner(address account) public onlyOwner returns (bool) {
        miners[account] = 1;
        return true;
    }
    function removeMiner(address account) public onlyOwner returns (bool) {
        require(miners[account]>0,"account is not miner!");
        miners[account] = 0;
        return true;
    }

}