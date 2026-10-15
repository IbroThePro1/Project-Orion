-- useful shi: love.graphics.rectangle(mode, x, y, width, height, rx, ry, segments)


function love.load()
-- variable stuff
RandomNumber = love.math.random(1, 100)
-- load other scripts   
character = require('OtherScripts/character')
lovelyToasts = require('OtherScripts/Library/LovelyToasts')
MainMenu = require('OtherScripts/MainMenu')
Timer = require('OtherScripts/Library/timer')
-- Use other scripts
character.load()
MainMenu.load()

end

function love.update(dt)
    character.update(dt)
    lovelyToasts.update(dt)
    Timer.update(dt)
end
function love.keypressed(key)
    character.keypressed(key)
    MainMenu.keypressed(key)
    if key == 'p' then
        lovelyToasts.show('testing',5)
    end
end

function love.draw()
character.draw()
lovelyToasts.draw()
end