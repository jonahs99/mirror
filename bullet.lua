Bullet = Object:extend()

function Bullet:new(player)

	self.image = love.graphics.newImage("laser.png")
	self.pos = Vec2(player.pos.x,player.pos.y)
	self.vel = Vec2(2,0)

	-- This makes the scaling pixel-arty
	self.image:setFilter('nearest', 'nearest')
end

function Bullet:draw()
	love.graphics.push()
	love.graphics.translate(self.pos.x, self.pos.y)
	love.graphics.scale(4, 4)
	love.graphics.draw(self.image, 0, 0)
	love.graphics.pop()
end	

function Bullet:update()

	self.pos = self.pos:plus(self.vel)

end

