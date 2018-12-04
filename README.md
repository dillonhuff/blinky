# A Simple iCEstick Example Using the IceStorm Tools

To compile top.v into a bitstream:

```bash
make
```

To transfer the bitstream onto the iCEstick connect it to your computer via USB
and then do:

```bash
make burn
```

On mac that may not work the first time. If it fails do:

```bash
sudo kextunload -b com.FTDI.driver.FTDIUSBSerialDriver
```

and then retry

```bash
make burn
```