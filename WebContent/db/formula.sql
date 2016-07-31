SELECT * FROM betsafe.bs_tbl_team_master; where teamid=21;
SELECT * FROM betsafe.bs_table_bet_place_master where matchid=21 and betId=3;

select b.team_1, b.team_2,b.team_3, b.team_4,b.team_5, b.team_6,b.team_7, b.team_8,b.team_9, b.team_10,b.team_11, b.team_12,
sum(case when (b.team_1 is null or b.team_1 = '') then null else 
case when a.betType = 'L' and a.onTeam = b.team_1 then round(a.betRate * a.betAmount, 2)
	 when a.betType = 'K' and a.onTeam = b.team_1 then -1 * a.betAmount
else -1 * a.betAmount end end) as Team1_Amount1,
sum(case when (b.team_2 is null or b.team_2 = '') then null else 

case when a.betType = 'K' and a.onTeam = b.team_2 then round(a.betRate * a.betAmount, 2) 
     when a.betType = 'K' and a.onTeam = b.team_1 then round(a.betRate * a.betAmount, 2) 
else -1 * a.betAmount end end) as Team_Amount2,
sum(case when (b.team_3 is null or b.team_3 = '') then null else 
case when a.betType = 'L' and a.onTeam = b.team_3 then round(a.betRate * a.betAmount, 2)
	 when a.betType = 'K' and a.onTeam = b.team_3 then -1 * a.betAmount
else -1 * a.betAmount end end) as Team1_Amount3,
sum(case when (b.team_4 is null or b.team_4 = '') then null else 
case when a.betType = 'L' and a.onTeam = b.team_4 then round(a.betRate * a.betAmount, 2)
	 when a.betType = 'K' and a.onTeam = b.team_4 then -1 * a.betAmount
else -1 * a.betAmount end end) as Team1_Amount4,
sum(case when (b.team_5 is null or b.team_5 = '') then null else 
case when a.betType = 'L' and a.onTeam = b.team_5 then round(a.betRate * a.betAmount, 2)
	 when a.betType = 'K' and a.onTeam = b.team_5 then -1 * a.betAmount
else -1 * a.betAmount end end) as Team1_Amount5,
sum(case when (b.team_6 is null or b.team_6 = '') then null else 
case when a.betType = 'L' and a.onTeam = b.team_6 then round(a.betRate * a.betAmount, 2)
	 when a.betType = 'K' and a.onTeam = b.team_6 then -1 * a.betAmount
else -1 * a.betAmount end end) as Team1_Amount6,
sum(case when (b.team_7 is null or b.team_7 = '') then null else 
case when a.betType = 'L' and a.onTeam = b.team_7 then round(a.betRate * a.betAmount, 2)
	 when a.betType = 'K' and a.onTeam = b.team_7 then -1 * a.betAmount
else -1 * a.betAmount end end) as Team1_Amount7,
sum(case when (b.team_8 is null or b.team_8 = '') then null else 
case when a.betType = 'L' and a.onTeam = b.team_8 then round(a.betRate * a.betAmount, 2)
	 when a.betType = 'K' and a.onTeam = b.team_8 then -1 * a.betAmount
else -1 * a.betAmount end end) as Team1_Amount8,
sum(case when (b.team_9 is null or b.team_9 = '') then null else 
case when a.betType = 'L' and a.onTeam = b.team_9 then round(a.betRate * a.betAmount, 2)
	 when a.betType = 'K' and a.onTeam = b.team_9 then -1 * a.betAmount
else -1 * a.betAmount end end ) as Team1_Amount9,
sum(case when (b.team_10 is null or b.team_10 = '') then null else
case when a.betType = 'L' and a.onTeam = b.team_10 then round(a.betRate * a.betAmount, 2)
	 when a.betType = 'K' and a.onTeam = b.team_10 then -1 * a.betAmount
else -1 * a.betAmount end end) as Team1_Amount10,
sum(case when (b.team_11 is null or b.team_11 = '') then null else 
case when a.betType = 'L' and a.onTeam = b.team_11 then round(a.betRate * a.betAmount, 2)
	 when a.betType = 'K' and a.onTeam = b.team_11 then -1 * a.betAmount
else -1 * a.betAmount end end) as Team1_Amount11,
sum(case when (b.team_12 is null or b.team_12 = '') then null else
case when a.betType = 'L' and a.onTeam = b.team_12 then round(a.betRate * a.betAmount, 2)
	 when a.betType = 'K' and a.onTeam = b.team_12 then -1 * a.betAmount
else -1 * a.betAmount end end) as Team1_Amount12
from bs_table_bet_place_master a, bs_tbl_team_master b
where a.matchid = b.teamid
and a.matchId=21
and a.acceptFlag=1  
group by b.team_1, b.team_2;

