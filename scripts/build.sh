rm -rf ../dist
mkdir -p ../dist

MODULE_JSON_PATH="../plugin.json"
NAME=$(jq -r .name $MODULE_JSON_PATH)
VERSION=$(jq -r .version $MODULE_JSON_PATH)

FOLDER_NAME="$NAME-$VERSION"

mkdir -p "../dist/$FOLDER_NAME"
cp -r ../src ../dist/$FOLDER_NAME/
cp ../plugin.json ../dist/$FOLDER_NAME/