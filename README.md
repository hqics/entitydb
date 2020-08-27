This data pack allows data to be stored per entity.
Usage:

1. Always run the "entitydb:get" function first:<br/>
    `execute as (entity) run function entitydb:get`<br/>
  or:<br/>
    `data modify storage entitydb: UUID set value (...)`<br/>
    `function entitydb:get`

2. Do something with the data:<br/>
    `data modify storage entitydb: data (...)`

3. Save it:<br/>
    `function entitydb:save`

To remove an entry, remove "entitydb: data" and run the "entitydb:save" function.<br/>
The "entitydb:get" function removes "entitydb: UUID" after running.<br/>
The "entitydb:save" function removes "entitydb: data" after running.

How it works: The data of an entity is stored in a jukebox at a position that depends on the UUID[0] value.<br/>
This allows fast access to the data because it doesn't need to filter through a large list of all the stored values.<br/>
(Except if there are a lot of stored entities whose UUID[0]/65536 values are equal to each other, but that's very unlikely because UUID[0] is random.)<br/>
The jukeboxes are located in the "entitydb:" dimension in the chunk at 0 0.
