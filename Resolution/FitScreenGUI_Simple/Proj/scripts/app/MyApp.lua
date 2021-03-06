
require("config")
require("framework.init")

local MyApp = class("MyApp", cc.mvc.AppBase)

function MyApp:ctor()
    MyApp.super.ctor(self)
end

function MyApp:run()
    -- 计算安全区域
    display.safeWidth = CONFIG_SCREEN_WIDTH
    display.safeHeight = CONFIG_SCREEN_HEIGHT


    display.safeBottom = 0
    display.safeTop = display.height
    display.safeLeft = (CONFIG_SCREEN_WIDTH - 960) / 2
    display.safeRight =  CONFIG_SCREEN_WIDTH - (CONFIG_SCREEN_WIDTH - 960) / 2

    print(display.safeLeft)
    print(display.safeRight)

    CCFileUtils:sharedFileUtils():addSearchPath("res/")
    self:enterScene("MainScene")
end

return MyApp
