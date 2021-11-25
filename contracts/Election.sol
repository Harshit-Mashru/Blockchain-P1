// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22;

contract Election {
	
	// Model a Candidate
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

	// Store Candidates

	// Fetch Candidates
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

}