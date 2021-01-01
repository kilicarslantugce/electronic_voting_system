pragma solidity ^0.5.17 ; 

contract Inbox {
    
    string public message;
    
   constructor(string memory initialMessage) public {
        
        message = initialMessage;
        
    }
    
    function setMessage(string memory newMessage) public {
        
        message = newMessage;
    }
    
    function getMessage() public view returns(string memory) {
        
        return message;
    }
}

//Demo bir mesaj kontrotı