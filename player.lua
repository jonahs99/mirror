Player = Actor:extend()

function Player:new()
	self.super:new(self, Vec2(300, 200), "player.png")
end