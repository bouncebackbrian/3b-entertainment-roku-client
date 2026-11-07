sub init()
    m.names = ["HOME", "LIVE TV", "GUIDE", "MOVIES", "SERIES", "SETTINGS"]
    m.descriptions = ["Welcome to 3B Entertainment.", "Live TV screen opened. Playlist connection comes next.", "Guide screen opened. EPG data comes next.", "Movies screen opened. Catalog integration comes next.", "Series screen opened. Episodes and seasons come next.", "Settings screen opened. Source setup comes next."]
    m.index = 0
    m.opened = false
    m.highlight = m.top.findNode("highlight")
    m.title = m.top.findNode("sectionTitle")
    m.body = m.top.findNode("sectionBody")
    m.top.setFocus(true)
    renderScreen()
end sub

sub renderScreen()
    m.highlight.translation = [63, 202 + (m.index * 72)]
    if m.opened then
        m.title.text = m.names[m.index]
        m.body.text = m.descriptions[m.index]
    else
        m.title.text = "HOME"
        m.body.text = "Choose a section and press OK to open it."
    end if
end sub

function onKeyEvent(key as string, press as boolean) as boolean
    if not press then return false
    if key = "down" then
        m.index = (m.index + 1) mod m.names.count()
        m.opened = false
        renderScreen()
        return true
    else if key = "up" then
        m.index = (m.index + m.names.count() - 1) mod m.names.count()
        m.opened = false
        renderScreen()
        return true
    else if key = "OK" then
        m.opened = true
        renderScreen()
        return true
    else if key = "back" then
        m.index = 0
        m.opened = false
        renderScreen()
        return true
    end if
    return false
end function
