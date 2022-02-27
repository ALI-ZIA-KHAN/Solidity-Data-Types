pragma solidity ^0.5.1;
contract MyContract {



    // This sets the visibility of the state variable to public, which means that anyone outside of the smart contract can read its value. When we do this,
    //  Solidity provides a value() function for free! Now we no longer need the get() function!
    string public value="public value";
    // string public const value="public value";


function get() public view returns(string memory) {
    return value;
}


}