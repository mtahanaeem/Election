pragma solidity ^0.4.25;

contract Election {
    // Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Store accounts that have voted
    mapping(address => bool) public voters;
    
    // Store candidates
    mapping(uint => Candidate) public candidates;
    
    // Store Candidates Count
    uint public candidatesCount;

    // Event emitted when vote is cast
    event votedEvent (
        uint indexed _candidateId
    );

    constructor() public {
        addCandidate("Imran Khan");
        addCandidate("Nawaz Sharif");
    }

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote(uint _candidateId) public {
        require(!voters[msg.sender], "You have already voted");
        require(_candidateId > 0 && _candidateId <= candidatesCount, "Invalid candidate");

        voters[msg.sender] = true;
        candidates[_candidateId].voteCount++;

        emit votedEvent(_candidateId);
    }
}

