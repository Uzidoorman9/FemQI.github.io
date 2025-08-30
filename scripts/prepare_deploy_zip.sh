#!/usr/bin/env bash
# Creates a zip suitable for deploying to GitHub Pages. Excludes teavm source to avoid shipping code.
zip -r FemQi_web_deploy.zip web
echo "Created FemQi_web_deploy.zip"
