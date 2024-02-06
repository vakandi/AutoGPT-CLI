
import requests
import json

url = "http://192.168.100.104:5000/v1/internal/logits"

headers = {
    "Content-Type": "application/json"
}

data = {
    "prompt": "Who is best, Asuka or Rei? Answer:",
    "use_samplers": False
}

response = requests.post(url, headers=headers, json=data)

print(response.status_code)
print(json.dumps(response.json(), indent=4))
