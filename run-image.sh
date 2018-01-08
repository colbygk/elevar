docker stop todo && docker rm todo >& /dev/null
docker run -it --mount source=todo,destination=/todo --name todo --hostname todo todo:latest 
