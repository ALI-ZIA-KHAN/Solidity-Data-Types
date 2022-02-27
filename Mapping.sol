pragma solidity 0.5.1;


//MAPPING DATA STUCTURE OR KEY VALUE
contract MyContract {
    uint256 peopleCount = 0;

    //UINT IS KEY/ID WHILE pERSON INSTANTIATION IS VALUE

    mapping(uint => Person) public people;

    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName, string memory _lastName) public {
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
}

//CAN CHECK PEOPLE BY GIVING THE ID
//IF DOESN'T EXIST THEN WILL RETURN DEFAULT 