#！/bin/bash

echo "22222"

rm -rf ../server-with-gin-code

java \
  -jar ./openapi-generator-cli/7.6.0.jar generate \
  -g go-gin-server \
  -i ./openapi.json \
  -o ../server-with-gin-code \
  -t ../server-with-gin \
  -p featureCORS=true  \
  -p packageName=account \
  --skip-validate-spec \
  # --global-property debugOperations
