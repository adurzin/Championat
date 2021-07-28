UPDATE sportsman SET type_sport_id = (SELECT
		(SELECT type_sport_id FROM tournament WHERE id = team.tournament_id) 
    FROM team 
    WHERE id = sportsman.team_id) WHERE type_sport_id != 4;

SELECT
	id,
	type_sport_id,
    team_id,
    (SELECT
		(SELECT type_sport_id FROM tournament WHERE id = team.tournament_id) 
    FROM team 
    WHERE id = sportsman.team_id) as type_sport
FROM championat.sportsman;


SELECT 
	*
FROM championat.team
WHERE tournament_id = 5
ORDER BY RAND();