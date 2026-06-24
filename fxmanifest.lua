fx_version 'cerulean'
game 'gta5'

author 'RgX'
description 'RGX COUNTDOWN SCRIPT'
version '2.0'

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/sound/*.mp3'
}

client_scripts {
    'client/countdown.lua'
}

server_scripts {
    'server/countdown.lua'
}

exports {
    'StartCountdown',
    'StopCountdown'
}

server_exports {
    'StartCountdown',
    'StopCountdown'
}
