# CENSE viewer carto

Website to display CENSE results thanks to a web cartographic portal

https://cense.noise-planet.org

# Run locally

Install docker or podman on your operating system then run in the shell:

```shell
git clone https://github.com/Universite-Gustave-Eiffel/cense.noise-planet.org.git
cd cense.noise-planet.org
sudo docker compose up -d 
```

The site will be available at the url http://localhost:8085

# Where is the data ?

The data is located into a compressed GeoPackage file here :

https://github.com/Universite-Gustave-Eiffel/cense.noise-planet.org/raw/refs/heads/gh-pages/postgis/database.gpkg.gz

