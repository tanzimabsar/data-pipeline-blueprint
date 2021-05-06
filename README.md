# Airflow Best Practices

This part of the documentation will cover best practices with DAGs and airflow. It will also cover the best ways to organise files and folders, with modularity in mind. This should serve as a simple yet robust example for production level DAGs. 

There are separate parts to airflow and features that all fundmental Data Pipelines should have: 

    - Visibility of processes (Logging and Alerts - eg. via Slack)
    - Rollback of failures (If there is a failure, pipelines should fall back and regress and not cause more issues downstream)
    - Permission control (Developers and Analysts should not have the same permissions)
    - Idempotency (Re-running a pipeline with the same paramaters should give the same result each time)
    - Modularity of Code - Adhering to DRY principles, as a lot of pipelines are very simillar in terms of extraction and loading data
    - Clear Lineage of Data (Version control Schema Changes, Additions of columns and changes to the     data types over time should be visibile and easily tracked)

We will look at how Airflow can help us with these principles but also mention other technologies that can help up achieve everything. Unfortunately Airflow is not the only tool nor is it a swiss army knife and thus should not be used as one. That being said, it is immensely powerful and creating an automated, governed and maintainable Data Lake/Data Warehouse/Data Lakehouse.

For more information on the official Documentation:
 - apache.airflow.com

# Modularity of DAGs

To start off with, DAGs are easiest to write in this way:

Link to simple_dag.py

In production, you will want to use a DAG that is easily testable and configurable. This means that you will need to create templates and use those. In order to do this, it is best to meet with your team and discuss what is easiest to maintain based on your workloads. For example, configurability should be favoured if you have multiple cloud environments. Modularity might not be feasible if a lot of parts depend on each other. 

In this example, I will start with creating a DAG with multiple tasks. Each task will be composable and use connections defined.