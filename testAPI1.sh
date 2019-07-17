echo "POST invoke chaincode on peers of Org1 and Org2"
echo
curl -s -X POST \
  http://localhost:4000/channels/mychannel/chaincodes/mycc \
  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1NjMzODk2MzQsInVzZXJuYW1lIjoiSmltIiwib3JnTmFtZSI6Ik9yZzEiLCJpYXQiOjE1NjMzNTM2MzR9.7sCHP50KegiL9NtFL0nY1lnN9_-XUhDQ-5N_I3wRcWs" \
  -H "content-type: application/json" \
  -d "{
	\"peers\": [\"peer0.org1.example.com\",\"peer0.org2.example.com\"],
	\"fcn\":\"move\",
	\"args\":[\"a\",\"b\",\"8\"]
}"
echo
echo
