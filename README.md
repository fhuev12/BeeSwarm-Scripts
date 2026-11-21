# BeeSwarm-Scripts

Protected (LZSS + XOR + Base64) builds of two Bee Swarm Simulator automation GUIs.

## Load

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/fhuev12/BeeSwarm-Scripts/main/BeeSwarm_DarkCyber_v1.0.0.lua"))()
```

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/fhuev12/BeeSwarm-Scripts/main/BeeSwarm_LuckyGUI_v2.0a.lua"))()
```

Requires an executor that provides `game:HttpGet`, `bit32` and `loadstring`.

## Layout

- `BeeSwarm_DarkCyber_v1.0.0.lua` - loader
- `BeeSwarm_LuckyGUI_v2.0a.lua` - loader
- `parts/*.p1.txt`, `parts/*.p2.txt` - encrypted payload shards (do not edit)

## Integrity

Decoded payloads reproduce the original sources byte-for-byte:

- DarkCyber: `f2adb9a5129f8d4e2002df790aa2d76011b3511f704ca45da0445651087741da`
- LuckyGUI: `55ac0ebae80accdb9b8e8d199d55574685d2c95675a32d7ffac1874171aef0d7`

## Warning

These are third-party automation scripts. Using them violates the Roblox Terms of Service and may result in account penalties. Use only on accounts you can afford to lose.
