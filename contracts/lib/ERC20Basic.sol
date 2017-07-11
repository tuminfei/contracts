pragma solidity ^0.4.0;

/*
 * ERC20Basic
 * Simpler version of ERC20 interface
 * see https://github.com/ethereum/EIPs/issues/20
 */
contract ERC20Basic {
    function balanceOf(address who) constant returns (uint);

    function transfer(address to, uint value);

    event Transfer(address indexed from, address indexed to, uint value);
}