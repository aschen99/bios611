# Mental Health and Technology Use

This respository contains analysis of a data set that compares mental health with technology and social media use. This data set was obtained via Kaggle.

## Using this Repository

This repository is best used via Docker however the Dockerfile can be used to understand what requirements are necessary to run the code.

To build the Docker container, run:

```         
docker build . -t bios611
```

After creating the Docker container, Unix users can start R Studio by running:

```         
docker run -p 8787:8787 -p 8888:8888 -e PASSWORD=yourpassword -v $(pwd):/home/rstudio/project -it bios611
```

You then visit [http://localhost:8787](http://localhost:8787/) via a browser on your machine to access the machine and development environment. We exposed port 8888 so that we can launch other servers from in the container.

## Project Organization

The best way to view this project is to use the Makefile. The makefile contains all of the necessary information on what is needed to create the artifacts and also how to create them. This project will produce a report that details the results of our findings on the relationship between technology/social media use and mental health status.

To create the report, invoke the following code:

```         
make report.pdf
```

## Results

We have concluded that the data in this data set is unnatural given how we expect data to behave. To continue further analysis, we would need to re-collect data on technology and social media use and mental health to ensure that our data is representative of the population.

Additionally, given that this data set from Kaggle was created using artifical data that does not reflect the population of interest, this raises the question regarding how many of Kaggle's data sets also contain artificial data.
