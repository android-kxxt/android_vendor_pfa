# Sepolicy

Sepolicy designed for Pacman for Android(PFA).

Goal: 

- Allow PFA to do anything while Android selinux is enforcing.
- Restrict other apps access to PFA.

Non Goal:

- Make packages in PFA selinux aware.

**Warning**: These policies are not carefully written and only serve as an experimentation.

Usage: 

Clone this repo into the sepolicy dir of a device tree(`device/<manufacturer>/<device codename>/sepolicy`).

Add it to `BoardConfig.mk`:

```makefile
BOARD_VENDOR_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy/pacman-for-android
SELINUX_IGNORE_NEVERALLOWS := true
```

For now, I have to use `SELINUX_IGNORE_NEVERALLOWS` to make it work.
I don't know too much about those neverallows rules.
Feel free to open a PR if you know how to fix it.