// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Module1 {

    
function age(uint256 _age) public pure returns(string memory) {

require(_age>=18, "You must be above or equal to 18!!");

assert(_age<200);

if (_age>60){
    revert("You have reached the retirement age!!");
}


return "Yeahhh the functions worked. Well done Umar!";
} 

}
