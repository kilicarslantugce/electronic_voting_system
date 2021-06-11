pragma solidity 0.4.24;

contract Election {
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    bool goingon = true;
    mapping(address => bool) public voters;
    mapping(uint => Candidate) public candidates;
    uint public candidatesCount;

    event votedEvent (
        uint indexed _candidateId
    );

    constructor () public {
        addCandidate("Aday 1");
        addCandidate("Aday 2");
        addCandidate("Aday 3");
        addCandidate("Aday 4");
        addCandidate("Aday 5");
        addCandidate("Aday 6");
        addCandidate("Aday 7");
        addCandidate("Aday 8");
        addCandidate("Aday 9");
        addCandidate("Aday 10");
    }

    function addCandidate (string memory _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function end () public {
        goingon = false;
    }

    function vote (uint _candidateId) public {
        require(!voters[msg.sender],"Daha önce oy kullanılmıştır.");

        require(_candidateId > 0 && _candidateId <= candidatesCount,"Geçersiz Aday.");

        require(goingon,"Seçim işlemi sonlandı.");

        voters[msg.sender] = true;

        candidates[_candidateId].voteCount ++;

        emit votedEvent(_candidateId);
    }
}