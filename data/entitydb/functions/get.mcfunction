function entitydb:forceload_and_summon_entity_if_needed
execute unless data storage entitydb: UUID run function entitydb:get_uuid

execute if data storage entitydb: UUID as d28b2115-c99e-84c2-6e45-963d34071d44 run function entitydb:calculate_coordinates_and_get_jukebox_data
