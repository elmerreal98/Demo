aws configure
aws cloudformation create-stack --stack-name demo --template-body file://main.yml
aws cloudformation delete-stack --stack-name demo
