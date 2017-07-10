Bullet = Object:extend()
function Bullet:new()

	self.image = love.graphics.newImage("ping.png")
	self.pos = vec2(300,300)
	self.vel = vec2(2,0)
end

function Bullet:draw()

	love.graphics.draw(self.image, self.x, self.y)

end	