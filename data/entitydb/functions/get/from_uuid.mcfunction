execute if data storage entitydb: entities run data remove storage entitydb: entities
function entitydb:jukebox/uuid
data remove storage entitydb: UUID
execute if data storage entitydb: entities[-1].s_id positioned as @s run function entitydb:local2global
execute positioned as @s unless block ~ ~ ~ jukebox run setblock ~ ~ ~ jukebox{RecordItem:{id:"jukebox",Count:1b}}
scoreboard players set got_from_id entitydb 0
