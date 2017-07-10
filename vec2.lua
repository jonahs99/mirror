Vec2 = Object:extend()

function Vec2:new(x, y)
	self.x = x
	self.y = y
end

function Vec2:mag()
	return math.sqrt(math.pow(self.x, 2) + math.pow(self.y, 2))
end

function Vec2:plus(v)
	return Vec2(self.x + v.x, self.y + v.y)
end

function Vec2:minus(v)
	return Vec2(self.x - v.x, self.y - v.y)
end

function Vec2:times(a)
	return Vec2(self.x * a, self.y * a)
end