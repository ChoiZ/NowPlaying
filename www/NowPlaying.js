//
// NowPlaying.js
// Now Playing Cordova Plugin
//
// Created by François LASSERRE on 12/05/13.
// Copyright 2013 François LASSERRE. All rights reserved.
// MIT Licensed
//
(function(cordova) {

	function NowPlaying() {}

	/**
	 * Update metadatas.
	 */
	NowPlaying.prototype.updateMetas = function(artist, title, album, cover) {
		cordova.exec(null, null, 'NowPlaying', 'updateMetas', [artist, title, album, cover]);
	};

	module.exports = new NowPlaying();

})(window.cordova || window.Cordova);
