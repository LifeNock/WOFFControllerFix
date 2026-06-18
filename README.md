# WOFF Controller Prompts

World of Final Fantasy (Steam / Maxima) always draws keyboard key prompts on the
PC version, even when you're playing with a controller. The controller glyphs are
already in the game, the menu just never points to them. This swaps them in.

It replaces the keyboard icon font with the controller icon font that ships with
the game, so every on-screen button prompt shows gamepad glyphs instead of keys.
No exe edits, no DLLs, just the font assets.

## Install

1. Download and unzip.
2. Copy `install.bat` and `uninstall.bat` into your game folder, the one with
   `WOFF.exe`. On Steam that's usually:
   `steamapps\common\WORLD OF FINAL FANTASY`
3. Run `install.bat`.
4. Start the game.

It makes a copy of the original files in `_padprompt_backup` before touching
anything.

## Uninstall

Run `uninstall.bat` from the same folder. If you deleted the backup, use Steam ->
Properties -> Installed Files -> Verify integrity of game files to get the
originals back.

## Notes

- Covers EFIGS (English, French, Italian, German, Spanish) plus the JP, CH and KO
  text fonts.
- Steam file verification will overwrite this, just run `install.bat` again after.
- The keyboard font carries a few extra key glyphs the controller font doesn't.
  Anything that has no gamepad equivalent falls back to blank, but in normal play
  you won't run into those.
- Tested on the Maxima build. Doesn't conflict with WOFFFix.

Made because I wanted controller buttons on the Steam Deck and got tired of
looking at keyboard keys.
