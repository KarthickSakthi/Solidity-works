pragma solidity 0.6.12;

contract Toyota {
    Car public newCar;
    //function deployCar and call it
    function deploy() public {
         newCar = new Car("blue");
    }
    function change() public {
        newCar.changeColor("red");
    }
}

contract Car {
    string public color;
    constructor (string memory _color) public {
        color = _color;
    }
    function changeColor(string memory _newColor) public {
        color = _newColor;
    }
}


