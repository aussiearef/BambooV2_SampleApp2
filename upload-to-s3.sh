export AWS_ACCESS_KEY_ID=${bamboo.accessKey}
export AWS_SECRET_ACCESS_KEY=${bamboo.secretKey}
export REGION=ap-southeast-2

# ZIP the artifact file(s) if you want to deploy a ZIP file.
# Use below command (un-comment) for creating a zip
# zip lambda.zip lambda.py

aws s3 cp lambda.zip s3://${bamboo.rootS3Bucket}