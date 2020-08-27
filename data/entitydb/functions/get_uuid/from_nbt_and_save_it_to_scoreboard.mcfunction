data modify storage entitydb: UUID set from entity @s UUID
execute store result score @s entitydb.uuid0 run data get storage entitydb: UUID[0]
execute store result score @s entitydb.uuid1 run data get storage entitydb: UUID[1]
execute store result score @s entitydb.uuid2 run data get storage entitydb: UUID[2]
execute store result score @s entitydb.uuid3 run data get storage entitydb: UUID[3]
