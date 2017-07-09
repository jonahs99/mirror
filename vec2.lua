Vec2 = Object:extend()

function Vec2:new(x, y)
	self.x = x
	self.y = y
end

function Vec2:plus(v)
	return Vec2(x + v.x, y + v.y)
end

function Vec2:minus(v)
	return Vec2(x - v.x, y - v.y)
end

