io.stdout:setvbuf("no")

function love.load()
    Object = require "classic"

    require "vec2"
    require "actor"
    require "player"
    require "bullet"

    player = Player()
    clicking = false

    bullets = {}

    love.graphics.setBackgroundColor(50,50,50)
end

function love.update(dt)
    player:update()
    shoot()
	for i = 1, #bullets do
        bullets[i]:update()
    end
end

function love.draw()
	player:draw()

	for i=1,#bullets do
		bullets[i]:draw()
	end

end

function shoot()
    if love.mouse.isDown(1) then
        if !clicking then
            -- Just clicked the mouse button
            
        end
        clicking = true
    else
        if clicking then
            -- Just lifted the mouse button

        end
        clicking = false
    end
end