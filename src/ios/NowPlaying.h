//
// NowPlaying.h
// Now Playing Cordova Plugin
//
// Created by François LASSERRE on 30/08/15.
// Copyright 2015 François LASSERRE. All rights reserved.
// MIT Licensed
//

#import <Cordova/CDVPlugin.h>
#import <MediaPlayer/MediaPlayer.h>
#import <MediaPlayer/MPNowPlayingInfoCenter.h>
#import <MediaPlayer/MPMediaItem.h>

@interface NowPlaying : CDVPlugin {
}

- (void)updateMetas:(CDVInvokedUrlCommand*)command;

@end