// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22;

contract Election {
	
	// Model a Candidate
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

	//Store accounts that have voted
	mapping(address => bool) public voters;

	// Store Candidates
	mapping(uint => Candidate) public candidates;

	// Store Candiates Count
	uint public candidatesCount;

	//For constructor u cant use "function Election ()"
	// Use constructor ()
	// Constructor
	constructor () public{
		addCandidate("Namo");
		addCandidate("Pappu");
	}

	function addCandidate (string memory _name) private {
		candidatesCount++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
	}

	function vote (uint _candidateId) public {
		// require that they haven't voted before
		require(!voters[msg.sender]);
		
		// require a valid candidate
		require(_candidateId > 0 && _candidateId <= candidatesCount);

		// record that voter has voted
		voters[msg.sender] = true;
		
		// update candidate vote count
		candidates[_candidateId].voteCount += 1;
		
		
	}

}