#### Q:ASUS z97m-plus 在升级Big Sur 的过程中会陷入无限重启

> ##### Problem
> Big Sur installer fails after about 20% progress in the Apple logo, fails shortly after disk#: device is write locked ending with apfs_vfsop_unmount. I imagine a new install the same problem occurs because after the first state information on the drive and whatever is stored in the native nvram and the installer can't access something that is not there because it wasn't saved in the first place.

> ##### Background
> Reddit post here starts to question it as Haswell in general but seemed more an issue with ASUS Z97 boards. A comment in that thread led me to Vit9696 saying fix your NVRAM. All other paths led to devs are aware and it's an macOS bug or giving up and transplanting the installation by using another machine. Well I ain't having none of that, Vit9696 said fix nvram, so I fixed it.

###### 详细阅读 参考资料[1] 切放弃升级至 [Big Sur]

##### Fix Z97 BIOS 
- 2014/10/17 will have added the whitelist.
- Download UEFITool 0.26.0 as the latest versions won't let you rebuild/replace.[2]
- Search ’nvramsmi‘
- 2202Nvram.ffs 提取自2202CAP
- 2903RE.CAP替换后的CAP文件
-----
##### 参考资料
- [参考阅读 1](https://www.reddit.com/r/hackintosh/comments/jw7qf1/haswell_asus_z97_big_sur_update_and_installation/)
- [Download UEFITOOLS 2](https://github.com/LongSoft/UEFITool)