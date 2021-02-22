pragma solidity ^0.5.8;

interface ITRC20 {
    function balanceOf(address account) external view returns (uint256);
}
contract BlackHold {
     function balanceOf(address tokenAddr) public view returns (uint256) {
        return ITRC20(tokenAddr).balanceOf(address(this));
    }
}