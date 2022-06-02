// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import "https://github.com/Ekolance/Voting-Smart-Contract-Interface/blob/main/IVotingContract.sol";

contract Voting is IVotingContract {
    address admin;
    uint256 addTime;
    uint256 extraTime;

    Candidate[] votes;
    address[] allCandidates;

    struct Candidate {
        address user;
        uint256 voteCount;
    }

    // Candidates will be added through the contructor
    constructor(address[] memory candidates) {
        admin = msg.sender;
        allCandidates = candidates;
        addTime = block.timestamp + 180;
        extraTime = addTime + 180;
    }

    //only one address should be able to add candidates
    function addCandidate() external override returns (bool) {
        require(msg.sender == admin);
        require(block.timestamp < addTime);

        for (uint256 i = 0; i < allCandidates.length; i++) {
            votes.push(Candidate({user: allCandidates[i], voteCount: 0}));
        }

        return true;
    }

    //allow a candidate to be voted with the candidateID
    function voteCandidate(uint256 candidateId)
        external
        override
        returns (bool)
    {
        require(block.timestamp < extraTime);
        votes[candidateId].voteCount += 1;
        return true;
    }

    //getWinner returns the name of the winner
    function getWinner() external view override returns (bytes32) {
        uint256 winningVoteCount = 0;

        for (uint256 p = 0; p < votes.length; p++) {
            if (votes[p].voteCount > winningVoteCount) {
                winningVoteCount = votes[p].voteCount;
            }
        }

        // check if we have any vote
        require(winningVoteCount > 0);
        return bytes32(uint256(uint160(votes[winningVoteCount].user)) << 96);
    }
}
