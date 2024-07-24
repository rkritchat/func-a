deploy:
	gcloud functions deploy go-http-function \
    --gen2 \
    --runtime=go121 \
    --region=australia-southeast1 \
    --source=. \
    --entry-point=HelloHTTP \
    --trigger-http \
		--no-allow-unauthenticated

grant:
	gcloud functions add-invoker-policy-binding funcv3 \
     --region="australia-southeast1" \
     --member='serviceAccount:cloudFuncV2@totemic-web-426910-r5.iam.gserviceaccount.com'

public:
	gcloud functions deploy go-http-function \
    --gen2 \
    --runtime=go121 \
    --region=australia-southeast1 \
    --source=. \
    --entry-point=HelloHTTP \
    --trigger-http \
    --allow-unauthenticated

gBuild:
	gcloud builds submit
