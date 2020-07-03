fx_version 'adamant'
games { 'gta5' }


ui_page 'ui/index.html'

files {
    'ui/index.html',
    'ui/libraries/axios.min.js',
    'ui/libraries/vue.min.js',
    'ui/libraries/vuetify.css',
    'ui/libraries/vuetify.js',
    'ui/style.css',
    'ui/script.js'
}

client_scripts {
    'config.lua',
    'client.lua',
}

server_scripts {
    'config.lua',
    'server.lua'
}