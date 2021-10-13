/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210331 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/feeling/Downloads/GitHub/hackintosh-z97mP/072/EFI/OC/ACPI/SSDT-EC-USBX.aml, Tue Oct 12 14:40:22 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000D2 (210)
 *     Revision         0x02
 *     Checksum         0xE9
 *     OEM ID           "ACDT"
 *     OEM Table ID     "SsdtEC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "SsdtEC", 0x00000000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)

    Scope (\_SB)
    {
        Device (USBX)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x08)
                {
                    "kUSBSleepPowerSupply", 
                    0x13EC, 
                    "kUSBSleepPortCurrentLimit", 
                    0x0834, 
                    "kUSBWakePowerSupply", 
                    0x13EC, 
                    "kUSBWakePortCurrentLimit", 
                    0x0834
                })
            }
        }
    }
}

