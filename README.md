# Audacity-Mind-Machine-Suite
Plugins for creating Light and Sound Meditation sessions using Audacity

The Audacity Mind Machine Suite is a set of plugins, effect chains, and presets to create meditation sessions for light and sound mind machines.

It provides the ability to create light control tracks for LED glasses. The 2 primary technologies, AudioStrobe and SpectraStrobe, are supported for controlling LEDs with sound tracks.

The first is AudioStrobe which supports 2 colors with one audio signal at 19.2khz.

The second is SpectraStrobe which controls all RGB color channels and also requires a reference track to identify the SS stream. SpectraStrobe's tone channels are 18.7khz for Red, 19.2khz for Green (same as AudioStrobe) and 19.7khz for Blue. The reference track is an 18.2khz sine wave tone that is modulated by a pulse wave at 10hz per channel with the second channel being 180 degrees out of phase. The easiest way to program the reference channel is to use an autopan set to a square wave at 20hz.

In addition, several types of audio entrainment methods are supported. These include binaural beats, monaural beats, and isochronic pulses using either audio tracks, tones or noise.

---

Change Log
May 11, 2015 First set of commits with comprehensive plugin set

---

Curated and programmed by Scott Hendrickson of MindPlace Inc, makers of the Proteus, Procyon, and Kasina mind machines. Includes GPLv2 plugins programmed by Steve Daulton and David Sky with other various code snippets from the Audacity forums. All rights and credit are retained by the original authors.
