execute unless score @s[type=player] entitydb.leave_game matches 1 store success score @s entitydb.leave_game run scoreboard players reset @s entitydb.uuid0

execute if score @s entitydb.uuid0 matches ..2147483647 run function entitydb:get_uuid_from_scoreboard
execute unless score @s entitydb.uuid0 matches ..2147483647 run function entitydb:get_uuid_from_nbt_and_save_it_to_scoreboard
