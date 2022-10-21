-- https://www.hammerspoon.org/

-- 使用【Opt+CMD+1】在不同屏幕之间移动鼠标
hs.hotkey.bind({'option', 'cmd'}, '1', function()
    local screen = hs.mouse.getCurrentScreen()
    local nextScreen = screen:next()
    local rect = nextScreen:fullFrame()
    local center = hs.geometry.rectMidPoint(rect)
    hs.mouse.absolutePosition(center)
end)
  
-- 使用【Opt+CMD+2】在不同屏幕之间移动窗口
hs.hotkey.bind({'option', 'cmd'}, '2', function()
    -- get the focused window
    local win = hs.window.focusedWindow()
    -- get the screen where the focused window is displayed, a.k.a. current screen
    local screen = win:screen()
    -- compute the unitRect of the focused window relative to the current screen
    -- and move the window to the next screen setting the same unitRect 
    win:move(win:frame():toUnitRect(screen:frame()), screen:next(), true, 0)
end)

-- 左上
hs.hotkey.bind({'control', 'option'}, 'q', function()
    local screen = hs.mouse.getCurrentScreen()
    local rect = screen:fullFrame()
    local x = rect.w * 0.2
    local y = rect.h * 0.3
    local ptr = hs.geometry.point(x, y)
    local center = rect:move(ptr)
    hs.mouse.absolutePosition(center)
end)

-- 右下
hs.hotkey.bind({'control', 'option'}, 's', function()
    local screen = hs.mouse.getCurrentScreen()
    local rect = screen:fullFrame()
    local x = rect.w * 0.8
    local y = rect.h * 0.7
    local ptr = hs.geometry.point(x, y)
    local center = rect:move(ptr)
    hs.mouse.absolutePosition(center)
end)

-- 右上
hs.hotkey.bind({'control', 'option'}, 'w', function()
    local screen = hs.mouse.getCurrentScreen()
    local rect = screen:fullFrame()
    local x = rect.w * 0.8
    local y = rect.h * 0.3
    local ptr = hs.geometry.point(x, y)
    local center = rect:move(ptr)
    hs.mouse.absolutePosition(center)
end)

-- 左下
hs.hotkey.bind({'control', 'option'}, 'a', function()
    local screen = hs.mouse.getCurrentScreen()
    local rect = screen:fullFrame()
    local x = rect.w * 0.2
    local y = rect.h * 0.7
    local ptr = hs.geometry.point(x, y)
    local center = rect:move(ptr)
    hs.mouse.absolutePosition(center)
end)