io.stdout:setvbuf("no")

function love.load()
    Object = require "classic"

    require "vec2"
    require "actor"
    require "player"
    require "bullet"

    player = Player()

    bullets = {}

    love.graphics.setBackgroundColor(50,50,50)
end

function love.update(dt)
	for i = 1, #bullets do
        bullets[i]:update()
    end
    shoot()
end

function love.draw()
	player:draw()

	for i=1,#bullets do
		bullets[i]:draw()
	end

end

function shoot()
    if love.mouse.isDown(1) then
        bullets[#bullets+1] = Bullet(player)
    end
end