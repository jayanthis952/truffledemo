// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract Fruits{
  string[] myFruits;

  function adFruit(string memory fruitname) public{
    myFruits.push(fruitname);
  }

  function updateFruit(uint fruitIndex,string memory newFruitName) public returns(bool){
    if(myFruits.length>fruitIndex){
      myFruits[fruitIndex]=newFruitName;
      return true;
    }
    return false;
  }

  function deleteFruit(uint fruitIndex) public returns(bool){
    if(myFruits.length>fruitIndex){
      for(uint i=fruitIndex;i<myFruits.length-1;i++){
        myFruits[i]=myFruits[i+1];
      }
      myFruits.pop();
      return true;
    }
    return false;
  }
  function getFruits() public view returns(string[] memory){
    return myFruits;
  }

}
