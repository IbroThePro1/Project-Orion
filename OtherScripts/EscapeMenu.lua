local EscapeMenu = {}
function EscapeMenu.load()
EscapeMenu.Active = false
EscapeMenu.Dimension = {}
EscapeMenu.Dimension.width = love.graphics.getWidth() / 2
EscapeMenu.Dimension.height = love.graphics.getHeight() /2
EscapeMenu.Dimension.x = love.graphics.getWidth() / 2 
EscapeMenu.Dimension.y = love.graphics.getHeight() /2 

end

function EscapeMenu.keypressed(key)
    if key == 'escape' then
        EscapeMenu.Active = not EscapeMenu.Active
    end
end

function EscapeMenu.draw()
    if EscapeMenu.Active == true and MainMenu.Active == false then
        love.graphics.setColor(0.42,0.42,0.42,0.4)
        love.graphics.rectangle('fill',
            EscapeMenu.Dimension.x - EscapeMenu.Dimension.width /2,
            EscapeMenu.Dimension.y - EscapeMenu.Dimension.height /2,
            EscapeMenu.Dimension.width,
            EscapeMenu.Dimension.height,
            70
         )
        love.graphics.setColor(1,1,1,1)
         love.graphics.setFont(GameFont)
        love.graphics.print(
           'Quit Game',
            EscapeMenu.Dimension.x - EscapeMenu.Dimension.width /4 ,
            EscapeMenu.Dimension.y + 100,
            nil,
            3,
            3
        )

    end
end

function EscapeMenu.mousepressed(x,y,mouseButton)

end
return EscapeMenu