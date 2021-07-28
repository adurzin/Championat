
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


UPDATE game_center SET
 sportsman_2_id = (SELECT
				id
			FROM championat.sportsman
			WHERE (sportsman.type_sport_id = 4 AND sportsman.id != game_center.sportsman_1_id)
			ORDER BY RAND()
			LIMIT 1)
WHERE sportsman_2_id IS NOT NULL;

UPDATE game_center SET
 team_2_id = (SELECT
				id
			FROM championat.team
			WHERE (tournament_id = game_center.tournament_id AND team.id != game_center.team_1_id)
			ORDER BY RAND()
			LIMIT 1)
WHERE team_1_id > 0;

UPDATE game_center 
SET score = (SELECT 
				id
			FROM championat.type_score
			WHERE id NOT IN (1, 2)
			ORDER BY RAND()
			LIMIT 1)
WHERE status_game_id = 1 AND team_1_id IS NULL;

UPDATE game_center SET date_game = DATE_ADD(DATE(NOW()), INTERVAL RAND()*10 MONTH) WHERE status_game_id = 2;

UPDATE game_center 
SET status_game_id = (SELECT id FROM championat.status_game ORDER BY RAND() LIMIT 1)
WHERE status_game_id = 3;

SELECT COUNT(*) FROM championat.game_center GROUP BY status_game_id HAVING status_game_id = 3;