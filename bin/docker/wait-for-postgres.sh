#!/usr/bin/env bash
SERVICE="postgres"
DBNAME=$POSTGRESQL_DATABASE
PORT=5432
USER=$POSTGRESQL_USER
PASS=$POSTGRESQL_PASSWORD

CMD="$@"

MAX=30
IT=0
SLEEP_SECONDS=2

if [ -z "$PORT" -o -z "$USER" -o -z "$PASS" ]; then
  echo "no port user or password given"
  exit 1
fi

service_ready() {
 PGPASSWORD="$PASS" psql -h "$SERVICE" -p "$PORT" -d "$DBNAME" -U "$USER" -c 'SELECT 1;' &> /dev/null
}

echo "checking for service $SERVICE on port $PORT with user $USER"
while !(service_ready &> /dev/null); do
        if [ $IT -gt $MAX ]; then
                echo "service $SERVICE did not start in given timeout $MAX * ${SLEEP_SECONDS}s:"
                service_ready
        fi
        IT=$(($IT+1))
        sleep "$SLEEP_SECONDS"
        echo "checking for service $SERVICE (try $IT of $MAX)"
done

echo "ok"

exec $CMD
