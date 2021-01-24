# Project 1: Social Cricket Sydney

### TODO's

- [ ] Database design
- [ ] Get table associations fully ironed out

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
