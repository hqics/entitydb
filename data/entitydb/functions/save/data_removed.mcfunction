execute as d28b2115-c99e-84c2-6e45-963d34071d44 if entity @s[z=16,dx=0] run function entitydb:save/data_removed_

data remove storage entitydb: entities[-1]
execute unless data storage entitydb: entities[-1] run setblock ~ ~ ~ air
