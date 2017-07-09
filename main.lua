function love.load()
    Object = require "classic"
    require "vec2"
    require "player"
    player = Player()
end

function love.update(dt)

end

function love.draw()
	player:draw()
end