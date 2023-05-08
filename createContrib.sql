create table contrib.AwardsManagers (
bb_playerID	char(9),
bb_awardID	char(25),
bb_yearID	char(4),
bb_lgID	char(2),
bb_tie	char(1),
bb_notes	char(1)
)
go
create table contrib.AwardsPlayers (
bb_playerID	char(9),
bb_awardID	char(35),
bb_yearID	char(4),
bb_lgID	char(2),
bb_tie	char(1),
bb_notes	char(2)
)
go
create table contrib.AwardsShareManagers (
bb_awardID	char(25),
bb_yearID	char(4),
bb_lgID	char(2),
bb_playerID	char(9),
bb_pointsWon	char(3),
bb_pointsMax	char(1),
bb_votesFirst	char(2)
)
go
create table contrib.AwardsSharePlayers (
bb_awardID	char(18),
bb_yearID	char(4),
bb_lgID	char(2),
bb_playerID	char(9),
bb_pointsWon	char(4),
bb_pointsMax	char(3),
bb_votesFirst	char(4)
)
go
create table contrib.CollegePlaying (
bb_playerID	char(9),
bb_schoolID	char(13),
bb_yearID	char(4)
)
go
create table contrib.HallOfFame (
bb_playerID	char(9),
bb_yearID	char(4),
bb_votedBy	char(16),
bb_ballots	char(1),
bb_needed	char(1),
bb_votes	char(1),
bb_inducted	char(1),
bb_category	char(17),
bb_needed_note	char(1)
)
go
create table contrib.Salaries (
bb_yearID	char(4),
bb_teamID	char(3),
bb_lgID	char(2),
bb_playerID	char(9),
bb_salary	char(8)
)
go
create table contrib.Schools (
bb_schoolID	char(13),
bb_name_full	char(51),
bb_city	char(54),
bb_state	char(15),
bb_country	char(3)
)
go