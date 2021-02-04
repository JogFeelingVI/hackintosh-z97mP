## Asus z97m-plus dsdt fix
### hackintosh OpenCore 0.54

1. iasl -da -dl -fe refs.txt DSDT.aml
2. Refs.txt 

### dsdt repair project

1. PARSREOP_ZERO
2. Insert DTGP
3. Remove _DSM
4. Switch (ToInteger (arg0))
5. Method local is set but never used (local0) -> Delete Store (TEMP, Local0)
6. Name (_HID, "INTL9C60") // _HID: Hardware ID / Missing dependency
7. Return (Zero) 
8. EHC1 -> EH01 EHC2 -> EH02
9. Add MCHC LPC 9s Fix

#### 0 Error 0 Warning
#### dsdt untested