#DB MATE

for creating new migration
```bash
dbmate new migration_name
```

database url can be defined as env variable like below
```bash
export DATABASE_URL=postgresql://postgres:password@127.0.0.1:5432/goldenstate_db?sslmode=disable
```
for applying migrations
```bash
dbmate up
```
for rollback one migration
```bash
dbmate rollback
```
for getting the status of migrations
```bash
dbmate status
```
apply migrations with wait for DataBase to get available
```bash
dbmate --wait-timeout=5s up
```
+ apparently does not have mechanism for dependency between migrations
+ saves every migration hash applied
+ runs on raw sql files
