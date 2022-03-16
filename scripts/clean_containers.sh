docker container list -a --filter 'status=exited' | grep "oxo_" | awk '{print $1}' | xargs docker container rm

