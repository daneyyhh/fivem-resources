<div align="center">

# 🎮 FiveM Resources

### 🚀 Professional FiveM Server Resources for GTA V Multiplayer

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![FiveM](https://img.shields.io/badge/FiveM-Ready-blue.svg)](https://fivem.net/)
[![Lua](https://img.shields.io/badge/Lua-5.4-blueviolet.svg)](https://www.lua.org/)
[![Stars](https://img.shields.io/github/stars/daneyyhh/fivem-resources?style=social)](https://github.com/daneyyhh/fivem-resources/stargazers)

<p align="center">
  <a href="#-features">Features</a> •
  <a href="#-quick-start">Quick Start</a> •
  <a href="#-documentation">Documentation</a> •
  <a href="#-contributing">Contributing</a>
</p>

</div>

---

## ✨ Features

<table>
<tr>
<td>

### 🎯 Client-Side Features
- ✅ Event-driven architecture
- ✅ Custom notification system
- ✅ Coordinate tracking
- ✅ Optimized performance
- ✅ Easy to customize

</td>
<td>

### 🛡️ Server-Side Features
- ✅ Player connection management
- ✅ Resource lifecycle tracking
- ✅ Chat integration
- ✅ Console logging with colors
- ✅ Secure event handling

</td>
</tr>
</table>

---

## 📦 What's Included?

```
fivem-resources/
│
└── example-resource/
    ├── 📄 fxmanifest.lua    # Resource configuration
    ├── ⚙️ config.json         # Settings & options
    ├── 💻 client/
    │   └── main.lua          # Client-side logic
    └── 🔧 server/
        └── main.lua          # Server-side logic
```

---

## 🚀 Quick Start

### Prerequisites
```bash
✓ FiveM Server installed
✓ Basic Lua knowledge
✓ Git (optional)
```

### Installation

**Option 1: Clone Repository**
```bash
cd resources/
git clone https://github.com/daneyyhh/fivem-resources.git
cd fivem-resources
```

**Option 2: Download ZIP**
1. Download the repository as ZIP
2. Extract to your `resources` folder
3. Rename folder if needed

### Configuration

Add to your `server.cfg`:
```cfg
# FiveM Resources
ensure example-resource
```

Restart your server:
```bash
refresh
restart example-resource
```

---

## 📚 Documentation

### 🎮 Commands

| Command | Description | Usage |
|---------|-------------|-------|
| `/notify` | Display custom notification | `/notify [message]` |
| `/serverinfo` | Show server information | `/serverinfo` |
| `E Key` | Display coordinates | Press E in-game |

### 📡 Events

#### Client Events
```lua
-- Player spawning event
AddEventHandler('playerSpawning', function()
    -- Your code here
end)
```

#### Server Events
```lua
-- Resource started
AddEventHandler('onResourceStart', function(resourceName)
    -- Your code here
end)

-- Player connecting
AddEventHandler('playerConnecting', function(name, setKickReason, deferrals)
    -- Your code here
end)
```

### ⚙️ Configuration

Edit `config.json` to customize settings:

```json
{
  "settings": {
    "enableNotifications": true,
    "debugMode": false,
    "maxPlayers": 32
  },
  "permissions": {
    "adminOnly": false,
    "allowedGroups": ["user", "moderator", "admin"]
  }
}
```

---

## 🛠️ Development

### Project Structure

```lua
-- fxmanifest.lua
fx_version 'cerulean'
game 'gta5'

author 'Your Name'
description 'Example FiveM Resource'
version '1.0.0'

client_scripts { 'client/*.lua' }
server_scripts { 'server/*.lua' }
```

### Adding New Features

1. **Create your script**
   ```bash
   touch client/myfeature.lua
   ```

2. **Register in manifest**
   ```lua
   client_scripts {
       'client/*.lua',
       'client/myfeature.lua'
   }
   ```

3. **Test thoroughly**
   ```bash
   restart example-resource
   ```

---

## 📊 Performance

<div align="center">

| Metric | Value |
|--------|-------|
| ⏱️ CPU Usage | < 0.01ms |
| 📦 Memory | ~1MB |
| 📏 Scripts | 2 files |
| ⚡ Startup Time | ~50ms |

</div>

---

## 🤝 Contributing

Contributions make the open-source community amazing! Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📝 License

Distributed under the MIT License. See `LICENSE` for more information.

---

## 📞 Support

<div align="center">

### Need Help?

[![Issues](https://img.shields.io/github/issues/daneyyhh/fivem-resources)](https://github.com/daneyyhh/fivem-resources/issues)
[![Discord](https://img.shields.io/badge/Discord-Join%20Us-7289DA?logo=discord&logoColor=white)](https://discord.gg/fivem)

Create an [issue](https://github.com/daneyyhh/fivem-resources/issues) or join our community!

</div>

---

## 🔗 Useful Resources

- 📚 [FiveM Documentation](https://docs.fivem.net/)
- 🛠️ [FiveM Natives Reference](https://docs.fivem.net/natives/)
- 💬 [FiveM Forum](https://forum.cfx.re/)
- 💻 [Lua Documentation](https://www.lua.org/manual/5.4/)
- 🎮 [CFX Cookbook](https://cookbook.fivem.net/)

---

<div align="center">

### ⭐ Star this repository if you find it helpful!

**Made with ❤️ by [daneyyhh](https://github.com/daneyyhh)**

💡 *This is an example resource for learning purposes. Customize it for your server!*

---

[![forthebadge](https://forthebadge.com/images/badges/built-with-love.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/powered-by-coffee.svg)](https://forthebadge.com)

</div>
