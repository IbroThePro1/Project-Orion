local inputs = {}

function inputs.load()


end

function inputs.right()
if love.keyboard.isDown('d')  then
    return true
else 
    return false
end

function inputs.left()
if love.keyboard.isDown('a') then
    return true
else
    return false
end

function inputs.space()
if love.keyboard.isDown('space') then
    return true
else
    return false
end

function inputs.Fkey()
if love.keyboard.isDown('f') then
    return true
else
    return false
end

return inputs