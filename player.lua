Player = Actor:extend()

function Player:new()
	self.super:new(Vec2(300, 200), "player.png")
end