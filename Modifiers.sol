pragma solidity <=0.7;

contract Mmodifier{
    address public owner ;
    uint256 public sum=0;
    constructor() public{
        owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    }
    
    modifier OnlyOwner(){
        require(msg.sender == owner , "Only Owner of this Contract can only able to access this function");
        _; // _; this line takes and executes the remain part of the code the that uses this modifier ,After chaecked the above require statement
    }
    
    // function which using modifier
    function Sum(uint256 _num1 , uint256 _num2) public OnlyOwner {
        //require(msg.sender == owner , "Only Owner of this Contract can only able to access this function");
          sum+=_num1+_num2;  //  <---  _;
    }
}