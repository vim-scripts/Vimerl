#!/bin/sh

INDENTER=$(dirname $0)/../indent/erlang_indent.erl
LAST_LINE=$(wc -l $INDENTER | cut -d ' ' -f 1)

for LINE in $(seq 1 $LAST_LINE)
do
	echo -n Line: $LINE '==> '
	$INDENTER -f $INDENTER $LINE
done
