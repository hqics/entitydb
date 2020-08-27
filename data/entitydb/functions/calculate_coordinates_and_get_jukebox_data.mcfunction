#todo:
#test to get to the jukebox with e.g. a function tree

execute store result score z entitydb run data get storage entitydb: UUID[0]

#better performance than using a scale with "data get"
#65536=2^32/(16*16*256)
#-32768..32767
execute store result score x entitydb run scoreboard players operation z entitydb /= 65536 entitydb
execute store result storage entitydb: Pos.TileX int 1 run scoreboard players operation x entitydb %= 16 entitydb
#-2048..2047
execute store result score y entitydb run scoreboard players operation z entitydb /= 16 entitydb
execute store result storage entitydb: Pos.TileZ int 1 run scoreboard players operation z entitydb %= 16 entitydb
#-128..127
scoreboard players operation y entitydb /= 16 entitydb
execute store result storage entitydb: Pos.TileY int 1 run scoreboard players add y entitydb 128

data modify entity @s {} merge from storage entitydb: Pos
data remove storage entitydb: Pos


#RecordItem.tag.entities: list of stored entities
#searches for the entry that has a matching UUID
data modify storage entitydb: search.searchfor set from storage entitydb: UUID
execute positioned as @s in entitydb: run data modify storage entitydb: search.list set from block ~ ~ ~ RecordItem.tag.entities
function entitydb:search/search
data modify storage entitydb: entities set from storage entitydb: search.list
data remove storage entitydb: search

data remove storage entitydb: data
data modify storage entitydb: data set from storage entitydb: entities[0].data
data remove storage entitydb: entities[0].data

data remove storage entitydb: UUID
