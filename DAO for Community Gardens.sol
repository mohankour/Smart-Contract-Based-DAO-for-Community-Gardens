// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CommunityGardenDAO {
    address public owner;

    struct Proposal {
        string description;
        uint256 voteCount;
        bool executed;
    }

    mapping(address => bool) public members;
    Proposal[] public proposals;

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    modifier onlyMembers() {
        require(members[msg.sender], "Not a DAO member");
        _;
    }

    constructor() {
        owner = msg.sender;
        members[owner] = true;
    }

    // Add new members to the DAO
    function addMember(address _newMember) external onlyOwner {
        members[_newMember] = true;
    }

    // Submit a proposal for funding or resource allocation
    function submitProposal(string calldata _description) external onlyMembers {
        proposals.push(Proposal({
            description: _description,
            voteCount: 0,
            executed: false
        }));
    }

    // Vote on an existing proposal
    function voteOnProposal(uint256 _proposalId) external onlyMembers {
        require(_proposalId < proposals.length, "Invalid proposal ID");
        require(!proposals[_proposalId].executed, "Proposal already executed");

        proposals[_proposalId].voteCount += 1;

        // Auto-execute if majority vote reached (simple example)
        if (proposals[_proposalId].voteCount > 2) {
            proposals[_proposalId].executed = true;
        }
    }

    function getProposalCount() public view returns (uint256) {
        return proposals.length;
    }
}

