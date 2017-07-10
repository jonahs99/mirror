Bullet = Actor:extend()

function Bullet:new(player)
	self.super:new(self, Vec2(player.pos.x, player.pos.y), "laser.png")

	self.vel = Vec2(2, 0)
end