# Replace zRAM with Swapfile

Disable zRAM on boot and use a swapfile instead.

## What?

This Magisk "module" (actually just a couple of shell commands to run on boot) is not generalized; i.e. It Works On My Machine. Please do not flash without understanding what those commands do and/or making modifications if necessary first.

## Hints

- `mkswap`
- `cat /proc/meminfo | grep ^Swap`
- `cat /proc/swaps`
- [RAM Truth](https://play.google.com/store/apps/details?id=sa.ramtruth) (not affiliated; it's just a neat app that I've found)

## FAQs (Fully Anticipated Questions)

- **Q: Why?**  
  A: I'm poor.

- **Q: Swap priority?**  
  A: Don't bother unless you want to use multiple swaps.

- **Q: Why `post-fs-data.sh` and not `service.sh`?**  
  A: Because it's taking significantly longer for me to disable zRAM once Zygote is up. I haven't bothered to find out why.

- **Q: Any way to try this without installing?**  
  A: ADB hint: you can `stop`, do your thing, then `start` again. This will soft-reboot the device.

- **Q: This "module" sucks and I want something better.**  
  A: Not a question, but see [Swap Torpedo by EarlyMon @ XDA](https://forum.xda-developers.com/t/module-swap-torpedo-run-faster-and-more-reliably.3766883/) or [zRAM Swap Manager by VR-25 @ GitHub](https://github.com/VR-25/zram-swap-manager) for a start.

- **Q: Why is this README longer than the code itself?**  
  A: I can't see why not.

## References

- [Magisk Developer Guides](https://topjohnwu.github.io/Magisk/guides.html)
