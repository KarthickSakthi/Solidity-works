pragma solidity 0.6.12;

contract Country {
    string public name;
    string public flag;
    string public NA;
    string private GDP;
    int public a;
    constructor (int _a) public {
        a=_a;
    }
}

contract India {
    uint public sqkm;
    string public primeMinister;
}

contract US is Country, India {
    uint public sqm;
    string public president;
    constructor (int _a)  Country(_a * _a) public {
        
    }
}

