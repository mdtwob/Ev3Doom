# Doom on Lego Mindstorms EV3 through EV3DEV

A short script to run Doom on the EV3, because Doom runs on everything.

See a demo of this project [Here](https://youtu.be/G0kxxBskXOA)

## How to do this

### Step 1: Set up EV3DEV
 * Install [EV3DEV](https://www.ev3dev.org/docs/getting-started/]) to an SDCard
 * [Configure networking](https://www.ev3dev.org/docs/networking/) on EV3DEV
 * Connect to EV3DEV [through SSH](https://www.ev3dev.org/docs/tutorials/connecting-to-ev3dev-with-ssh/)

### Step 2: Clone this repo and install Doom
While still SSH'd into the EV3, run:
```bash
git clone https://gitlab.com/davidjhorine/ev3-doom.git
cd ev3-doom
chmod +x doom-manager.sh
./doom-manager.sh install
```

You'll be asked to provide your password during the last command. The default password for EV3DEV is "maker".

### Step 3: Run Doom
While still SSH'd into the EV3, run:
```bash
./doom-manager.sh play
```
