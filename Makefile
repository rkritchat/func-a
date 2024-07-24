deploy:
	gcloud functions deploy go-http-function \
    --gen2 \
    --runtime=go121 \
    --region=australia-southeast1 \
    --source=. \
    --entry-point=HelloHTTP \
    --trigger-http \
		--no-allow-unauthenticated

run:
	gcloud functions add-invoker-policy-binding go-http-function \
     --region="australia-southeast1" \
     --member='serviceAccount:cloudFuncV2@totemic-web-426910-r5.iam.gserviceaccount.com'

member:
	gcloud functions add-iam-policy-binding go-http-function \
    --region="australia-southeast1" \
    --member="serviceAccount:cloudRun@totemic-web-426910-r5.iam.gserviceaccount.com" \
		--role='roles/cloudfunctions.invoker' 

memberRun:
	gcloud functions add-iam-policy-binding go-http-function \
    --region="australia-southeast1" \
    --member="serviceAccount:cloudRun@totemic-web-426910-r5.iam.gserviceaccount.com" \
		--role='roles/run.invoker' 


public:
	gcloud functions deploy go-http-function \
    --gen2 \
    --runtime=go121 \
    --region=australia-southeast1 \
    --source=. \
    --entry-point=HelloHTTP \
    --trigger-http \
    --allow-unauthenticated

