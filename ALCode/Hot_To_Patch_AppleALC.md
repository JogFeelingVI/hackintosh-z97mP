#### Hot To Patch AppleALC

```shell
cat ./codec#0
```

```text
Codec: Realtek ALC887-VD
Address: 0
AFG Function Id: 0x1 (unsol 1)
Vendor Id: 0x10ec0887
Subsystem Id: 0x10438630
Revision Id: 0x100302
No Modem Function Group found
```

###### Vendor Id: 0x10EC0887 to decimal

```shell
echo 'ibase=16;obase=A;10EC0887' | bc
283904135
```

##### Copy AppleALC.kext/info.plist to ~/Desktop

> 1. Use ProperTree Open AND Find 283904135