function love.load()
-- other scripts

-- load other scripts   

lovelyToasts = require('OtherScripts/Library/LovelyToasts')

end

function love.update(dt)
   
    lovelyToasts.update(dt)
end
function love.keypressed(key)
    if key == 'p' then
        lovelyToasts.show('testing',5)
    end
end

function love.draw()
--character.draw()
lovelyToasts.draw()
end