/client/proc/ticklag(number as null|num)
	set category = "Debug"
	set name = "Ticklag"
	set desc = "Ticklag"
	set hidden = 1
	admin_only

	if (src.holder.level < LEVEL_CODER)
		alert("You must be at least a Coder to modify ticklag.")
		return

	if (isnull(number))
		number = input(usr, "Please enter new ticklag value.", "Ticklag", world.tick_lag) as null|num
		if (isnull(number))
			return

	world.tick_lag = number
	logTheThing("admin", src, null, "set tick_lag to [number]")
	logTheThing("diary", src.mob, null, "set tick_lag to [number]", "admin")
	message_admins("[key_name(usr)] modified world's tick_lag to [number]")
	return
/*
	if(Debug2)
		if(src.holder)
			if(!src.mob)
				return
			if(src.holder.rank in list("Coder", "Host"))
				world.tick_lag = number
				logTheThing("admin", src, null, "set tick_lag to [number]")
				logTheThing("diary", src.mob, null, "set tick_lag to [number]", "admin")
				message_admins("[key_name(usr)] modified world's tick_lag to [number]")
			else
				alert("Fuck off, no crashing dis server")
				return
	else
		alert("Debugging is disabled")
		return
*/