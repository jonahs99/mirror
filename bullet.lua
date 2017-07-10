Bullet = Object:extend()
function Bullet:new(player)

	self.image = love.graphics.newImage("ping.png")
	self.pos = Vec2(player.pos.x,player.pos.y)
	self.vel = Vec2(2,0)

end

function Bullet:draw()

	love.graphics.draw(self.image, self.pos.x, self.pos.y)

end	

function Bullet:update()

	self.pos = self.pos:plus(self.vel)

end

