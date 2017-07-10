Actor = Object:extend()

function Actor:new(pos, imagePath)
	self.image = love.graphics.newImage(imagePath)
	self.pos = pos
	self.vel = Vec2(0, 0)

	-- This makes the scaling pixel-arty
	self.image:setFilter('nearest', 'nearest')
end

function Actor:update()
	self.pos = self.pos:plus(self.vel)
end

function Actor:draw()
	love.graphics.push()
	love.graphics.translate(self.pos.x, self.pos.y)
	love.graphics.scale(4, 4)
	love.graphics.draw(self.image, -self.image:getWidth() / 2, -self.image:getHeight() / 2)
	love.graphics.pop()
end