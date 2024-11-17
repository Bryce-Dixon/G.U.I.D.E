# G.U.I.D.E - Godot Unified Input Detection Engine



G.U.I.D.E is an extension for the Godot Engine that allows you to easily use input from multiple sources, such as keyboard, mouse, gamepad, etc. in a unified way. Gone are the days, where mouse input was handled differently from joysticks. No matter where the input comes from - your game code stays the same


## Features

- Unified input detection and handling from multiple sources (keyboard, mouse, gamepad, etc.). All inputs are used in the same way in your game code.
- Inputs can be modified before being fed into your game code (e.g. for joystick dead-zones, sensitivity, inversion, conversion to 2D/3D coordinates, etc.).
- Inputs can be assigned to actions and these actions trigger on various conditions (e.g. tap, hold, press, release, combos etc.).
- Multiple input contexts can be defined, which can be enabled/disabled at runtime. This allows you to easily switch between different input schemes (e.g. in-game, menu, driving, flying, walking, etc.).
- Overlapping input is automatically prioritized, such that input like _LT+A_ will have precedence over just  _A_.
- Supports both event-based and polling-based input handling, like Godot's built-in input system.
- Built-in support for displaying input prompts in your game. These prompts support complex input combinations (e.g. _LT+A_ or combos like _A > B > A > X > Y_). Prompts can be displayed both as text and as icons. Icons will automatically reflect the actual input device being used (e.g. XBox controller, Playstation controller, keyboard, joystick, etc.).
- Works nicely alongside Godot's built-in input system, so you can use both in parallel if needed. Can also inject action events into Godot's input system.


## Documentation

The documentation is availabe on the [documentation site](https://godotneers.github.io/guide/).


## Acknowledgements / Licenses

The input prompts use the great icons made by Nicolae (Xelu) Berbece (https://thoseawesomeguys.com/prompts/) under CC0 License.
