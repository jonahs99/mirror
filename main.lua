io.stdout:setvbuf("no")

function love.load()
    Object = require "classic"

    require "vec2"
    require "actor"
    require "player"
    require "bullet"

    player = Player()

    clicking = false
    clickStart = Vec2(0,0)
    clickEnd = Vec2(0,0)

    bullets = {}

    love.graphics.setBackgroundColor(50,50,50)
    love.window.setMode(1136, 640, {msaa=4})
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
        love.graphics.line(clickStart.x,clickStart.y,clickEnd.x,clickEnd.y)
    end
	for i=1,#bullets do
		bullets[i]:draw()
	end

end

function shoot()
    if love.mouse.isDown(1) then
        if not clicking then
            -- Just clicked the mouse button
            clickStart.x = love.mouse.getX()
            clickStart.y = love.mouse.getY()
        end
        clicking = true
        clickEnd.x = love.mouse.getX()
        clickEnd.y = love.mouse.getY()
    else
        if clicking then
            -- Just lifted the mouse button
            clickEnd.x = love.mouse.getX()
            clickEnd.y = love.mouse.getY()

            local bullet = Bullet(player)
            local vel = clickEnd:minus(clickStart)

            if not (vel:mag() == 0) then
                vel = vel:times(2.0 / vel:mag())
                bullet.vel = vel
                bullets[#bullets+1] = bullet

                player.vel = player.vel:plus(vel:times(-0.5))
            end
        end
        clicking = false
    end
end