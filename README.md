# RIPcoord

Utility to track player location.
Allows the user to be informed of their location on death.

creates the following scoreboards:
  - `rc_dimension`, a numeric representation of the player's dimension (or -1 for custom)
  - `rc_x`, `rc_y`, `rc_z`, `rc_r1`, r`c_r2`, scaled (1000.0) player position/rotation
  - `rc_xint`, `rc_yint`, `rc_zint`, player position, truncated to be an integer

## usage

  - `/function ripcoord:store` to store the player's location
  - `/function ripcoord:tell` to tell the player's stored location
  - in trivial cases, run `ripcoord:store` and `ripcoord:tell` when death occurs. (see "trival usage" below)
  - if `doImmediateRespawn` is `true`, you'll need to run `ripcoord:store` once per tick, instead
  - `ripcoord:marker` executes all functions tagged `#ripcoord:marked` at the stored coordinates

## trivial usage

If you just want to display coordinates automatically when the player dies, and `doImmediateRespawn` is `false`,
create a datapack containing:

  - `data/minecraft/tags/functions/load.json`: `{"values":["ripcoord:init_auto"]}`
  - `data/minecraft/tags/functions/tick.json`: `{"values":["ripcoord:auto"]}`
