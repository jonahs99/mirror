Actor = Object:extend()

function Actor:new(self, pos, imagePath)
	self.image = love.graphics.newImage(imagePath)
	self.pos = pos
	self.rot = 0
	self.vel = Vec2(0.1, 0.2)
	self.drag = 0.95

	-- This makes the scaling pixel-arty
	self.image:setFilter('nearest', 'nearest')
end

function Actor:update()
	self.pos = self.pos:plus(self.vel)
	self.vel = self.vel:times(self.drag)
	self.rot = math.atan2(self.vel.y, self.vel.x)
end

function Actor:draw()
	love.graphics.push()
	love.graphics.translate(self.pos.x, self.pos.y)
	love.graphics.rotate(self.rot + math.pi / 2)
	love.graphics.scale(4, 4)
	love.graphics.draw(self.image, -self.image:getWidth() / 2, -self.image:getHeight() / 2)
	love.graphics.pop()
end