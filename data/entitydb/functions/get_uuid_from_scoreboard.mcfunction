data modify storage entitydb: UUID set value [I;0,0,0,0]
execute store result storage entitydb: UUID[0] int 1 run scoreboard players get @s entitydb.uuid0
execute store result storage entitydb: UUID[1] int 1 run scoreboard players get @s entitydb.uuid1
execute store result storage entitydb: UUID[2] int 1 run scoreboard players get @s entitydb.uuid2
execute store result storage entitydb: UUID[3] int 1 run scoreboard players get @s entitydb.uuid3
