Player = Object:extend()

function Player:new()
	self.image = love.graphics.newImage("player.png")
<<<<<<< HEAD
	self.x = 200
	self.y = 200
end

function Player:draw()
	love.graphics.draw(self.image, self.x, self.y)
end	
=======
	self.pos = Vec2(300, 200)

end

function Player:draw()

	love.graphics.draw(self.image, self.pos.x, self.pos.y)

end
>>>>>>> 0d8e83325b0b21e735186caa81ff5eea4bf61fe1
