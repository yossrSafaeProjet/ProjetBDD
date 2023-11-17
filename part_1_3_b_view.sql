CREATE VIEW session_per_month AS
SELECT
    connected_at_month AS month,
    COUNT(*) AS session_count
FROM
    session_table
GROUP BY
    connected_at_month;

  
SELECT * from session_per_month;