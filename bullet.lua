Bullet = Actor:extend()

function Bullet:new(player)
	self.super:new(self, Vec2(player.pos.x, player.pos.y), "laser.png")
end