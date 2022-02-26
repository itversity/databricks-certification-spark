# Databricks Certification Spark
Databricks Certified Associate Spark Developer preparation toolkit to setup single node Standalone Spark Cluster along with material in the form of Jupyter Notebooks. This is extensively used as part of our Udemy courses as well as our upcoming guided programs related to [Databricks Certified Associate Spark Developer](https://www.udemy.com/course/databricks-certified-associate-developer-for-apache-spark/learn/?referralCode=01367D05117098EB335C).

## Udemy Courses

This GitHub repository can be leveraged to setup Single Node Spark Cluster using Standalone along with Jupyterlab to prepare for the [Databricks Certified Associate Developer - Apache Spark](https://www.udemy.com/course/databricks-certified-associate-developer-for-apache-spark/learn/?referralCode=01367D05117098EB335C). They are available at a max of $25 and we provide $10 coupons 2 times every month. Also, these courses are part of Udemy for business.
* [Databricks Certified Associate Developer - Apache Spark](https://www.udemy.com/course/databricks-certified-associate-developer-for-apache-spark/learn/?referralCode=01367D05117098EB335C)

## Technologies Covered

As part of this custom image built by us, we have included the following as a preparation toolkit for [Databricks Certified Associate Developer - Apache Spark](https://www.udemy.com/course/databricks-certified-associate-developer-for-apache-spark/learn/?referralCode=01367D05117098EB335C).
* Apache Spark 3 using Spark Stand Alone Cluster
* Jupyter based environment along with material for the preparation towards [Databricks Certified Associate Developer - Apache Spark](https://www.udemy.com/course/databricks-certified-associate-developer-for-apache-spark/learn/?referralCode=01367D05117098EB335C)
* If you set up the environment as instructed as part of our courses then you will also get the data sets as well as material in the form of Jupyter Notebooks.

For all video lectures, up-to-date material, live support - feel free to sign up for our Udemy courses or our upcoming guided programs.

## Setup Spark Lab for [Databricks Certified Associate Developer - Apache Spark](https://www.udemy.com/course/databricks-certified-associate-developer-for-apache-spark/learn/?referralCode=01367D05117098EB335C)

### Pre-requisites

Here are the pre-requisites to setup the lab.
* Memory: 16 GB RAM
* CPU: At least Quadcore
* If you are using Windows or Mac, make sure to setup Docker Desktop.
* If your system does not meet the requirement, you need to setup environment using AWS Cloud9.
* Even if you have 16 GB RAM and the Quadcore CPU, the system might slow down once we start the docker containers due to the requirements of the resources. You can always use AWS Cloud9 as fallback option.
* In my case, I will be demonstrating using Cloud9.

### Configure Docker Desktop

If you are using Windows or Mac, you need to change the settings to use as much resources as possible.
* Go to Docker Desktop preferences.
* Change memory to 12 GB.
* Change CPUs to the maximum number.

### Setup Environment

Here are the steps one need to follow to setup the lab.
* Clone the repository by running `git clone https://github.com/itversity/databricks-certification-spark`.

### Pull the Image

Spark image is of moderate size. It is close to 1.5 GB.
* Make sure to pull it before running `docker-compose` command to setup the lab.
* You can pull the image using `docker pull itversity/itvspark3`.
* You can validate if the image is successfully pulled or not by running `docker images` command.

### Start Environment

Here are the steps to start the environment.
* Run `docker-compose up -d --build itvspark3`.
* It will set up single node Stand Alone Spark Cluster.
* You can run `docker-compose logs -f itvspark3` to review the progress. It will take some time to complete the setup process.
* You can stop the environment using `docker-compose stop` command.

### Access the Lab

Here are the steps to access the lab.
* Make sure both Postgres and Jupyter Lab containers are up and running by using `docker-compose ps`
* Get the token from the Jupyter Lab container using below command.

```shell
docker-compose exec itvspark3 \
  sh -c "cat .local/share/jupyter/runtime/jpserver-*.json"
```

* Use the token to login using [http://localhost:8888/lab](http://localhost:8888/lab)

### Access [Databricks Certified Associate Developer - Apache Spark](https://www.udemy.com/course/databricks-certified-associate-developer-for-apache-spark/learn/?referralCode=01367D05117098EB335C) Material

Once you login, you should be able to go through the module under **itversity-material** to access the content.
