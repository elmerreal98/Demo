aws configure
aws cloudformation create-stack --stack-name demo --template-body file://main.yml
aws cloudformation delete-stack --stack-name demo

aws cloudformation deploy --template-file ./principal.yml --stack-name demo --parameter-overrides BDPASS='123' BucketS3='s3://demo-cloudformation-template-elmer' BDUSER='root'
