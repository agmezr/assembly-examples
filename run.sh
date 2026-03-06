# !/bin/bash
make build 2> >(sed $'s,.*,\e[31m&\e[m,'>&2) > /dev/null && ./bin/main