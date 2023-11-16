/* CREATE VIEW test_env_view AS 
select n.* , p.tp_name from notebook n INNER JOIN
tp p on p.tp_id=n.tp_id ;
 */
--SELECT * FROM test_env_view;
DROP VIEW test_env_view;