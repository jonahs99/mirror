Bullet = Object:extend()
function Bullet:new()

	self.image = love.graphics.newImage("ping.png")
	self.pos = Vec2(300,300)
	self.vel = Vec2(2,0)

end

function Bullet:draw()

	love.graphics.draw(self.image, self.pos.x, self.pos.y, 0, 0.4)

end