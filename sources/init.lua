print('init.lua ver 1.2')
wifi.setmode(wifi.SOFTAP)
config = {}
config.ssid = 'Wk.WiFi'
config.pwd = '123456'
wifi.ap.config(cfg)

print('MAC: ',wifi.sta.getmac())
print('chip: ',node.chipid())
print('heap: ',node.heap())
