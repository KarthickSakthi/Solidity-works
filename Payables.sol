pragma solidity <=0.7;

contract Payable{
    address owner = msg.sender;
   
    
    // by executing the function ether were paid to the contract
    function  paytoContract() payable public{
        
    }
    
    function paymenttoInvestor() payable public{
         address  investor=0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
        investor.transfer(1 ether);
    }
    
    /*Fallback -- it only executed by outside of the contract calling.if there is a transaction of ether 
    from person to contract ,on that time there is  no method calls. there is a loss of cryptos to platform
    the cryptos were not stored in contract's balance.So,by using the Fallback() it reverts back to the cryptos to the person*/
    function() external payable{
        owner.transfer(msg.value);
    }
}