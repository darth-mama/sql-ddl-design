
TABLE "teams" {
  "id" SERIAL [primary key]
  "name" text
  "city" text
}

TABLE "players" {
  "id" SERIAL [primary key]
  "name" text
  "birthday" date
  "height" integer
 "team_id" integer
}
TABLE "referees" {
 "id" SERIAL [primary key]
 "name" text
}

TABLE "goals" {
  "id" SERIAL [primary key]
  "player_id" integer
  "match_id" integer
}

TABLE "matches" {
  "id" SERIAL [primary key]
  "home_team_id" integer
  "away_team_id" integer
  "location" text
  "date" date
  "season_id" integer
  "head_ref_id" integer
 "asst_ref_1_id" integer
 "asst_ref_2_id" integer
}

TABLE "season" {
  "id" SERIAL [primary key]
  "start_date" date
 "end_date" date
}

Ref: teams.id > players.team_id // many-to-one


Ref: teams.id > matches.home_team_id
Ref: teams.id > matches.away_team_id
Ref: referees.id > matches.head_ref_id
Ref: referees.id > matches.asst_ref_1_id
Ref: referees.id > matches.asst_ref_2_id
Ref: players.id > goals.player_id
Ref: matches.id > goals.match_id
Ref: season.id > matches.season_id
