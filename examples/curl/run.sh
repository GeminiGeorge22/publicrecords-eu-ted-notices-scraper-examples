#!/usr/bin/env bash
# Call publicrecords/eu-ted-notices-scraper on YOUR Apify account. Set APIFY_TOKEN. Do not commit the token.
set -euo pipefail
: "${APIFY_TOKEN:?Set APIFY_TOKEN to your own Apify token}"
curl -sS -X POST \
  "https://api.apify.com/v2/acts/publicrecords~eu-ted-notices-scraper/run-sync-get-dataset-items?token=${APIFY_TOKEN}" \
  -H "Content-Type: application/json" \
  -d '{"publicationDateFrom": "2026-11-17", "publicationDateTo": "2026-11-24", "scope": "ALL", "maxItems": 100}'
