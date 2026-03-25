#!/bin/bash
set -euo pipefail
wget -P packages -i package_urls.txt -q --show-progress -c