# Chunky Offline

Chunky Offline is an extension of [Chunky](https://github.com/pop4959/Chunky) to generate chunks when no players are online and it runs automatically, the default values are radius as `10000`, center at `0 0`, and world as `minecraft:overworld`.

## Config

Change the config:

```mcfunction
/function chunky_offline:config/set {"radius":10000,"x":0,"z":0,"world":"minecraft:overworld"}
```

### Multi-World Support

The datapack now supports multi-world chunk generation. You can specify different worlds for chunk generation:

**Overworld:**
```mcfunction
/function chunky_offline:config/set {"radius":10000,"x":0,"z":0,"world":"minecraft:overworld"}
```

**Nether:**
```mcfunction
/function chunky_offline:config/set {"radius":5000,"x":0,"z":0,"world":"minecraft:the_nether"}
```

**End:**
```mcfunction
/function chunky_offline:config/set {"radius":5000,"x":0,"z":0,"world":"minecraft:the_end"}
```

**Custom Dimensions:**
```mcfunction
/function chunky_offline:config/set {"radius":10000,"x":0,"z":0,"world":"custom:dimension_name"}
```

**Note:** When using the `/function chunky_offline:config/set` command, all parameters (radius, x, z, and world) must be provided. If you want to keep the current world setting, specify it explicitly or use the default value `minecraft:overworld`. The datapack automatically initializes with `minecraft:overworld` on first load, ensuring backward compatibility with existing setups that don't specify a world.

Disable/enable global messages:

```mcfunction
/function chunky_offline:config/global_messages/<enable | disable>
```

Force start (only if you has been canceled the process manually):

```mcfunction
/function chunky_offline:chunky/force_start
```

## Commands

Cancel:

```mcfunction
/function chunky_offline:chunky/cancel
```

Pause:

```mcfunction
/function chunky_offline:chunky/pause
```

Resume:

```mcfunction
/function chunky_offline:chunky/resume
```

Manually start (this command runs automatically when Chunky Oflline loads):

```mcfunction
/function chunky_offline:chunky/start
```
