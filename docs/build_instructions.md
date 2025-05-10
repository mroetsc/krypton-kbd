# Build instructions

## BoM

### Parts to buy

| Name | Quantity | Suggested Seller / Where I got it |
|------|----------|-----------------------------------|
| PCB* | 1 per side | [jlcbcb.com](https://jlcpcb.com/)  |
| nice!nano | 2 | [splitkb.com](https://splitkb.com/products/nice-nano?variant=39408154116173) |
| MillMax Low Profile Sockets | 2 | [splitkb.com](https://splitkb.com/products/mill-max-low-profile-sockets?variant=31945995845709) |
| Wireless Controller Expansion Bundle | 1 | [splitkb.com](https://splitkb.com/products/wireless-controller-expansion-bundle?_pos=2&_sid=110e7f3c6&_ss=r) |
| Kalih Hotswap Sockets (MX) | 2 | [splitkb.com](https://splitkb.com/products/kailh-hotswap-sockets?_pos=2&_sid=0bcba2286&_ss=r) |
| SMD Diodes | 1 | [splitkb.com](https://splitkb.com/products/smd-diodes?variant=42283984027907) |
| EC11 Rotary Encoder | 2 | [keycapsss.com](https://keycapsss.com/Rotary-Encoder-with-switch-EC11/KC10028-FS) |
| Reset Switch EVQPUA02K | 2 | [mouser.de](https://www.mouser.de/ProductDetail/Panasonic/EVQ-PUA02K?qs=whhzBCqEXCvFsgipcL1tig%3D%3D) |
| Battery | 2 | - |
| M2x5 Screws | 1 | [splitkb.com](https://splitkb.com/products/m2-screws?variant=42396986999043) |
| M2x6 Brass Spacers | 1 | [splitkb.com](https://splitkb.com/products/brass-m2-spacers?variant=42396969140483) |
| Rubber Feet Bumpons | 1 | [keycapsss.com](https://keycapsss.com/Rubber-Feet-Bumpons/KC10108-15x2-BK) |
| Encoder Knobs (optional) | 2 | - |
\* The gerber files can be found [here](https://github.com/mroetsc/krypton-kbd/blob/main/pcb/left/gerber/left-gerber.zip) and [here](https://github.com/mroetsc/krypton-kbd/blob/main/pcb/right/gerber/right-gerber.zip) (left and right).

### Parts to print
You can choose between an open case and a closed case. The open case does not have walls, as seen on the image in the Readme.

| Name | Quantity | File path |
|------|----------|-----------|
| Switchplate Left | 1 | [Link](https://github.com/mroetsc/krypton-kbd/blob/main/case/exports/switchplate-left.stl) |
| Switchplate Right | 1 | mirror in slicer |
| Case Left | 1 | [Open](https://github.com/mroetsc/krypton-kbd/blob/main/case/exports/open_case-left.step) OR [Closed](https://github.com/mroetsc/krypton-kbd/blob/main/case/exports/closed_case-left.step) |
| Case Right | 1 | mirror in slicer |

## Assembly
You will need some soldering skills to complete the assemply. Take your time, especially for the SMD components.
Because the overall assemply of the case and the board is inspired by the [splitkb Aurora Lily58](https://splitkb.com/products/aurora-lily58), the build guide is similiar. Each step has a short description here and a link to the relevant splitkb docs page. See this page for good images and a detailed description.

### Diodes
Start by putting some solder on one side of the diode pads. Heat the solder again and carefully push the diode in. Note the correct orientation. Then add solder on the other side. Don't forget the diode on the encoder.
> [splitkb page](https://docs.splitkb.com/product-guides/aurora-series/build-guide/diodes) 

### Switch sockets
Place the sockets into the holes and add solder. Make sure the sockets sits correctly on the PCB.
> [splitkb page](https://docs.splitkb.com/product-guides/aurora-series/build-guide/switch-sockets) 

### Power switches
Use the same technique as on the diodes, put some soledr on one pad and then push the switch in. It should also work to just drop the switch into location and solder then, since it has two pins for orientation.
> [splitkb page](https://docs.splitkb.com/product-guides/aurora-series/build-guide/power-switch) 

### Reset buttons
Pretty much the same as power switches. Locate the footprint on the upper side and solder it in.
No splitkb link, since they are using THT buttons.

### JST jacks
Place the jack into the corresponding place and solder one pin. Make sure it sits straight and solder the other pin. They need to go on the back side of the PCB where the markings for plus and minus are.
> [splitkb page](https://docs.splitkb.com/product-guides/aurora-series/build-guide/jst-jacks) 

### Optional: Display sockets
This only applies if you are installing nice!view display. Locate the correct spot on the upper side and solder the sockets in. Check if it sits straight after the first pin.
> [splitkb page](https://docs.splitkb.com/product-guides/aurora-series/build-guide/oled-sockets) 

### Microcontrollers
Place the sockets into the correct spot on the front and solder the pins. Check if it sits straight after the first pin. Then put the pins in slightly and push them down with the MCU. Solder everything there.
> [splitkb page](https://docs.splitkb.com/product-guides/aurora-series/build-guide/microcontrollers) 

### Batteries
Check the polarity of your battery, and if the JST plug is in the correct orientation before plugging the battery in. If you still need to install JST plugs, splitkb has some more infos. You can then later secure your battery in the bottom of the case.
> [splitkb page](https://docs.splitkb.com/product-guides/aurora-series/build-guide/batteries) 

### Rotary Encoders
Place the encoders into the PCB and solder the legs. Make sure you haven't bent any legs while installing. You can use plenty of solder for the big pins, as they are holding it in mechanically.
> [splitkb page](https://docs.splitkb.com/product-guides/aurora-series/build-guide/rotary-encoders) 

### Switches
Start by screwing the brass spacers into the switchplate from the top. Then put some switches into the opposing edges, always make sure the switches have no bent pins. You could also insert all switches into the switchplate first, this could prevent some difficulties with installing the switches after sliding the plate on the PCB.
Gently insert the switchplate into the PCB and make sure it aligns. If not done already, insert the remaining switches.
> [splitkb page](https://docs.splitkb.com/product-guides/aurora-series/build-guide/switches) 

### Case
Align the case standoffs with the brass spacers that stick through the PCB. Secure the battery in the mold in the bottom of the case and then plug it in in the correct orientation / polarity. Then screw in the remaining screws from the bottom to secure the whole assemply.

## Flashing the firmware
Plug the nice!nano into your PC. It should show up as storage device if this is the first time booting up. Power needs to be switched on for this. If it does not appear, push the reset button twice in quick succession, which will place the nice!nano into bootloader mode. This is also helpful when reflashing another firmware.
Place the firmware `.uf2` files in the directory that opens. You can get the firmware files [here](https://github.com/mroetsc/krypton-zmk-config/releases/latest/). Scroll down to the assets and download the `.uf2` files. Make sure you put the correct file on the correct side.
> [splitkb page](https://docs.splitkb.com/product-guides/nice-nano/flashing) 
