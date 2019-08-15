import json
import boto3
import sys

print('Loading function')
""" Function to define Lambda Handler """
def lambda_handler(event, context):
    try:

        client = boto3.client('cloudtrail')
        if event['detail']['eventName'] == 'StopLogging':
            response = client.start_logging(Name=event['detail']['requestParameters']['name'])

    except Exception, e:
        sys.exit();