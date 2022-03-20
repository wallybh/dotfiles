GO_LOCAL_PATH="/usr/local/go" 
if [ -d $GO_LOCAL_PATH ] && ! echo $PATH |  grep $GO_LOCAL_PATH > /dev/null; then
  export PATH=$PATH:$GO_LOCAL_PATH/bin
  if command -v go &> /dev/null then
    export PATH=$PATH:$(go env GOPATH)/bin
fi
