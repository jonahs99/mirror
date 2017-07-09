Player = Object:extend()

function Player:new()
	self.image = love.graphics.newImage("player.png")
	self.x = 200
	self.y = 200
end

function Player:draw()
	love.graphics.draw(self.image, self.x, self.y)
end	