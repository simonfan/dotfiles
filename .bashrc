# Bash script studying
function dckparseport {

  local portRe="^(.*)->.*:([0-9]*).*$"
  # local activeDockerHost=$(docker-machine active)
  local dockerHostIp=$(docker-machine ip default)

  while read -r containerId; do
    
    local containerName=$(docker inspect --format="{{.Name}}" $containerId)

    docker port $containerId | while read -r mapping
    do
      if [[ $mapping =~ $portRe ]];
        then printf "%-20s %-10s %30s\n" \
                    "$containerName" \
                    "${BASH_REMATCH[1]}" \
                    "http://$dockerHostIp:${BASH_REMATCH[2]}"
      fi
    done



  done
}

alias bashsource='source ~/.bash_profile'