#!/bin/bash

echo "Uploading recovery image..."
curl -X POST \
  -H "Authorization: Bearer $CIRRUS_API_TOKEN" \
  -H "Content-Type: application/octet-stream" \
  --data-binary "@out/target/product/RE879EL1/boot.img" \
  "https://api.cirrus-ci.com/v1/artifact/build/$CIRRUS_ARTIFACT_NAME"
