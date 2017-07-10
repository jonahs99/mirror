Player = Object:extend()

function Player:new()
	self.image = love.graphics.newImage("player.png")
	self.pos = Vec2(300, 200)

	-- This makes the scaling pixel-arty
	self.image:setFilter('nearest', 'nearest')
end

function Player:draw()
	love.graphics.push()
	love.graphics.translate(self.pos.x, self.pos.y)
	love.graphics.scale(4, 4)
	love.graphics.draw(self.image, 0, 0)
	love.graphics.pop()
end
