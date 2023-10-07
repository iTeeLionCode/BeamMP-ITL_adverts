# BeamMP-ITL_adverts

This is a simple serverside plugin for BeamMP that displays advertising messages in the chat.

## Plugin installation

- Drop folfer "Resources" in to root directory of your server
- Copy config example "Resources/Server/ITL_adverts/config/main.json.example" to the same place with name "main.json" and cofigure it

## Plugin update

- Drop folder "Resources" in to root directory of your server

## Configuring

All confugiration stored in file: "Resources/Server/ITL_adverts/config/main.json"
```
{
    "// A message will be sent once every such number of seconds",
    "delay": 5,
    
    "// Send random message every time or one by one",
    "random": true,
    
    "// Send messages only if at least one user online",
    "onlineUsersOnly": false,
    
    "// A list of messages",
    "messages": [
        "Test msg 1",
        "Test msg 2",
        "Test msg 3",
        "Test msg 4",
        "Test msg 5"
    ]
}
```
p.s. Please do not copy that examle to your main config, that's dirty... use main.json.example
