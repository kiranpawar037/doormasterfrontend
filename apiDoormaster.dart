var headersList = {
 'Accept': '*/*',
 'User-Agent': 'Thunder Client (https://www.thunderclient.com)',
 'Content-Type': 'application/json' 
};
var url = Uri.parse('http://localhost:8080/door');

var body = {
  "door_id": "2",
  "door_name": "Main Door",
  "time": "2024-04-25T12:00:00Z",
  "date": "2024-04-25",
  "value": 1
}
;

var req = http.Request('POST', url);
req.headers.addAll(headersList);
req.body = json.encode(body);


var res = await req.send();
final resBody = await res.stream.bytesToString();

if (res.statusCode >= 200 && res.statusCode < 300) {
  print(resBody);
}
else {
  print(res.reasonPhrase);
}