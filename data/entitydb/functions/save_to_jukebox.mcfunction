execute unless block ~ ~ ~ jukebox run setblock ~ ~ ~ jukebox{RecordItem:{id:"jukebox",Count:1b}}

execute unless data storage entitydb: entities[-1].data run data remove storage entitydb: entities[-1]
execute unless data storage entitydb: entities[] run setblock ~ ~ ~ air

data modify block ~ ~ ~ RecordItem.tag.entities set from storage entitydb: entities
data remove storage entitydb: entities
