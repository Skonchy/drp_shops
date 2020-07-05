DRPConfig = {}
DRPConfig.Locations = {
	Shop_locations = {
		Blip = {
			Pos = {
				{x = 373.875,   y = 325.896,  z = 102.566},
				{x = 2557.458,  y = 382.282,  z = 107.622},
				{x = -3038.939, y = 585.954,  z = 6.908},
				{x = -3241.927, y = 1001.462, z = 11.830},
				{x = 547.431,   y = 2671.710, z = 41.156},
				{x = 1961.464,  y = 3740.672, z = 31.343},
				{x = 2678.916,  y = 3280.671, z = 54.241},
				{x = -2540.81,  y = 2313.85, z = 33.41},
				{x = 161.41,  y = 6640.7, z = 31.71},
				{x = 1729.216,  y = 6414.131, z = 34.037},
				{x = 1135.808,  y = -982.281,  z = 45.415},
				{x = -1222.915, y = -906.983,  z = 11.326},
				{x = -1487.553, y = -379.107,  z = 39.163},
				{x = -2968.243, y = 390.910,   z = 14.043},
				{x = 1166.024,  y = 2708.930,  z = 37.157},
				{x = 1392.562,  y = 3604.684,  z = 33.980},
				{x = 127.830,   y = -1284.796, z = 28.280}, --StripClub
				{x = -1393.409, y = -606.624,  z = 29.319}, --Tequila la
				{x = -559.906,  y = 287.093,   z = 81.176},  --Bahamamas
				{x = -48.519,   y = -1757.514, z = 28.421},
				{x = 1163.373,  y = -323.801,  z = 68.205},
				{x = -707.501,  y = -914.260,  z = 18.215},
				{x = -1820.523, y = 792.518,   z = 137.118},
				{x = 1698.388,  y = 4924.404,  z = 41.063},
			},
			Name = "Convenience store",
			Scale = 0.7,
			Sprite = 52,
			Color = 2
		},
		Shop_Marker = {
			Pos = {
				{x = 373.875,   y = 325.896,  z = 102.566},
				{x = 2557.458,  y = 382.282,  z = 107.622},
				{x = -3038.939, y = 585.954,  z = 6.908},
				{x = -3241.927, y = 1001.462, z = 11.830},
				{x = 547.431,   y = 2671.710, z = 41.156},
				{x = 1961.464,  y = 3740.672, z = 31.343},
				{x = 2678.916,  y = 3280.671, z = 54.241},
				{x = -2540.81,  y = 2313.85, z = 33.41},
				{x = 161.41,  y = 6640.7, z = 31.71},
				{x = 1729.216,  y = 6414.131, z = 34.037},
				{x = 1135.808,  y = -982.281,  z = 45.415},
				{x = -1222.915, y = -906.983,  z = 11.326},
				{x = -1487.553, y = -379.107,  z = 39.163},
				{x = -2968.243, y = 390.910,   z = 14.043},
				{x = 1166.024,  y = 2708.930,  z = 37.157},
				{x = 1392.562,  y = 3604.684,  z = 33.980},
				{x = 127.830,   y = -1284.796, z = 28.280}, --StripClub
				{x = -1393.409, y = -606.624,  z = 29.319}, --Tequila la
				{x = -559.906,  y = 287.093,   z = 81.176},  --Bahamamas
				{x = -48.519,   y = -1757.514, z = 28.421},
				{x = 1163.373,  y = -323.801,  z = 68.205},
				{x = -707.501,  y = -914.260,  z = 18.215},
				{x = -1820.523, y = 792.518,   z = 137.118},
				{x = 1698.388,  y = 4924.404,  z = 41.063},
			},
			Color = { r = 255, g = 0, b = 0 },
			Size  = { x = 1.5, y = 1.5, z = 1.5 },
			Marker = 27,	
		},
	}
}


DRPConfig.Items = {
	---------------------------------------------------- Drinks ---------------------------------------------------------------
		{name = "Water", categorie = "drinks", item = "water", costs = 5, description = {}, img = "https://wiki.rage.mp/images/5/58/Blista.png"},
		{name = "Soda", categorie = "drinks", item = "soda", costs = 6, description = {}, img = "https://icf.listex.info/300x200/b5617e6a-4917-7c69-2b4e-84379750c773.jpg"},
		{name = "Vodka", categorie = "drinks", item = "vodka", costs = 20, description = {}, img = "https://wiki.rage.mp/images/5/58/Blista.png"},
	---------------------------------------------------- Food ---------------------------------------------------------------
		{name = "Hamburger", categorie = "food", item = "hamburger", costs = 5, description = {}, img = "https://wiki.rage.mp/images/5/58/Blista.png"},
		{name = "Hotdog", categorie = "food", item = "hotdog", costs = 5, description = {}, img = "https://wiki.rage.mp/images/5/58/Blista.png"},
		{name = "Chips", categorie = "food", item = "chips", costs = 5, description = {}, img = "https://wiki.rage.mp/images/5/58/Blista.png"},
	---------------------------------------------------- Auto Care ---------------------------------------------------------------
		{name = "Repair Kit", categorie = "autocare", item = "repair", costs = 250, description = {}, img = "https://huckberry.imgix.net/spree/products/426850/original/8tx4GWIuli_usag_the_workmans_toolbox_8_original.jpg?auto=format%2Ccompress&crop=top&fit=clip&cs=tinysrgb&w=600&ixlib=react-9.0.1&h=600&w=600"},
	---------------------------------------------------- Misc ---------------------------------------------------------------
		{name = "Ziptie", categorie = "misc", item = "ziptie", costs = 100, description = {}, img = "https://www.robosource.net/69-thickbox_default/4-zip-tie-black-100-pack.jpg"},
		{name = "Bandage", categorie = "misc", item = "bandage", costs = 100, description = {}, img = "https://www.sfpharmaplus.com/7909-large_default/net-bandage-hydrophilic-cotton-thread-white-color-10-m-x-10-cm.jpg"},
		{name = "Cigarette", categorie = "misc", item = "cigarette", costs = 4, description = {}, img = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSzXVIbXpilMNX6vESnyVzsBn8QI8nyTBE6MQ&usqp=CAU"},
}