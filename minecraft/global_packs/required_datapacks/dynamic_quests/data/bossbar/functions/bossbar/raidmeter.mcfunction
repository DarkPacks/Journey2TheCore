#Setup Quest Raid Meter
execute as @s run raidmeter add quest "Twitch Quest Progress..." 5000 0 BOTTOM_RIGHT HORIZONTAL_THIN
execute as @s run raidmeter modify quest color PURPLE
execute as @s run raidmeter modify quest set 0

#Setup Village Raid Raid Meter
execute as @s run raidmeter add raid "Hype Train Progress..." 25 0 BOTTOM_LEFT HORIZONTAL_THIN
raidmeter modify raid display_remove @s
execute as @s run raidmeter modify raid color MAGENTA
execute as @s run raidmeter modify raid set 0