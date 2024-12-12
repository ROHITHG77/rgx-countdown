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
    '@es_extended/locale.lua',
    'client/countdown.lua'
}

server_scripts {
    '@es_extended/locale.lua',
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