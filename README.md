# QB-Healing
This is a simple **RP** grandma healing script for QBCore.  
Feel free to **Pull Request** or post suggestions, issues. I will help where I can.

## Requires
- [QBCore](https://github.com/qbcore-framework/qb-core)
- [Berkie Target](https://github.com/BerkieBb/berkie-target)

## Ped Config
> Add this code to the **Berkie Target** config. `Config.Peds`
```
[1] = { 
		model = "ig_mrs_thornhill", 
		coords = vector4(2436.83, 4958.85, 46.81, 10.2),
		minusOne = true, 
		freeze = true,
		invincible = true,
		blockevents = true,
		target = {
			options = {
				{
					type = "client",
					event = "grandma:client:healing",
					icon = "fas fa-band-aid",
					label = "Request Healing",
				},
			},
			distance = 1.5,
		},
		currentpednumber = 0,
	},
```

## Issues & Suggestions
Please use the GitHub issues system to report issues or make suggestions.  
When making suggestion, please keep `[Suggestion]` in the title to make it clear that it is a suggestion.  
You can also join the **[QBCore Discord](https://discord.gg/qbcore)**!