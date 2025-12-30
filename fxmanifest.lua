fx_version 'cerulean'
game 'gta5'

author 'Lathios Store'
description 'Invoice System'
lua54 'yes'

ui_page 'html/index.html'

files {
  'html/index.html',
  'html/css/*.css',
  'html/js/*.js'
}

shared_scripts {
  'shared/config.lua',
  'shared/language.lua',
  'shared/business.lua',
  'shared/framework/init.lua'
}

client_scripts {
  'client/*.lua'
}

server_scripts {
  '@oxmysql/lib/MySQL.lua',
  'server/*.lua'
}

escrow_ignore {
  'shared/config.lua',
  'shared/business.lua',
  'shared/language.lua'
}

dependencies {
  'oxmysql',
  'ox_lib'
}