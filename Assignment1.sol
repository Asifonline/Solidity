pragma solidity ^0.5.0;
contract Address{
address payable private myAddress = 0xaD335c3c503aBd738Af9a7690FB41f9fadcBE91A;
function setAddress(address payable add) public {
myAddress = add;
}
function getBalance() public view returns(uint){
return myAddress.balance;
}
function getAddress() public view returns(address){
return myAddress;
}
function pay() public payable{
myAddress.transfer(msg.value);
}
}