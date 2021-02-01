# Project 1: Social Cricket Sydney

[Project Link](https://project1sydcricket.herokuapp.com/)

### Idea

The idea behind this project was to create a directory and membership site similar to a social cricket site I used to be a member of when at university in Canberra, called [ACT Social Cricket](https://actsocialcricket.com/). However, I wanted it to be an interactive platform that players and teams could see games, other players and other teams.


## Instructions



## Features

1. Teams and players can both sign up and login with their respective details
2. Players can view a team profile and join that team
3. A team can only have 20 players and can not be joined after it has been reached
4. Players has login with Google (coming soon for teams)
5. A team can create games between other teams


### To Do's
- [ ] Fix Cloudinary Image Upload Error 
- [ ] 
- [ ] 
- [ ] 
 
### Bugs
* 🐛   Login for players on Heroku bringing to a team page for each player. Probably a problem somewhere in the `application.html.erb`
* 🐛  
* 🐛  

### Key deliverables
- [x] 
- [x] 
- [x] 
- [x] 

### Stretch goals
- [ ] Build in Stripe API to facilate team payments and registation costs for umpires etc
- [ ] Create ad blocks for Google Banner ads to generate revenue for the site
- [ ] Factor in 2FA with email verfication 
- [ ] 
- [ ] 


### Database Design

**Players:** A player has one team and a team has many players

| ID      | first_name | last_name | role              | grade  | suburb    | bio                 | profile_image | banner_photo | team_id | is_admin | email          | password_digest |
| ------- | ---------- | --------- | ----------------- | ------ | --------- | ------------------- | ------------- | ------------ | ------- | -------- | -------------- | --------------- |
| integer | text       | text      | text              | string | text      | text                | text          | text         | int     | boolean  | text           | string          |
| 1       | John       | Smith     | Top order batsmen | A      | lane cove | Good bloke, can bat | img(src"x")   | img(src"x")  | 34      | true     | user@gmail.com | wfiwjefij33j    |

**Teams**: A team has many players, but a player only has one team

| ID      | name      | logo  | banner_photo | grade | bio                                | player_limit |
| ------- | --------- | ----- | ------------ | ----- | ---------------------------------- | ------------ |
| integer | text      | text  | text         | text  | text                               | integer      |
| 1       | Fun Times | Smith | img(src)     | A     | Good team of blokes, can't bat bat | 20           |

**Games**: a game can only have 2 teams but a team can have many games

| ID      | team_1_id | team_2_id | ground_id | date    |
| ------- | --------- | --------- | --------- | ------- |
| integer | text      | text      | text      | date    |
| 1       | 42        | 2         | 43        | 3rd Jan |

**Grounds**: a ground can have many games but a game can only have one ground. Only admins can create grounds

| ID      | name           | image | address  | google_map                            |
| ------- | -------------- | ----- | -------- | ------------------------------------- |
| integer | text           | text  | text     | text                                  |
| 1       | Tantallon Oval | img   | img(src) | https://goo.gl/maps/LtKG6q5zpXy27U7f7 |


## Models

1. Database Association 

![alt text](https://res.cloudinary.com/dfpqw9ezj/image/upload/v1611880538/models_agj7og.png "")

2. User Flow Model 
![alt text](https://res.cloudinary.com/dfpqw9ezj/image/upload/v1611880701/userflowmodel_utgnbj.png "")


