execute as @e store result score @s playerY run data get entity @s Pos[1] 100
execute as @e[nbt={Dimension:"minecraft:overworld"}] at @s if score @s playerY < ENTER_Y playerY run function shadowrealm:mine
execute as @e[nbt={Dimension:"shadowrealm:the_room"}] if score @s playerY >= EXIT_Y playerY run function shadowrealm:teleport_to_spawn

execute as @a if dimension shadowrealm:the_room run effect give @s minecraft:slow_falling 1 1 true
execute in shadowrealm:the_room run gamerule keepInventory false
gamerule doImmediateRespawn false