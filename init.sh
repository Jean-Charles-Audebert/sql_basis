#!/bin/bash
sudo -i -u postgres psql

dropdb resto
echo "BDD supprimée"
createdb resto -O iousco
echo "BDD créée"

# Nom des fichiers SQL
CREATE_DB_SQL="createdb.sql"
SEED_DB_SQL="seeddb.sql"

# Commande pour exécuter les fichiers SQL
psql -U iousco -d resto -a -f $CREATE_DB_SQL
psql -U iousco -d resto -a -f $SEED_DB_SQL
