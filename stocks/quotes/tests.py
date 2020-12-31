import requests
import json

api_request = requests.get(
            "https://sandbox.iexapis.com/stable/stock/"
            + "goog"
            + "/quote?token=Tpk_1ffd0fa5cbb241889288941e2f4e0e0f"
        ).json()
print(api_request)
