# use an image with linux/amd64 and linux/arm64 support.
FROM imresamu/postgis:17-3.5

# use https instead of http then install ogr2ogr

RUN <<EOF
find /etc/apt -type f -name "*.list" -exec sed -i.bak 's|http:|https:|g' {} +
find /etc/apt -type f -name "*.sources" -exec sed -i.bak '/^\s*URIs:/ s|http:|https:|g' {} +
apt update
apt-get install -y --no-install-recommends python3-gdal gdal-bin libgdal-dev
export CPLUS_INCLUDE_PATH=/usr/include/gdal
export C_INCLUDE_PATH=/usr/include/gdal
EOF

COPY ./init-config.sh /docker-entrypoint-initdb.d/15_load_data.sh

COPY database.gpkg.gz /var/lib/postgresql/

RUN gzip -d /var/lib/postgresql/database.gpkg.gz

USER 1000:1000
