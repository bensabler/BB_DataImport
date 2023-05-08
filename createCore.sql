create table core.AllstarFull (
bb_playerID	char(9),
bb_yearID	char(4),
bb_gameNum	char(1),
bb_gameID	char(12),
bb_teamID	char(3),
bb_lgID	char(2),
bb_GP	char(1),
bb_startingPos	char(1)
)
go
create table core.Appearances (
bb_yearID	char(4),
bb_teamID	char(3),
bb_lgID	char(2),
bb_playerID	char(9),
bb_G_all	char(3),
bb_GS	char(3),
bb_G_batting	char(3),
bb_G_defense	char(3),
bb_G_p	char(3),
bb_G_c	char(3),
bb_G_1b	char(3),
bb_G_2b	char(3),
bb_G_3b	char(3),
bb_G_ss	char(3),
bb_G_lf	char(3),
bb_G_cf	char(3),
bb_G_rf	char(3),
bb_G_of	char(3),
bb_G_dh	char(3),
bb_G_ph	char(3),
bb_G_pr	char(2)
)
go
create table core.Batting (
bb_playerID	char(9),
bb_yearID	char(4),
bb_stint	char(1),
bb_teamID	char(3),
bb_lgID	char(2),
bb_G	char(3),
bb_AB	char(3),
bb_R	char(3),
bb_H	char(3),
bb_2B	char(2),
bb_3B	char(2),
bb_HR	char(2),
bb_RBI	char(3),
bb_SB	char(3),
bb_CS	char(2),
bb_BB	char(3),
bb_SO	char(3),
bb_IBB	char(3),
bb_HBP	char(2),
bb_SH	char(2),
bb_SF	char(2),
bb_GIDP	char(2)
)
go
create table core.BattingPost (
bb_yearID	char(4),
bb_round	char(5),
bb_playerID	char(9),
bb_teamID	char(3),
bb_lgID	char(2),
bb_G	char(2),
bb_AB	char(2),
bb_R	char(2),
bb_H	char(2),
bb_2B	char(1),
bb_3B	char(1),
bb_HR	char(1),
bb_RBI	char(2),
bb_SB	char(2),
bb_CS	char(1),
bb_BB	char(2),
bb_SO	char(2),
bb_IBB	char(1),
bb_HBP	char(1),
bb_SH	char(1),
bb_SF	char(1),
bb_GIDP	char(1)
)
go
create table core.Fielding (
bb_playerID	char(9),
bb_yearID	char(4),
bb_stint	char(1),
bb_teamID	char(3),
bb_lgID	char(2),
bb_POS	char(2),
bb_G	char(3),
bb_GS	char(3),
bb_InnOuts	char(4),
bb_PO	char(4),
bb_A	char(3),
bb_E	char(2),
bb_DP	char(3),
bb_PB	char(2),
bb_WP	char(1),
bb_SB	char(2),
bb_CS	char(2),
bb_ZR	char(1)
)
go
create table core.FieldingOF (
bb_playerID	char(9),
bb_yearID	char(4),
bb_stint	char(1),
bb_Glf	char(3),
bb_Gcf	char(3),
bb_Grf	char(3)
)
go
create table core.FieldingOFsplit (
bb_playerID	char(9),
bb_yearID	char(4),
bb_stint	char(1),
bb_teamID	char(3),
bb_lgID	char(2),
bb_POS	char(2),
bb_G	char(3),
bb_GS	char(3),
bb_InnOuts	char(4),
bb_PO	char(3),
bb_A	char(2),
bb_E	char(2),
bb_DP	char(1),
bb_PB	char(1),
bb_WP	char(1),
bb_SB	char(1),
bb_CS	char(1),
bb_ZR	char(1)
)
go
create table core.FieldingPost (
bb_playerID	char(9),
bb_yearID	char(4),
bb_teamID	char(3),
bb_lgID	char(2),
bb_round	char(5),
bb_POS	char(2),
bb_G	char(1),
bb_GS	char(1),
bb_InnOuts	char(3),
bb_PO	char(2),
bb_A	char(2),
bb_E	char(1),
bb_DP	char(2),
bb_TP	char(1),
bb_PB	char(1),
bb_SB	char(1),
bb_CS	char(1)
)
go
create table core.HomeGames (
bb_year_key	char(4),
bb_league_key	char(2),
bb_team_key	char(3),
bb_park_key	char(5),
bb_span_first	char(10),
bb_span_last	char(10),
bb_games	char(2),
bb_openings	char(2),
bb_attendance	char(7)
)
go
create table core.Managers (
bb_playerID	char(9),
bb_yearID	char(4),
bb_teamID	char(3),
bb_lgID	char(2),
bb_inseason	char(1),
bb_G	char(3),
bb_W	char(3),
bb_L	char(3),
bb_rank	char(2),
bb_plyrMgr	char(1)
)
go
create table core.ManagersHalf (
bb_playerID	char(9),
bb_yearID	char(4),
bb_teamID	char(3),
bb_lgID	char(2),
bb_inseason	char(1),
bb_half	char(1),
bb_G	char(2),
bb_W	char(2),
bb_L	char(2),
bb_rank	char(2)
)
go
create table core.Parks (
bb_park_key	char(5),
bb_park_name	char(38),
bb_park_alias	char(1),
bb_city	char(16),
bb_state	char(15),
bb_country	char(2)
)
go
create table core.People (
bb_playerID	char(9),
bb_birthYear	char(4),
bb_birthMonth	char(2),
bb_birthDay	char(2),
bb_birthCountry	char(9),
bb_birthState	char(6),
bb_birthCity	char(24),
bb_deathYear	char(1),
bb_deathMonth	char(1),
bb_deathDay	char(1),
bb_deathCountry	char(1),
bb_deathState	char(1),
bb_deathCity	char(1),
bb_nameFirst	char(10),
bb_nameLast	char(14),
bb_nameGiven	char(24),
bb_weight	char(3),
bb_height	char(2),
bb_bats	char(1),
bb_throws	char(1),
bb_debut	char(10),
bb_finalGame	char(10),
bb_retroID	char(8),
bb_bbrefID	char(9)
)
go
create table core.Pitching (
bb_playerID	char(9),
bb_yearID	char(4),
bb_stint	char(1),
bb_teamID	char(3),
bb_lgID	char(2),
bb_W	char(2),
bb_L	char(2),
bb_G	char(3),
bb_GS	char(2),
bb_CG	char(2),
bb_SHO	char(2),
bb_SV	char(2),
bb_IPouts	char(4),
bb_H	char(3),
bb_ER	char(3),
bb_HR	char(2),
bb_BB	char(3),
bb_SO	char(3),
bb_BAOpp	char(5),
bb_ERA	char(5),
bb_IBB	char(2),
bb_WP	char(2),
bb_HBP	char(2),
bb_BK	char(2),
bb_BFP	char(4),
bb_GF	char(2),
bb_R	char(3),
bb_SH	char(2),
bb_SF	char(2),
bb_GIDP	char(2)
)
go
create table core.PitchingPost (
bb_playerID	char(9),
bb_yearID	char(4),
bb_round	char(5),
bb_teamID	char(3),
bb_lgID	char(2),
bb_W	char(1),
bb_L	char(1),
bb_G	char(1),
bb_GS	char(1),
bb_CG	char(1),
bb_SHO	char(1),
bb_SV	char(1),
bb_IPouts	char(3),
bb_H	char(2),
bb_ER	char(2),
bb_HR	char(1),
bb_BB	char(2),
bb_SO	char(2),
bb_BAOpp	char(5),
bb_ERA	char(5),
bb_IBB	char(1),
bb_WP	char(1),
bb_HBP	char(1),
bb_BK	char(1),
bb_BFP	char(3),
bb_GF	char(1),
bb_R	char(2),
bb_SH	char(1),
bb_SF	char(1),
bb_GIDP	char(1)
)
go
create table core.SeriesPost (
bb_yearID	char(4),
bb_round	char(5),
bb_teamIDwinner	char(3),
bb_lgIDwinner	char(2),
bb_teamIDloser	char(3),
bb_lgIDloser	char(2),
bb_wins	char(2),
bb_losses	char(1),
bb_ties	char(1)
)
go
create table core.Teams (
bb_yearID	char(4),
bb_lgID	char(2),
bb_teamID	char(3),
bb_franchID	char(3),
bb_divID	char(1),
bb_Rank	char(2),
bb_G	char(3),
bb_Ghome	char(2),
bb_W	char(3),
bb_L	char(3),
bb_DivWin	char(1),
bb_WCWin	char(1),
bb_LgWin	char(1),
bb_WSWin	char(1),
bb_R	char(4),
bb_AB	char(4),
bb_H	char(4),
bb_2B	char(3),
bb_3B	char(3),
bb_HR	char(3),
bb_BB	char(3),
bb_SO	char(4),
bb_SB	char(3),
bb_CS	char(3),
bb_HBP	char(3),
bb_SF	char(2),
bb_RA	char(4),
bb_ER	char(4),
bb_ERA	char(4),
bb_CG	char(3),
bb_SHO	char(2),
bb_SV	char(2),
bb_IPouts	char(4),
bb_HA	char(4),
bb_HRA	char(3),
bb_BBA	char(3),
bb_SOA	char(4),
bb_E	char(3),
bb_DP	char(3),
bb_FP	char(5),
bb_name	char(33),
bb_park	char(37),
bb_attendance	char(7),
bb_BPF	char(3),
bb_PPF	char(3),
bb_teamIDBR	char(3),
bb_teamIDlahman45	char(3),
bb_teamIDretro	char(3)
)
go
create table core.TeamsFranchises (
bb_franchID	char(3),
bb_franchName	char(33),
bb_active	char(2),
bb_NAassoc	char(1)
)
go
create table core.TeamsHalf (
bb_yearID	char(4),
bb_lgID	char(2),
bb_teamID	char(3),
bb_Half	char(1),
bb_divID	char(1),
bb_DivWin	char(1),
bb_Rank	char(1),
bb_G	char(2),
bb_W	char(2),
bb_L	char(2)
)
go