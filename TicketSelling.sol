// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TicketSelling {

    uint256 balance = 1000;
    uint256 tickets = 0;
    
    function buyTicket(uint256 noOfTickets ) public {
        if( noOfTickets==0 || noOfTickets>15 )
            revert("no of tickets should be greater than 0 and less than 15");

        require(noOfTickets*10<=balance, "you don't have enough cash");

        balance -= noOfTickets * 10;
        tickets += noOfTickets;
    }

    function watchMovie(uint256 people) public {
        assert(tickets>=people);
        tickets = 0;
    }
}
