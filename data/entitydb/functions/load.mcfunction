execute unless entity @a run scoreboard objectives remove entitydb.lg

scoreboard objectives add entitydb.lg minecraft.custom:minecraft.leave_game
scoreboard objectives add entitydb.uuid0 dummy
scoreboard objectives add entitydb.uuid1 dummy
scoreboard objectives add entitydb.uuid2 dummy
scoreboard objectives add entitydb.uuid3 dummy
scoreboard objectives add entitydb dummy

scoreboard players set 16 entitydb 16

execute in entitydb: run forceload add 0 0
execute unless entity d28b2115-c99e-84c2-6e45-963d34071d44 in entitydb: run summon item_frame 0 0 0 {UUID:[I;-762633963,-912358206,1850054205,872881476],Fixed:1b,Invisible:1b}
