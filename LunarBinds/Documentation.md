# LunarBinds - Official Documentation

### What's LunarBinds?
LunarBinds is a useful utility for creating one-key, or multi-key, keybinds.


***LunarBinds will be referred to as `lunarbinds` in code.***

### LunarBinds - How to Use

First off, we need to boot LunarBinds using `loadstring`.
```lua
local lunarbinds = loadstring(game:HttpGet("https://raw.githubusercontent.com/probablYnicKxD/Useful-Systems/main/LunarBinds/Source.lua"))()
```
Now that we have booted LunarBinds, we can use the function `lunarbinds:AddBind()` to create a new keybind.

The `lunarbinds:AddBind()` function takes two arguments: The binds table, and the callback function.

There are two types of keybinds: one-key, and multi-key.

#### Examples

Here's an example of a one-key keybind.
```lua
lunarbinds:AddBind({Enum.KeyCode.E}, function()
    print("I pressed the E key!")
end)
```
As you notice, even though the keybind is one-key, you still need to enclose it in curly brackets as a table.
This is very important!

Now, here's an example of a multi-key keybind.
```lua
lunarbinds:AddBind({Enum.KeyCode.LeftControl, Enum.KeyCode.E}, function()
    print("I pressed the left control and E key at the same time!")
end)
```

Now, since both of the keybinds that we created contain the keycode of `Enum.KeyCode.E`, it will cause both of the functions to fire at the same time.

That's the end of the LunarBinds documentation! Happy keybinding!

##### Scripted by probablYnicK (lunaR_nicK#6800)
