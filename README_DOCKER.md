# Airflow Docker

Now you should be comfortable with creating DAGs in a local airflow instance. You should have seen how the sequential executor prevents multi tasking and causes issues when retrying tasks or creating new ones and seeing the changes. 

This is because there is poor multi-processing support. This is also not thread-safe.

This can be improved by creating a postgres or mysql database instance. This allows the database to be a part of the backend where it is much easier to allow multiple workers or tasks to distribute the work.
