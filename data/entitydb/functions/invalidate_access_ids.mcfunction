execute if score accessId entitydb matches 0 run scoreboard players reset * entitydb.aId
execute store result storage entitydb: accessId int 1 run scoreboard players add accessId entitydb 1
