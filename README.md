# TicketSelling Smart Contract

## Overview

The TicketSelling smart contract is designed to facilitate the purchase of movie tickets. Users can buy tickets by specifying the number of tickets they want. Additionally, the contract allows users to watch a movie if they have purchased enough tickets.

## Features

1. **Buy Tickets (`buyTicket` function):**
   - Users can buy movie tickets by calling the `buyTicket` function.
   - The function takes the number of tickets (`noOfTickets`) as a parameter.
   - It checks if the number of tickets is between 1 and 15 (inclusive) and reverts the transaction with an error message if not.
   - It uses the `require` statement to check if the user has enough balance to buy the specified number of tickets (each ticket costs 10 units).
   - If the conditions are met, the user's balance is updated, and the number of tickets is incremented.

2. **Watch Movie (`watchMovie` function):**
   - Users can watch a movie by calling the `watchMovie` function.
   - The function uses the `assert` statement to ensure that the number of available tickets is greater than or equal to the specified number of people.
   - If the condition is met, the number of tickets is reset to 0.
