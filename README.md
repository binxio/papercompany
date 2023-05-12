# Virtual Paper Company using Google Vertex AI

## Building and pushing the Docker container
```
docker buildx build . --platform linux/amd64 -t gcp-papercompany
docker tag gcp-papercompany gcr.io/yourgcpproject/gcp-papercompany
docker push gcr.io/yourgcpproject/gcp-papercompany
```

# Deployment to Cloud Run
```
gcloud run deploy gcp-papercompany --image gcr.io/yourgcpproject/gcp-papercompany --platform managed --region us-east1 --allow-unauthenticated"
```

