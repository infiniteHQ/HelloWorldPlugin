rm -rf ../dist
rm -rf ../prod

mkdir -p ../dist
mkdir -p ../prod

MODULE_JSON_PATH="../plugin.json"
NAME=$(jq -r .name $MODULE_JSON_PATH)
VERSION=$(jq -r .version $MODULE_JSON_PATH)

FOLDER_NAME="$NAME-$VERSION"

mkdir -p "../dist/$FOLDER_NAME"
cp -r ../src ../dist/$FOLDER_NAME/
cp ../plugin.json ../dist/$FOLDER_NAME/


TAR_NAME="../prod/$FOLDER_NAME.tar.gz"
tar -czf "$TAR_NAME" -C ../dist "$FOLDER_NAME"

echo "Archive created : $TAR_NAME"

CHECKSUM_NAME="../prod/$FOLDER_NAME.tar.gz.sha256"
sha256sum "$TAR_NAME" | awk '{print $1}' > "$CHECKSUM_NAME"
