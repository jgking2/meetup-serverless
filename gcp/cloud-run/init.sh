# https://cloud.google.com/sdk/docs/quickstarts 
# https://cloud.google.com/run/docs/setup
gcloud components install beta
gcloud components update
gcloud config set run/platform managed

# Optional gcloud config set run/region REGION # <--- replace with whichever one you don't want to specify
gcloud config set run/region us-central1
gcloud auth configure-docker

# Deploy to gcr image
gcloud builds submit --tag gcr.io/house-que-staging/meetup-serverless
#Deploy the service
gcloud beta run deploy --image gcr.io/house-que-staging/meetup-serverless:latest --platform managed