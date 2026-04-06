# ClickLib

Vanilla click detection library for Minecraft Java Edition **1.21.6** (pack_format 88).

## API

### Functions
| Function | Description |
|---|---|
| `clicklib:enable` | Activates click detection for `@s`. Called automatically by tick. |
| `clicklib:disable` | Deactivates click detection for `@s`. Called automatically by tick. |
| `clicklib:query/is_active` | Returns `1` if `@s` is active, `0` otherwise. Use with `execute if function`. |

### Tags — click events
| Tag | Fires when |
|---|---|
| `#clicklib:left_click` | Active player left-clicks anything |
| `#clicklib:left_click_entity` | Active player left-clicks an entity |
| `#clicklib:right_click` | Active player right-clicks anything |
| `#clicklib:right_click_block` | Active player right-clicks a block |
| `#clicklib:right_click_entity` | Active player right-clicks an entity |

### Tags — lifecycle & tick
| Tag | Fires when | Context |
|---|---|---|
| `#clicklib:on_enable` | Player activates a click item | `@s` = the player |
| `#clicklib:on_disable` | Player deactivates (item removed) | `@s` = the player |
| `#clicklib:tick_active` | Every tick, per active player | `@s` = the player |

## How it works

- Players holding an item with `custom_data~{clicklib:{click_item:true}}` get the `clicklib.active` tag automatically.
- Left-click detection uses a `minecraft:interaction` probe entity positioned in front of the player each tick.
- Right-click detection uses advancement triggers, gated by `clicklib.active` tag condition.
- On `/reload`, orphaned probes are killed and advancement states are reset.

## Item tag

```
[custom_data={clicklib:{click_item:true}}]
```

Multiple items can use the same tag — partial match (`~`) means any item carrying this key is detected.

## Registering hooks

```json
// data/mynamespace/tags/function/right_click.json
{ "values": ["mynamespace:on_right_click"] }

// data/mynamespace/tags/function/on_enable.json
{ "values": ["mynamespace:on_activate"] }

// data/mynamespace/tags/function/tick_active.json
{ "values": ["mynamespace:active_tick"] }
```

All hooks run as the relevant player (`@s`).

## Query example

```mcfunction
execute if function clicklib:query/is_active run say I have a click item equipped
```

## Example pack

Run `/function example:give_click_wand` to get a test item.  
Run `/function example:check_active` to test the query function.
