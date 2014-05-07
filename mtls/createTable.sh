#!/bin/bash

sqlite3 commentdb "
CREATE TABLE comment (
id INTEGER PRIMARY KEY AUTOINCREMENT,
pid INTEGER NOT NULL DEFAULT 0,
zid INTEGER NOT NULL DEFAULT 0,
sn INTEGER NOT NULL DEFAULT 0,
sonCnt INTEGER NOT NULL DEFAULT 0,
illegal INTEGER NOT NULL DEFAULT 0,
intime TEXT NOT NULL DEFAULT '2009-01-01 00:00:01',
uname TEXT NOT NULL DEFAULT '',
content TEXT NOT NULL DEFAULT '');"

sqlite3 commentdb "CREATE INDEX indcmt ON comment (pid, sn, sonCnt);"
