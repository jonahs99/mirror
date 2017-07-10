Bullet = Object:extend()
function Bullet:new()

	self.image = love.graphics.newImage("ping.png")
	self.x = 200
	self.y = 200

end

function Bullet:draw()

	love.graphics.draw(self.image, self.x, self.y)

end	