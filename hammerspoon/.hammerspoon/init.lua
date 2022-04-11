-- https://www.hammerspoon.org/

-- 使用【Option+1】在不同屏幕之间移动鼠标
hs.hotkey.bind({'option'}, '1', function()
    local screen = hs.mouse.getCurrentScreen()
    local nextScreen = screen:next()
    local rect = nextScreen:fullFrame()
    local center = hs.geometry.rectMidPoint(rect)
    hs.mouse.absolutePosition(center)
end)
  
-- 使用【Option+2】在不同屏幕之间移动窗口
hs.hotkey.bind({'option'}, '2', function()
    -- get the focused window
    local win = hs.window.focusedWindow()
    -- get the screen where the focused window is displayed, a.k.a. current screen
    local screen = win:screen()
    -- compute the unitRect of the focused window relative to the current screen
    -- and move the window to the next screen setting the same unitRect 
    win:move(win:frame():toUnitRect(screen:frame()), screen:next(), true, 0)
end)