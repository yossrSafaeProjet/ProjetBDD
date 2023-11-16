/* create table tp(tp_id SERIAL PRIMARY KEY NOT NULL,tp_name varchar(255)); */
/* insert into tp(tp_name) values('tp1');
insert into tp(tp_name) values('tp2'); */
/* CREATE TABLE notebook (
    notebook_id SERIAL PRIMARY KEY NOT NULL,
    notebook_name VARCHAR(255) NOT NULL,
    tp_id INT,
    FOREIGN KEY (tp_id) REFERENCES tp(tp_id)
); */
/* insert into notebook(notebook_name,tp_id)values('0_sql_intro_northwind.ipynb',1);
insert into notebook(notebook_name,tp_id)values('1_sql_intro_northwind.ipynb',1);
insert into notebook(notebook_name,tp_id)values('3_sql_intro_northwind.ipynb',2);
 */
select * from notebook;