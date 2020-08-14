#input:
#search.list - the list to search through
#search.searchfor - the id to search for
#output:
#execute if score not_found entitydb matches 1 - whether the element was not found
#search.list - the input list with the element with a matching id moved to the 0th place
#if the element doesn't exist, an empty new one with the id searched for is created

function entitydb:search/compare

execute unless data storage entitydb: search.list[] run data modify storage entitydb: search.list set value [{}]
execute store success score not_found entitydb run data modify storage entitydb: search.list[0].id set from storage entitydb: search.searchfor

data modify storage entitydb: search.list insert 1 from storage entitydb: search.list2[]
data remove storage entitydb: search.list2

#example:
#data merge storage entitydb: {search:{searchfor:2,list:[{id:1},{id:2},{id:3}]}}
#function entitydb:search/search
#tellraw @a {"nbt":"search.list[].id","storage":"entitydb:"}
