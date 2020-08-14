setblock ~ ~ ~ jukebox{RecordItem:{id:"minecraft:jukebox",Count:1b}} keep

data modify storage entitydb: entities[0].data set from storage entitydb: data
data remove storage entitydb: data

execute unless data storage entitydb: entities[0].data run data remove storage entitydb: entities[0]
execute unless data storage entitydb: entities[] run setblock ~ ~ ~ air

data modify block ~ ~ ~ RecordItem.tag.entities set from storage entitydb: entities
data remove storage entitydb: entities
