execute unless data storage entitydb: entities[-1].data if data storage entitydb: entities run function entitydb:save/data_removed

data modify block ~ ~ ~ RecordItem.tag.entities set from storage entitydb: entities
data remove storage entitydb: entities
