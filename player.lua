Player = Actor:extend()

function Player:new()
	self.super:new(self, Vec2(300, 200), "player.png")
	self.drag = 0.97
end