pragma solidity 0.5.1;
contract MyContrct {
    enum State { Waiting, Ready, Active }
    State public state;
    constructor() public {
        state = State.Waiting;

        //3 of above states will be return as 1,2,3
    }

    function activate() public {
        state = State.Active;

    }
    function isActive() public view returns(bool) {
        return state == State.Active;
    }

    }