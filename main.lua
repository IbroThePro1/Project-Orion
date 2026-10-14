-- useful shi: love.graphics.rectangle(mode, x, y, width, height, rx, ry, segments)


function love.load()
-- other scripts


-- load other scripts   
character = require('OtherScripts/character')
lovelyToasts = require('OtherScripts/Library/LovelyToasts')
MainMenu = require('OtherScripts/MainMenu')

character.load()
MainMenu.load()

end

function love.update(dt)
    character.update(dt)
    lovelyToasts.update(dt)

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