pragma solidity 0.6.12;

abstract contract Ab {
    int public a;
    int public b;
    function abc() public { //function declaration
        a=13; // function implementation
        b=14;
    }
    function def() public view virtual returns(string memory);
}
//Any contract which has at least one non implemented function is called as an abstract contract

