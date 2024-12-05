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
