# ClickLib Example Pack

Bu paket, ClickLib API'sini bozmadan örnek kullanım gösterir.

## API
- `clicklib:load`
- `clicklib:tick`
- `clicklib:enable`
- `clicklib:disable`
- `#clicklib:right_click`
- `#clicklib:right_click_block`
- `#clicklib:right_click_entity`
- `#clicklib:left_click`
- `#clicklib:left_click_entity`

## Örnek item
`/function example:give_click_wand`

Item component:
`[custom_data={clicklib:{click_item:1b}}]`

## Mantık
- Main hand'de işaretli item varsa `clicklib:enable`
- Item kalkınca `clicklib:disable`
- Left click entity algısı `minecraft:interaction` probe ile yapılır
- Right click block/entity advancement tetikleriyle hook'lanır

## Örnek callback'ler
Varsayılan callback'ler `example:` namespace'indedir. Kendi paketinde bu fonksiyonları değiştirip aynı API'yi kullanabilirsin.
