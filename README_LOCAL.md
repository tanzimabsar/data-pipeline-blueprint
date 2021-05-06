# Airflow Local

Use this respository as a means of setting up airflow locally and creating dags. The creation of dags should not be impacted by implementation details too much. This is a public respository designed to help people create production quality dags with best practices in mind. This is also for me to understand Airflow better and for reference.

# Getting Started
First run this command:

```python
pip3 install -m apache-airflow
```

This will install airflow locally on your machine. Assuming you are running macOS or Linux or any *NIX based system, airflow is installed in your home directory. 

This is where your configuration files live and where your DAGS live. If you wish, you can set up a git repository for your dags and tests within that folder. 

For example:

```bash
# ~/airflow/dags
git init
# Create a folder for tests
mkdir ~/airflow/dags/tests
```

Now, once everything has been installed, open your terminal and run the following:

This is the scheduler, a process that polls the DAG folder and adds new dags to the webserver UI. This also adds the dags to be run to a queue (if you are using celery or another service to manage the jobs). By default you will be given the sequention executor which has severe limitations.

Now, run the following:

```bash
airflow scheduler
```

```bash
airflow webserver
```

Navigate to:

```
localhost:8080
```

Your username and password should be admin.

Within here you can create your dags. You then have to click refresh dags if you would like to see the new changes. 