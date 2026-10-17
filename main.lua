-- useful shi: love.graphics.rectangle(mode, x, y, width, height, rx, ry, segments)


function love.load()
-- misc variables
love.graphics.setDefaultFilter("nearest", "nearest")
RandomNumber = love.math.random(1, 100)
NotificationDing = love.audio.newSource('Assets/Other/Sounds/NotificationSound.mp3','static')
GameFont = love.graphics.newFont('Assets/Other/Pixel.ttf')
CurrentSaveFile = 1
--save management stuff
SaveTable = {}
SaveTable.character.x = character.x
SaveTable.character.y = character.y
SaveTable.character.health = character.health
SaveTable = Save.Load(SaveFile)
-- load other scripts   
character = require('OtherScripts/character')
lovelyToasts = require('OtherScripts/Library/LovelyToasts')
MainMenu = require('OtherScripts/MainMenu')
Timer = require('OtherScripts/Library/timer')
EscapeMenu = require('OtherScripts/EscapeMenu')
-- Use other scripts
character.load()
MainMenu.load()
EscapeMenu.load()
end

function love.update(dt)
    character.update(dt)
    lovelyToasts.update(dt)
    Timer.update(dt)
end

function love.quit()
    local SaveFile = CurrentSaveFile
    Save.Load(SaveFile)
end
function love.keypressed(key)
    character.keypressed(key)
    MainMenu.keypressed(key)
    EscapeMenu.keypressed(key)
    if key == 'p' then
       lovelyToasts.show('testing',5)
    end
end

function love.mousepressed(x, y, mouseButton)
    EscapeMenu.mousepressed(x, y, mouseButton)
end

function love.draw()
    character.draw()
    lovelyToasts.draw()
    EscapeMenu.draw()
end