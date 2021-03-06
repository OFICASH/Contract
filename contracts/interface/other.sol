// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;
interface IOther {
     // Info of each user.
    struct KswapUserInfo {
        uint256 amount;     // How many LP tokens the user has provided.
        uint256 rewardDebt; // Reward debt. See explanation below.
    }
    function deposit(uint256 _amount) external ;
    function withdraw(uint256 _amount) external ;
    function userInfo(address _user) external view returns (KswapUserInfo memory);
}