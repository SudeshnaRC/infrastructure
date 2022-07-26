# Introduction 
A repository which contains all of our infrastructure container configurations.
At the moment this only includes Postgres.

## Postgres
### Usage
Postgres can be reached at: `http://localhost:5432`

*To run locally:*
- cd in to the `postgres` directory
- Issue `docker compose up -d` with prepended credentials as KEY=VALUE pair(s)
    -  E.g.`JDBC_USER=sudeshna JDBC_PASSWORD=my_password docker-compose up -d`

**NOTE:** if `JDBC_USER` or `JDBC_PASSWORD` are not specified, it will default to `postgres`.
Be sure to align postgres configuration in service when attempting to connect to this container.

*To verfiy postgres is running as expected:*
- Run `docker ps` to check container is running and find container name.

- Drop into the database container and use the psql client software that is already installed in the database container.
    - `docker exec -it <container_name> bash`
    - `psql --username=sudeshna `

- When prompted to the password, enter the password we configured in our docker-compose.yml 
    - e.g. `my_password`.

- Verify databases in init_schema.sql have been created with:
    - `\l`

- Verify tables in init_schema.sql have been created with:
    - `\c <db_name>`

- Followed by:
    - `\dt`
