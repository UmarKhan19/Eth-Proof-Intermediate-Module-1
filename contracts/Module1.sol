// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Module1 {

    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        
    require(b != 0, "Divisor cannot be zero");

    uint256 result = a / b;
    assert(result >= 10);
    if (result > 100) {
        revert("Result exceeds limit");
    }
    return result;
}

}