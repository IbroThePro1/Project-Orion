function love.load()
-- other scripts
inputs = require('OtherScripts/inputs')
-- load other scripts   
inputs.load()
RightInput = false or inputs.right()
LeftInput = false or 
end

function love.update(dt)
    inputs.right()
    inputs.left()
    inputs.space()
    inputs.Fkey()
end

function love.draw()

end