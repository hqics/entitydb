execute in entitydb: run fill 0 0 16 0 255 16 air
execute in entitydb: run fill 0 0 0 15 127 15 air
execute in entitydb: run fill 0 255 0 15 128 15 air
scoreboard players reset *
data remove storage entitydb: entities
data remove storage entitydb: accessId
reload
