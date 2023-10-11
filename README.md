# BeamMP-ITL_adverts

This is a simple serverside plugin for BeamMP that displays advertising messages in the chat.

[README на русском](/README.ru.md)

## Plugin installation & update

- Simple drag&drop "ITL_adverts" folder in to "Resources/Server" directory of your server

## Configuring

All confugiration stored in file: "Resources/Server/ITL_adverts/config/main.config.json"

It is HIGHLY RECOMMENDED to create a config override. Simply copy the "main.config.json" file and name the new file "override_main.config.json". This allows you to update the plugin by easily dragging and dropping the folder, and prevents the config from being overwritten. The override file may contain only the necessary rows, as any missing parameters will be taken from the original "main.config.json" file.

Explanation of config rows:
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
        "// Oh, this is a message group, both (or more) messages would send together at the same time",
        [
            "ITL_advert sample message group 2, message 1",
            "ITL_advert sample message group 2, message 2"
        ],
        "Test msg 4",
        "Test msg 5"
    ]
}
```
p.s. Please do not copy that examle to your main config, that's dirty...
