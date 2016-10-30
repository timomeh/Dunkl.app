<p align="center">
  <img alt="Dunkl.app" src="https://raw.githubusercontent.com/timomeh/Dunkl.app/master/.github/logo.png" width="450">
</p>

> Turn on dark mode in macOS after sunset

## Background

I use [f.lux](https://justgetflux.com), which has an option to switch to dark mode after sunset. Unfortunately, this option is gone in macOS Sierra. So I created this. It's nothing special, just a bit of AppleScript bundled in an Application. It comes bundled with [solunar](https://github.com/kevinboone/solunar_cmdline), which calculates the sunset and sunrise.

Under the hood, Dunkl.app just checks every 15 minutes if it should switch to dark mode. I'm aware that this is not the perfect way to do it. My intention is just to have an interim solution until f.lux provides this functionality under macOS Sierra.

**Currently Dunkl.app is hard-coded with sunrise/sunset from Berlin, Germany.** If you want to use it but live in some other part of the world, just open an Issue and I'll throw it in.

## Installation

1. [Download Dunkl.app](https://github.com/timomeh/Dunkl.app/releases/download/v1.0/Dunkl.app.zip) and save it to your `/Applications/`, if you wish.
2. Launch at system startup.
  1. Open "Users & Groups" located in System Preferences.
  2. Click on "Login Items".
  3. Add Dunkl.app.

## Usage

Dunkl.app runs completely in background. No dock icon, no menu bar icon. If you wish to close it, you have to open Activity Monitor, search for Dunkl.app and quit it.
