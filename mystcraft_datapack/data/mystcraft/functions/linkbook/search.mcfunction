execute if entity @e[type=marker,tag=myst.link.marker,sort=nearest,limit=1] as @p[tag=myst.link.tping] run function mystcraft:linkbook/late_player
execute if entity @e[type=marker,tag=myst.link.marker,sort=nearest,limit=1] as @e[type=marker,tag=myst.link.marker,sort=nearest,limit=1] run function mystcraft:linkbook/late_marker
execute unless entity @e[type=marker,tag=myst.link.marker,sort=nearest,limit=1] run schedule function mystcraft:linkbook/search 1t append