 
 
 
CREATE KEYSPACE IF NOT EXISTS narayan_ks1 WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '1'}  AND durable_writes = true;

CREATE TABLE IF NOT EXISTS narayan_ks1.items (
    itemid int PRIMARY KEY,
    description text,
    title text
);

CREATE TABLE IF NOT EXISTS narayan_ks1.users_by_item_liked (
    itemid int PRIMARY KEY,
    userid int,
    email text,
    name text
);

CREATE TABLE IF NOT EXISTS narayan_ks1.users (
    userid int PRIMARY KEY,
    email text,
    name text
);

CREATE TABLE IF NOT EXISTS narayan_ks1.items_liked_by_user (
    userid int PRIMARY KEY,
    itemid int,
    description text,
    title text
)



