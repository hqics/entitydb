data modify storage entitydb: search.entities2 prepend from storage entitydb: entities[-1]
data remove storage entitydb: entities[-1]
function entitydb:search/compare
