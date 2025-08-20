# Bluetooth set up notes

For my keyboard, I want it to be discoverable on startup, so:

``` conf
/etc/bluetooth/main.conf

[General]
DiscoverableTimeout = 0
```

The  MAC address for the keyboard is EC:19:78:AB:3E:4A, so I can pair it with:

``` bash
bluetoothctl,  pair EC:19:78:AB:3E:4A
```

This is a pairing script:

``` bash
power on 
# Turns Bluetooth on
scan on 
# Puts the device into discovery mode
agent on 
# Turns on the Bluetooth agent
pair EC:19:78:AB:3E:4A 
# Pairs the device with the specified MAC address
devices Paired 
# Lists paired devices
```
