pragma solidity ^0.4.9;


/*
* Contract that is working with ERC223 tokens
*/

interface ContractReceiver {

    function tokenFallback(address _from, uint _value, bytes _data) external;

}
