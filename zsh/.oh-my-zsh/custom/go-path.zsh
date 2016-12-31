# set up GOPATH and add it to PATH
export GOPATH="$HOME/src/go"
export PATH=${GOPATH//://bin:}/bin:$PATH
