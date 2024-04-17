#!/bin/bash

OWNER="liuweiGL"
REPO="partner-charts"
WORKFLOW_ID="update-main-source.yml"

curl -X POST \
  -H "Authorization: token $APP_TOKEN" \
  -H "Accept: application/vnd.github.everest-preview+json" \
  -H "Content-Type: application/json" \
  "https://api.github.com/repos/$OWNER/$REPO/actions/workflows/$WORKFLOW_ID/dispatches" \
  -d '{"ref":"main-source","inputs":{}}'
