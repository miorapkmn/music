
#!/bin/bash

tee .git/hooks/pre-commit << 'EOF'
#!/bin/sh
printf "$(cat major.txt).$(git rev-list --count --all)" > version
echo "leafia-eu-versioner: versioning as v$(cat major.txt).$(git rev-list --count --all)"
git add version
EOF
chmod +x .git/hooks/pre-commit
