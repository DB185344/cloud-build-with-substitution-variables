# Replace the PROJECT_ID text for your project ID 
# Variables set in the substitutions parameter can be used as enviroment variables in the steps.
JSON='{
  "steps":
  [
    {
      "name": "ubuntu",
      "args":
      ["echo", "$_EXAMPLE_USER_VARIABLE"
      ]
    }
  ],
  "substitutions":
  {
    "_EXAMPLE_USER_VARIABLE": "'$_EXAMPLE_USER_VARIABLE'"
  }
}'

curl -X POST -d "$JSON" -H "Content-Type: application/json" -H "Authorization: Bearer $(gcloud config config-helper --format='value(credential.access_token)')" https://cloudbuild.googleapis.com/v1/projects/[PROJECT_ID]/builds
