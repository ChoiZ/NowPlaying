NowPlaying
==========

PhoneGap / Cordova iOS plugin that allows you to add metadatas in NowPlayingInfoCenter (MPNowPlayingInfoCenter) to your app

Require
-------

- PhoneGap / Cordova 3.x

Installation
------------

Add the plugin much like any other:

1. Add MediaPlayer.framework in your project.
2. Add the NowPlaying.h and NowPlaying.m classes to your Plugins folder in Xcode
3. Add the NowPlaying.js file to your www folder
4. Add the NowPlaying.js to your html file. eg: `<script type="text/javascript" charset="utf-8" src="NowPlaying.js"></script>`
5. Add the plugin to your config.xml: `<plugin name="NowPlaying" value="NowPlaying" />` (or if you are running an older version of PhoneGap / Cordova, Cordova.plist under Plugins (key: "NowPlaying" value: "NowPlaying"))

### Example
```javascript
function onDeviceReady() {
  var nowPlaying = window.plugins.nowPlaying;
  artist = "Daft Punk";
  title = "One More Time";
  album = "Discovery";
  nowPlaying.updateMetas(artist,title,station);
}
```

Special thanks to @gauthierm

## License

The MIT License

Copyright (c) 2013 François LASSERRE (http://github.com/choiz)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
