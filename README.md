# Hackintosh Z97m Plus
##### MacOSEFI opencore 0.66
----
- iMac15,1
- Intel(R) Core(TM) i7-4790K CPU @ 4.00GHz
- Asus z97m-plus 2903
- Ram 16 GB 1866 MHz DDR3
- Radeon RX 470/570 4 GB
- Nvme SSD 256Gb Lexar SSD Media Catalina
- SATA SSD 240Gb TOSHIBA-TR200 Media
- SATA HDD ST1000DM003-1ER162 Media


##### Fix log 2021-02-04
- PciRoot(0x0)/Pci(0x2,0x0) iGpu
- add NvMEfix 补丁
- del SMCSuperIO.kext SMCProcessor.kext
- ALC layout-id 0700000
- Fix Game_keyboard
- Use nvram.plist

##### Read Tutorials
- [OpenCore-Install-Guide](https://dortania.github.io/OpenCore-Install-Guide/installation/installation-process.html#booting-the-opencore-usb)
- [Xjn`s Blog](https://blog.xjn819.com/?p=543)
- [daliansky](https://blog.daliansky.net)