function entitydb:invalidate_access_ids

data modify storage entitydb: entitydata set from storage entitydb: entities[-1]

function entitydb:jukebox/uuid

data modify storage entitydb: entities[-1] set from storage entitydb: entitydata
data remove storage entitydb: entitydata

execute positioned as @s run data modify block ~ ~ ~ RecordItem.tag.entities set from storage entitydb: entities
