

function love.load()
    Object = require "classic"
    require  "player"
    player = Player()
end

function love.update(dt)

end

function love.draw()
player:draw()
end