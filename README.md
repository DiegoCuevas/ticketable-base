# Ticketable

Clone this repo as usual, run:

```bash
bundle
bin/rails db:setup
```

You are building the permission system for a ticketing application.

## Users

You have three user types: `member`, `premium`, `admin`

Users can view the following tickets according to their role:

| User    | Access                 |
|---------|------------------------|
| member  | regular                |
| premium | regular, premium       |
| admin   | regular, premum, press |

## Tickets

You have three ticket tiers: `regular`, `premium`, `press`

They have an `available` attribute, which means:

| Available | Display for                                                                                 |
|-----------|---------------------------------------------------------------------------------------------|
| true      | all users with the correct access level                                                     |
| false     | only admins can see it. add an indicator or text label to show this ticket is not available |

## Policies

Review the `db/seeds.rb` file before continuing, it has the users and tickets
you will need to complete this exercise.

Implement the TicketPolicy for the cases explained in the previous sections,
listing all the tickets the user can see along their details like movie name,
pricing, seat and tier in the `TicketsController#index` action.

For the `TicketsController#show` action, if a user doesn't have the correct
permission to view a ticket, redirect the user to the index action, otherwise
display the movie information normally.
