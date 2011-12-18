-- hmm...
function love.load()
    player = {
        grid_x = 256,
        grid_y = 256,
        act_x = 200,
        act_y = 200,
        speed = 10
    }
end

function love.update(dt)
    player.act_y = player.act_y - ((player.act_y - player.grid_y) * player.speed * dt)
    player.act_x = player.act_x - ((player.act_x - player.grid_x) * player.speed * dt)
end

function love.draw()
    love.graphics.rectangle("fill", player.act_x, player.act_y, 32, 32)
end

function love.keypressed(key)
    if key == "up" then
        player.grid_y = player.grid_y - 32
    elseif key == "down" then
        player.grid_y = player.grid_y + 32
    elseif key == "left" then
        player.grid_x = player.grid_x - 32
    elseif key == "right" then
        player.grid_x = player.grid_x + 32
    end
end
-- function love.draw()
--     love.graphics.print("Hello World", 400, 300)
-- end


function love.quit()
  print("Thanks for playing! Come back soon!")
end