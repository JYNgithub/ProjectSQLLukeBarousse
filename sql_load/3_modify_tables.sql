-- NOTE: The CSV files to load into the database are not included in this repository. 
-- Only the queried CSV files are stored in the queried_csv folder. 
-- To get the files, please refer to Luke Barousse's SQL for Data Analytics on YouTube.
COPY company_dim
FROM 'C:\Users\User\Desktop\MOVE\MORE\Learn_SQL_LukeB\csv_files\company_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY skills_dim
FROM 'C:\Users\User\Desktop\MOVE\MORE\Learn_SQL_LukeB\csv_files\skills_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY job_postings_fact
FROM 'C:\Users\User\Desktop\MOVE\MORE\Learn_SQL_LukeB\csv_files\job_postings_fact.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY skills_job_dim
FROM 'C:\Users\User\Desktop\MOVE\MORE\Learn_SQL_LukeB\csv_files\skills_job_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
