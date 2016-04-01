# Group Porject - *Foodie*

Time spent: **X** hours spent in total

## User Stories

The following **required** functionality is completed:

## Project Guidelines
- Must have at least three separate screens supporting user interaction
- Must be data-driven with dynamic information or media being displayed
- Must use a RESTful API to source the data that is populated into the application
- Must use local persistence either through files, preferences or SQLite

## Foodie Requirements

### User Account:
- [ ] User can sign up to create a new account for Restaruant or User, using Parse authentication
- [ ] User/ REstaruant can log in and log out of his or her account
- [ ] The current signed in user is persisted across app restarts
- [ ] A log in credential is requiered from either Twitter/Facebook/Instagram
  
### Home
- [ ] user can search for restaruant 
- [ ] user can filter the restaruant
- [ ] user can recommand restaruant join our program
- [ ] Detailreward Page of the restaruant 

### Nearby
- [ ] user MapView to show near by store with Loyaity Program

### Me
- [ ] add a profile picture of the user and restaurant 
- [ ] Show Loyaity program that user join and it's Point
- [ ] Point history for each card 

### Loyaity Program:
- [ ] Uers can present QRcoder for sacn
- [ ] Restaruant can scan user profile and offer them point
- [ ] User can apply and get there VIP card from the restaruant they search.
- [ ] reach level with pokemon sound

## Optional
- [ ] Restaruant able to offer ondemand discount.
- [ ] User can search for promotion


# Database Schema
- User Table(one-to-many relationship with Loyalty reward table)
- Restaurant Table(One-to-many relationship with Loyalty reward table)
- Loyalty Reward Table(many-to-one relationship with User table)

### User table
By one-to-many relationship with loyalty reward table, it means a user can have many different loyalty reward programs.
- Username
- Password
- Email(Or use Email as a username)
- Confirmation token(If a user doesn't user OAuth to sign in, we need this to confirm the user's email)
- profile picture
- Loyalty reward program(A user can have many loyalty program)
- Optional attribute
  - Date of birth
  - Type of restaurant a user like
  - Posts(A user can compose a post)
  - Can add more

### Resraurant Table
- Restaurant name
- Restaurant ID
- Address
- profile picture
- Type(Chinese, Thai or American)
- Loyalty program(Restaurant can have many loyalty program instances, each has an unique user)
- Optional attribute
  - Can add more

### Loyalty Reward Table
- User(who registers this program)
- Restaurant(who provides this program)
- Loyalty program ID
- type of program
  - Types we discussed in class
- Optional attribute
  - Can add more


## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/link/to/your/gif/file.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
