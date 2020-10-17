function entitydb:search/compare

execute unless data storage entitydb: entities[] run function entitydb:search/new_entry

data modify storage entitydb: entities insert -2 from storage entitydb: search.entities2[]
data remove storage entitydb: search

#example:
#data modify storage entitydb: UUID set value 2
#data modify storage entitydb: entities set value [{id:1},{id:2},{id:3}]
#function entitydb:search/search
#tellraw @a {"nbt":"entities[].id","storage":"entitydb:"}
