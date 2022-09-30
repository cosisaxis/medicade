pragma solidity ^0.8.0;

contract Medicade {
    string name;
    uint256 age;
    string condition;

    event medRecordsUp(string _name, uint256 _age, string _condition);

    function medRecords(string memory _name, uint256 _age, string memory _condition) public {
        name = _name;
        age = _age;
        condition = _condition;
        require(age >= 18, "you are not old enough");
        emit medRecordsUp(_name, _age, _condition);
    }
    
    function getMedRecords() public view returns(string memory, uint256, string memory){
        return(name, age, condition);
    }
}
