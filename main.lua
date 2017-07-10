io.stdout:setvbuf("no")

function love.load()
    Object = require "classic"

    require "vec2"
    require "player"
    require "bullet"

    player = Player()

    bullets = {}

    for i=1,2 do
    	bullets[i] = Bullet()
    	bullets[i].x = math.random(0, 400)
    	bullets[i].y = math.random(0, 300)
    end

    love.graphics.setBackgroundColor(50,50,50)
end

function love.update(dt)
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