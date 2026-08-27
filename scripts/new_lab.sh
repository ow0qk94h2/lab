#!/usr/bin/env bash
# Create a new dated lab folder with a README stub.
set -euo pipefail

DATE=$(date +%Y-%m-%d)
DIR="lab-$DATE"
if [ -d "$DIR" ]; then
  echo "Directory $DIR already exists." >&2
  exit 1
fi

mkdir "$DIR"
cat > "$DIR/README.md" <<EOF
# $DIR

Created on $DATE.
EOF

echo "Created $DIR"
