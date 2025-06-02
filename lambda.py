import json

def lambda_handler(event, context):
    # Parse the incoming event
    body = {
        "message": "API was called successfully",
    }

    # Create a response
    response = {
        "statusCode": 200,
        "body": json.dumps(body)
    }

    return response
