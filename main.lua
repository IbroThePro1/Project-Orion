function love.load()
-- other scripts
inputs = require('OtherScripts/inputs')
-- load other scripts   
inputs.load()
RightInput = false or inputs.right()
lovelytoasts = require('OtherScripts/LovelyToasts.lua')
LeftInput = false or 
end

function love.update(dt)
    inputs.right()
    inputs.left()
    inputs.space()
    inputs.Fkey()
end

function love.draw()
character.draw()

end