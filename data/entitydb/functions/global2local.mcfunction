#execute if data storage entitydb: entities[-1].s_id run say error
data modify storage entitydb: UUID set from storage entitydb: UUID2
data remove storage entitydb: entities
function entitydb:jukebox/uuid
execute positioned as @s unless block ~ ~ ~ jukebox run setblock ~ ~ ~ jukebox{RecordItem:{id:"jukebox",Count:1b}}


data modify storage entitydb: entity set from storage entitydb: entities[-1]

data remove storage entitydb: entities[-1].data
execute store result storage entitydb: entities[-1].s_id int 1 run scoreboard players get s_id entitydb
execute positioned as @s run data modify block ~ ~ ~ RecordItem.tag.entities set from storage entitydb: entities

data modify storage entitydb: entities set value [{}]
data modify storage entitydb: entities[-1] set from storage entitydb: entity
data remove storage entitydb: entity

#todo to allow getting without saving
#data modify block ~ ~ ~ RecordItem.tag.entities set from storage entitydb: entities

tp ~ ~ ~
