-- For AIActivity priorities, don't want to hard code those!
return setmetatable({
	URGENT = 300,
	PRIMARY = 200,
	IDLE = 100,
	INACTIVE = 0,
}, {
	__index = function (tab, value)
		error(("Could not find %q in Priorities"):format(value))
	end
})