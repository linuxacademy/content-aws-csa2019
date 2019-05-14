import boto3

sns = boto3.client('sns')

def lambda_handler(event, context):
    sns.publish(PhoneNumber=event['phone'], Message=event['message'])
    return 'Success!'