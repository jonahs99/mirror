io.stdout:setvbuf("no")

function love.load()
    Object = require "classic"
    require "player"
    player = Player()
    love.graphics.setBackgroundColor(20,20,20)
end

function love.update(dt)

end

function love.draw()
	player:draw()
end