pragma solidity ^0.4.18;

contract Ownable {
    
    address owner;
    
    function Ownable() public {
        owner = msg.sender;
    }
    
    function setNewOwner(address newOwner) public onlyOwner {
        owner = newOwner;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
}