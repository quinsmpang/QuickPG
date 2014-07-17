
local {0} = class("{0}", function()
    return TouchGroup:create()
end)

function {0}:ctor()
    self._isShowing = false

    self._widget = GUIReader:shareReader():widgetFromJsonFile("{0}.json")
    self:addWidget(self.widget)
    
    -- QXGEN_TOP_CONTROL_DEFINE

    -- QxGEN_CUSTOM_CLASS_INIT_BEGIN
    -- QxGEN_CUSTOM_CLASS_INIT_END
end
