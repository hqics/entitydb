data modify storage entitydb: UUID set value [I;0,0,0,0]
execute store result storage entitydb: UUID[0] int 1 run scoreboard players get @s entitydb.uuid0
execute store result storage entitydb: UUID[1] int 1 run scoreboard players get @s entitydb.uuid1
execute store result storage entitydb: UUID[2] int 1 run scoreboard players get @s entitydb.uuid2
execute store result storage entitydb: UUID[3] int 1 run scoreboard players get @s entitydb.uuid3
data modify storage entitydb: UUID2 set from storage entitydb: UUID

execute unless block ~ ~ ~ jukebox run data remove storage entitydb: entities
execute unless block ~ ~ ~ jukebox run setblock ~ ~ ~ jukebox{RecordItem:{id:"jukebox",Count:1b}}
execute store success score taken entitydb run data modify storage entitydb: UUID set from storage entitydb: entities[-1].id

execute if score taken entitydb matches 1 as d28b2115-c99e-84c2-6e45-963d34071d44 run function entitydb:local2global_

data modify storage entitydb: entities set from storage entitydb: new_data

scoreboard players operation s_id entitydb = @s entitydb.id
execute unless data storage entitydb: entities run scoreboard players set taken entitydb 1
execute if score taken entitydb matches 1 unless data storage entitydb: new_data as d28b2115-c99e-84c2-6e45-963d34071d44 run function entitydb:global2local

data remove storage entitydb: UUID
data remove storage entitydb: UUID2
data remove storage entitydb: new_data

scoreboard players operation @s entitydb.aId = accessId entitydb
