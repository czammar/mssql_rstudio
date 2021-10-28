# mssql_rstudio
Having fun with mssql and Rstudio.


Let's build the `Dockerfile` based in rocker/verse:3.6.1 (https://hub.docker.com/r/rocker/verse)

```
docker build -t my_image .
```

Please note that default user is `rstudio` and instances run in `localhost:8787`

```
docker run -d -p 8787:8787 -e ROOT=TRUE -e PASSWORD=yourpasswordhere my_image
```
