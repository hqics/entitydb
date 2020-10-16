data modify storage entitydb: search.list2 prepend from storage entitydb: search.list[-1]
data remove storage entitydb: search.list[-1]
function entitydb:search/compare
