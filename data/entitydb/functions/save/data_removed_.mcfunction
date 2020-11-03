data modify storage entitydb: UUID set from storage entitydb: entities[-1].id
function entitydb:jukebox/uuid
data remove storage entitydb: UUID
data remove storage entitydb: entities[-1]

execute unless data storage entitydb: entities[-1] positioned as @s run setblock ~ ~ ~ air
execute if data storage entitydb: entities[-1] positioned as @s run data modify block ~ ~ ~ RecordItem.tag.entities set from storage entitydb: entities
data remove storage entitydb: entities

function entitydb:invalidate_access_ids
tp ~ ~ ~
