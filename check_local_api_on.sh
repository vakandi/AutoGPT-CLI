# Load a model, start the server, and run this example in your terminal
# Choose between streaming and non-streaming mode by setting the "stream" field

IP="192.168.100.104"


curl http://$IP:5000/v1/chat/completions \
-H "Content-Type: application/json" \
-d '{ 
  "messages": [ 
    { "role": "system", "content": "Always answer in rhymes." },
    { "role": "user", "content": "Introduce yourself." }
  ], 
  "temperature": 0.7, 
  "max_tokens": -1,
  "stream": false
}'
