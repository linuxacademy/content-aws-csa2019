import boto3

VERIFIED_EMAIL = 'YOUR_SES_VERIFIED_EMAIL'

ses = boto3.client('ses')

def lambda_handler(event, context):
    ses.send_email(
        Source=VERIFIED_EMAIL,
        Destination={
            'ToAddresses': [event['email']]  # Also a verified email
        },
        Message={
            'Subject': {'Data': 'A reminder from your reminder service!'},
            'Body': {'Text': {'Data': event['message']}}
        }
    )
    return 'Success!'