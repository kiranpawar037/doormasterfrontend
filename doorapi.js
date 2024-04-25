let headersList = {
    "Accept": "*/*",
    "User-Agent": "Thunder Client (https://www.thunderclient.com)",
    "Content-Type": "application/json"
   }
   
   let bodyContent = JSON.stringify({
     "door_id": "2",
     "door_name": "Main Door",
     "time": "2024-04-25T12:00:00Z",
     "date": "2024-04-25",
     "value": 1
   }
   );
   
   let response = await fetch("http://localhost:8080/door", { 
     method: "POST",
     body: bodyContent,
     headers: headersList
   });
   
   let data = await response.text();
   console.log(data);
   