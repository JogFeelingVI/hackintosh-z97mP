DefinitionBlock ("", "SSDT", 2, "INTEL", "GUPC", 0x00000000)
{
    External (_SB.PCI0.XHC.RHUB, DeviceObj)
    External (_SB.PCI0.XHC.RHUB.XUPC, MethodObj)
    
    Scope (_SB.PCI0.XHC.RHUB)
    {
        Name (USBP, Zero)
        Method (GUPC, 1, Serialized)
        {
            If (_OSI ("Darwin"))
            {
                Name (PCKG, Package (0x04)
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                USBP += One
                If (((USBP==0x02) || (Arg0 == Zero)))
                {
                    PCKG [Zero] = Zero
                }
				
				If ((((USBP == 0x01) || (USBP == 0x10))))
                {
                    PCKG [One] = 0x03
                }
				
				If ((((USBP == 0x07) || (USBP == 0x08))))
                {
                    PCKG [One] = 0x00
                }

                If ((((USBP == 0x0C))))
                {
                    PCKG [One] = 0xFF
                }

                Return (PCKG) 
            }
            Else
            {
                Return (XUPC(Arg0))
            }
        }
    }
}