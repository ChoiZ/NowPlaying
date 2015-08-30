//
// NowPlaying.js
// Now Playing Cordova Plugin
//
// Created by François LASSERRE on 30/08/15.
// Copyright 2015 François LASSERRE. All rights reserved.
// MIT Licensed
//
var exec = require('cordova/exec');

function NowPlaying(){};

NowPlaying.prototype.updateMetas = function(artist, title, album, cover, success, error) {
    exec(success, error, "NowPlaying", "updateMetas", [artist, title, album, cover]);
};

module.exports = new NowPlaying();
