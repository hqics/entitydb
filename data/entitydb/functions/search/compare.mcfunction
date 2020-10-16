#if search.searchfor equals search.list[-1].id or there is no more element in the list, stop searching
data modify storage entitydb: search.compare set from storage entitydb: search.searchfor
execute store success score notFinished entitydb run data modify storage entitydb: search.compare set from storage entitydb: search.list[-1].id
execute if score notFinished entitydb matches 1 run function entitydb:search/next_element
