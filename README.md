README: {🇺🇸](/README.md) | [🇷🇺](/README.ru.md)

# BeamMP ITL_adverts

This is a simple serverside plugin for BeamMP that displays advertising messages in the chat.

## Plugin installation & update

- Simple drag&drop "ITL_adverts" folder in to "Resources/Server" directory of your server

## Configuring

All confugiration stored in file: "Resources/Server/ITL_adverts/config/main.config.json"

It is HIGHLY RECOMMENDED to create a config override. Simply copy the "main.config.json" file and name the new file "override_main.config.json". This allows you to update the plugin by easily dragging and dropping the folder, and prevents the config from being overwritten. The override file may contain only the necessary rows, as any missing parameters will be taken from the original "main.config.json" file.

Explanation of config rows:
```
    "delay": 5 // A message will be sent once every such number of seconds
    "random": true // Send random message every time or one by one
    "onlineUsersOnly": false // Send messages only if at least one user online
    "messages": [] // A list of messages"
```
"messages" can cointain bunch of single messages and/or bunch of group of messages:
```
    "just a message" // single message

    или

    [
        "first msg",
        "second msg"
    ] // messages group
```
p.s. Please do not copy that text in to config file, comments would broke it!

## Thanks

[csv4211](https://github.com/csv4211) and [STRMBRG](https://github.com/STRMBRG) for helping with docs and testing
