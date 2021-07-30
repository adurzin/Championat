SELECT 
	media.id,
    media.type_media,
    type_media.title,
    CONCAT(author.firstname, ' ', author.lastname) as author_name,
    COUNT(*) as number_of_news
FROM championat.media
JOIN news ON media_id = media.id
JOIN type_media ON type_media.id = media.type_media
JOIN author ON author.id = news.author_id
GROUP BY author_name
HAVING type_media = 1;

SELECT 
	id,
    CONCAT(firstname, ' ', lastname) as name,
    (SELECT name FROM type_sport WHERE id = sportsman.type_sport_id) as sport,
    year(now()) - year(birthday_date) as age,
    (SELECT 
			COUNT(*)
		FROM game_center
		WHERE (team_1_id = have_team(sportsman.id) AND status_game_id = 1 AND score = 1)
		OR (team_2_id = have_team(sportsman.id) AND status_game_id = 1 AND score = 2)
		OR (sportsman_1_id = sportsman.id AND status_game_id = 1 AND score = 3)
		OR (sportsman_2_id = sportsman.id AND status_game_id = 1 AND score = 4)) as wins
FROM championat.sportsman
ORDER BY wins DESC;

SELECT 
	team.id,
    team.title,
    GROUP_CONCAT(sportsman.id) as sportsman,
    COUNT(*)
FROM championat.team
JOIN sportsman ON sportsman.team_id = team.id
GROUP BY team.id
HAVING COUNT(*) > 3
ORDER BY COUNT(*) DESC;

SELECT
	*
FROM championat.game_center
ORDER BY RAND()
LIMIT 1;