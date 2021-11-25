pragma solidity >=0.4.22 <0.8.0;

contract Election {
	// Store Candidate
	// Read Candidate
	string public candidate;

	//For constructor u cant use "function Election ()"
	// Use constructor ()
	// Constructor
	constructor () public {
		candidate = "Modi";
	}

}