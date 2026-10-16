local Save = {}
local json = require('OtherScripts/Library/json')

function Save.Save(table, SaveFile)
    local enc = json.ecode(table)
    love.filesystem.write("SaveFile"..SaveFile..".json", enc)
end

function Save.Load(SaveFile)
    local contents, err = love.filesystem.read("SaveFile"..SaveFile..".json")
    local current = 'Failed to load SaveFile number'..SaveFile..'Please contact developer for this issue or report the error'
    if contents == nil then
        print('Failed to load SaveFile'..tostring(err))
        lovelyToasts.show(current, 10)
        return nil
    end
    return json.decode(contents)
end
return Save