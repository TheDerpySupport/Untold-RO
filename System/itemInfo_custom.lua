tbl = {
	[32100] = {
		unidentifiedDisplayName = "Lantern",
		unidentifiedResourceName = "이상한랜턴",
		unidentifiedDescriptionName = { "" },
		identifiedDisplayName = "Lantern",
		identifiedResourceName = "이상한랜턴",
		identifiedDescriptionName = {
			"A lantern to light your surroundings.",
			"------------------------",
			"[+^FF0000Sight Rune^000000]",
			"Casts ^0000FFRuwach^000000 instead of ^FF0000Sight^000000.",
			"------------------------",
			"^FFFFFF_^000000",
			"Usable:^6666CC Supportive^000000",
			"Effect:^006600 Detects hidden enemies^000000",
			"Duration:^006600 10^000000 seconds",
			"Delay: ^006600 1^000000 minute",
			"Weight:^006600 20^000000"
		},
		slotCount = 0,
		ClassNum = 0
	}
}
for ItemID,DESC in pairs(tbl) do
CheckItem(ItemID,DESC)
end
