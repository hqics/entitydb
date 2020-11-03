#execute if score @s entitydb.aId = accessId entitydb run say error
data modify storage entitydb: new_data[] set from storage entitydb: entities[-1]
data remove storage entitydb: entities[-1].data

scoreboard players add new_id entitydb 1
execute store result storage entitydb: entities[-1].s_id int 1 store result score @s entitydb.id run scoreboard players operation new_id entitydb %= id_limit entitydb

execute unless block ~ ~ ~ jukebox run setblock ~ ~ ~ jukebox{RecordItem:{id:"jukebox",Count:1b}}
data modify block ~ ~ ~ RecordItem.tag.entities set from storage entitydb: entities
