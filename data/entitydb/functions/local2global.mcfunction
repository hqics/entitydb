function entitydb:invalidate_access_ids

tp 0 0 16
data modify entity @s TileY set from storage entitydb: entities[-1].s_id
data remove storage entitydb: entities[-1].s_id

execute positioned as @s run data modify storage entitydb: entities[-1].data set from block ~ ~ ~ RecordItem.tag.entities[-1].data
execute positioned as @s run setblock ~ ~ ~ air
tp ~ ~ ~
