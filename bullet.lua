Bullet = Actor:extend()

function Bullet:new(player)
	self.super:new(Vec2(100, 100), "laser.png")

	self.vel = Vec2(2, 0)
end