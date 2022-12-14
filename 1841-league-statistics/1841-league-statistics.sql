# Write your MySQL query statement below

SELECT team_name, COUNT(*) AS matches_played,
        SUM(CASE WHEN t.team_id = m.home_team_id AND home_team_goals > away_team_goals THEN 3
                 WHEN t.team_id = m.home_team_id AND home_team_goals = away_team_goals THEN 1
                 WHEN t.team_id = m.away_team_id AND home_team_goals = away_team_goals THEN 1
                 WHEN t.team_id = m.away_team_id AND home_team_goals < away_team_goals THEN 3
                 ELSE 0
            END)
        AS points,
        SUM(CASE WHEN t.team_id = m.home_team_id THEN home_team_goals
                 WHEN t.team_id = m.away_team_id THEN away_team_goals
            END)
        AS goal_for,
        SUM(CASE WHEN t.team_id = m.home_team_id THEN away_team_goals
                 WHEN t.team_id = m.away_team_id THEN home_team_goals
            END)
        AS goal_against,
        SUM(CASE WHEN t.team_id = m.home_team_id THEN home_team_goals
                 WHEN t.team_id = m.away_team_id THEN away_team_goals
            END) - 
        SUM(CASE WHEN t.team_id = m.home_team_id THEN away_team_goals
                 WHEN t.team_id = m.away_team_id THEN home_team_goals
            END) 
        AS goal_diff
FROM Teams t
JOIN Matches m
ON t.team_id = m.home_team_id OR t.team_id = m.away_team_id
GROUP BY 1
ORDER BY points DESC, goal_diff DESC, team_name