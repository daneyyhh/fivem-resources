# FiveM Resources

A collection of FiveM server resources and scripts for GTA V multiplayer.

## 📦 Resources

### Example Resource
A basic example FiveM resource with client-side and server-side scripts.

**Features:**
- Client-side event handlers
- Server-side player management
- Custom commands
- Configuration file
- Event handling examples

## 🚀 Installation

1. Clone this repository to your FiveM server's `resources` folder:
```bash
git clone https://github.com/daneyyhh/fivem-resources.git
```

2. Add the resource to your `server.cfg`:
```
ensure example-resource
```

3. Restart your server or use the command:
```
refresh
ensure example-resource
```

## 📁 Structure

```
example-resource/
├── fxmanifest.lua    # Resource manifest file
├── config.json       # Configuration settings
├── client/
│   └── main.lua      # Client-side scripts
└── server/
    └── main.lua      # Server-side scripts
```

## 🎮 Usage

### Commands

- `/notify [message]` - Display a notification (default: "Hello from FiveM!")
- `/serverinfo` - Display server information
- Press `E` key - Display your current coordinates in console

### Events

**Client Events:**
- `playerSpawning` - Triggered when player spawns

**Server Events:**
- `onResourceStart` - Triggered when resource starts
- `onResourceStop` - Triggered when resource stops
- `playerConnecting` - Triggered when player connects
- `playerJoined` - Triggered when player joins

## ⚙️ Configuration

Edit `config.json` to customize the resource settings:

```json
{
  "settings": {
    "enableNotifications": true,
    "debugMode": false,
    "maxPlayers": 32
  }
}
```

## 🛠️ Development

### Prerequisites
- FiveM Server
- Basic knowledge of Lua scripting
- Understanding of FiveM natives

### Adding New Features

1. Create your scripts in the appropriate folder (client/server)
2. Register them in `fxmanifest.lua`
3. Test thoroughly on a development server

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📞 Support

For issues and questions, please create an issue in this repository.

## 🔗 Resources

- [FiveM Documentation](https://docs.fivem.net/)
- [FiveM Natives Reference](https://docs.fivem.net/natives/)
- [FiveM Forum](https://forum.cfx.re/)

---

**Note:** This is an example resource for learning purposes. Modify it according to your server's needs.
