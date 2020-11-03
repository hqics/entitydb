execute unless score @s entitydb.lg matches 0 run function entitydb:get_id

execute unless score got_from_id entitydb matches 1 store success score got_from_id entitydb run tp d28b2115-c99e-84c2-6e45-963d34071d44 0 0 16
execute store result entity d28b2115-c99e-84c2-6e45-963d34071d44 TileY int 1 run scoreboard players get @s entitydb.id
execute positioned as d28b2115-c99e-84c2-6e45-963d34071d44 run data modify storage entitydb: entities set from block ~ ~ ~ RecordItem.tag.entities

execute unless score @s entitydb.aId = accessId entitydb positioned as d28b2115-c99e-84c2-6e45-963d34071d44 run function entitydb:jukebox/check_if_already_taken
