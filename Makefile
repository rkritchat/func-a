deploy:
	gcloud functions deploy go-server \
    --gen2 \
    --runtime=go121 \
    --region=australia-southeast1 \
    --source=. \
    --entry-point=HelloHTTP \
    --trigger-http \
		--no-allow-unauthenticated

grant:
	gcloud functions add-invoker-policy-binding go-server \
     --region="australia-southeast1" \
     --member='serviceAccount:sa-client@totemic-web-426910-r5.iam.gserviceaccount.com'

internal:
	gcloud functions deploy go-http-function \
    --gen2 \
    --runtime=go121 \
    --region=australia-southeast1 \
    --source=. \
    --entry-point=HelloHTTP \
    --trigger-http \
    --allow-unauthenticated \
	  --ingress-settings=internal-only

gBuild:
	gcloud builds submit
