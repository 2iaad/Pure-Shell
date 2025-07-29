#!/bin/bash

TARGET_DIR="/Users/zderfouf/goinfre/MyBigFilesDir"
FILE_NAME="Random5gFile.bin"

#Create a file that contains 5gb of random data

echo "Generating 5GB random file..."

for i in {1..5}; do
  echo "Generating chunk $i..."
  openssl rand -out "$TARGET_DIR/part_$i.bin" $((1024 * 1024 * 1024))
done

echo "Merging chunks..."
cat "$TARGET_DIR"/part_*.bin > "$TARGET_DIR/$FILE_NAME"
rm "$TARGET_DIR"/part_*.bin

echo "✅ $TARGET_DIR/$FILE_NAME created!"
