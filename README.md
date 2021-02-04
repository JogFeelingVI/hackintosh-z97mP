# Fixz97DSDT
#### z97m plus DSDT Fix
##### MacOSEFI opencore 0.65

###### iMac15,1
###### Intel(R) Core(TM) i7-4790K CPU @ 4.00GHz
###### Asus z97m-plus
###### Ram 16 GB 1923 MHz DDR3
###### Radeon RX 470/570 4 GB
###### Nvme SSD 256Gb Lexar SSD Media Catalina
###### SATA SSD 240Gb TOSHIBA-TR200 Media
###### SATA HDD ST1000DM003-1ER162 Media


#### Fix log 2021-02-04
- PciRoot(0x0)/Pci(0x2,0x0) iGpu
- 添加 NvMEfix 补丁
- 删除 SMCSuperIO.kext SMCProcessor.kext
- ALC layout-id 0700000
- updata opencore 0.65