scoreboard objectives add entitydb dummy
scoreboard players set 16 entitydb 16
scoreboard players set 65536 entitydb 65536

execute in entitydb: run forceload add 0 0

scoreboard objectives add entitydb.leave_game minecraft.custom:minecraft.leave_game
execute unless entity @a run scoreboard players reset * entitydb.leave_game


scoreboard objectives add entitydb.uuid0 dummy
scoreboard objectives add entitydb.uuid1 dummy
scoreboard objectives add entitydb.uuid2 dummy
scoreboard objectives add entitydb.uuid3 dummy
