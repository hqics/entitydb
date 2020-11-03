scoreboard players set @s entitydb.lg 0

data modify storage entitydb: UUID set from entity @s UUID
execute store result score @s entitydb.uuid0 run data get storage entitydb: UUID[0]
execute store result score @s entitydb.uuid1 run data get storage entitydb: UUID[1]
execute store result score @s entitydb.uuid2 run data get storage entitydb: UUID[2]
execute store result score @s entitydb.uuid3 run data get storage entitydb: UUID[3]

execute as d28b2115-c99e-84c2-6e45-963d34071d44 run function entitydb:jukebox/uuid
data remove storage entitydb: UUID

execute store result score @s entitydb.id run data get storage entitydb: entities[-1].s_id
execute unless data storage entitydb: entities[-1].s_id positioned as d28b2115-c99e-84c2-6e45-963d34071d44 run function entitydb:new_id
data remove storage entitydb: entities
