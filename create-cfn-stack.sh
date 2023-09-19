export AWS_ACCESS_KEY_ID=${bamboo.accessKey}
export AWS_SECRET_ACCESS_KEY=${bamboo.secretKey}
export REGION=ap-southeast-2

aws cloudformation create-stack \
--stack-name Bamboo \
--template-body file://deploy-cfn.yml \
--parameters "ParameterKey=ArtifactName,ParameterValue=lambda" \
"ParameterKey=LambdaName,ParameterValue=Bamboo" \
"ParameterKey=S3Bucket,ParameterValue=bamboo-root-s3-bucket" \
--capabilities CAPABILITY_NAMED_IAM