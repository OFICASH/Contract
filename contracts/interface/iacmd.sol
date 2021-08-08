// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;
interface IAcmd {
    function mint(uint256 _amount) external;
    function redeem(uint256 _amount) external ;
    function balanceOf(address _account) external view returns(uint256);
    function claimAcmd(address holder, address[] memory cTokens) external;
    function getAccountSnapshot(address account) external view returns (uint, uint, uint, uint);
}