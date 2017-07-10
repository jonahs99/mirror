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
    if clicking then
        love.graphics.line(startx,starty,endx,endy)
    end
	for i=1,#bullets do
		bullets[i]:draw()
	end

end

function shoot()
    if love.mouse.isDown(1) then
        if not clicking then
            -- Just clicked the mouse button
            startx = love.mouse.getX()
            starty = love.mouse.getY()
        end
        clicking = true
        endx = love.mouse.getX()
        endy = love.mouse.getY()
    else
        if clicking then
            -- Just lifted the mouse button
            endx = love.mouse.getX()
            endy = love.mouse.getY()
            bullets[#bullets+1] = Bullet(player)
        end
        clicking = false
    end
end