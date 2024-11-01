# Data Engineer Jobs Analysis
This is a guided project with data from [Luke Barousse's SQL for Data Analytics](https://youtu.be/7mz73uXD9DA?si=xRTipzSlpzKb3has). This project showcases intermediate skills in SQL and Python, using PostgreSQL as the database and VS Code as the code editor.

# Table of Contents
1) Objective
2) Workflow
3) Entity Relationship Diagram (ERD)
4) Findings

# Objective
The project aims to provide insights into the data engineering job market using data visualizations. 

# Workflow
<p align="center">
  <img src="https://github.com/JYNgithub/ProjectSQLLukeBarousse/blob/main/assets/flow.png" style="width: 100%;">
</p>

The entire workflow is executed in VS code using the 'SQLTools' extension to connect to PostgreSQL.

1) The database and tables are first created using SQL in the 'sql_load' folder.

2) The database from PostgreSQL is connected to VS Code using the SQLTools extension.

3) The data is queried using SQL in the 'sql_queries' folder for concise data for analysis and visualizations.

4) Queried data are converted to CSV files temporarily stored in 'queried_csv' folder.

4) The data is visualized using the Python library Plotly in the 'visualizations' folder.

# Entity Relationship Diagram (ERD)
<p align="center">
  <img src="https://github.com/JYNgithub/ProjectSQLLukeBarousse/blob/main/assets/erd.png" style="width: 100%;">
</p>

# Findings
### What is the typical hourly pay rate for a Data Engineer?
A majority of Data Engineer roles pay for 52.5 - 57.5 USD per hour, followed by 57.5 - 62.5 and 62.5 - 67.5. This is much higher than the average hourly pay in the US of 28.2 - 35.5 USD according to news sources.
<p align="center">
  <img src="https://github.com/JYNgithub/ProjectSQLLukeBarousse/blob/main/assets/image1.png" style="width: 100%;">
</p>

### What are the top-paying jobs available for Data Engineers?
Top paying jobs for Data Engineer roles can reach up to 117.50 USD per hour. Furthermore, half of the top paying jobs for Data Engineer roles does not specify requiring a degree in their job postings. 
<p align="center">
  <img src="https://github.com/JYNgithub/ProjectSQLLukeBarousse/blob/main/assets/image2.png" style="width: 100%;">
</p>

### What are the top skill types based on salary for Data Engineers?
To nobody's surprise, SQL and Python remain the most demanded skills among Data Engineer roles, which are fundamentals for building data pipelines and ensuring data integrity in any organization. Modern platforms with database services such as AWS and Azure should also be noted.
<p align="center">
  <img src="https://github.com/JYNgithub/ProjectSQLLukeBarousse/blob/main/assets/image3.png" style="width: 100%;">
</p>


### What are the most high-demand AND high-paying skills in the field of Data Engineering?
This graph is quite interesting. 

It is observed that SQL and Python are the most demanded skills, but they are not the highest-paying skills. 

In terms of demand, Azure and Spark are almost equal, but Spark offers more opportunities for higher paying jobs. 

Another interesting point is Databricks, which is the highest paying skill yet low in demand. This could be because Databricks is still a new skill in the market, but is definitely acknowledge as employers are willing to pay a high amount for this expertise.

<p align="center">
  <img src="https://github.com/JYNgithub/ProjectSQLLukeBarousse/blob/main/assets/image4.png" style="width: 100%;">
</p>