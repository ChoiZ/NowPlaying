//
// NowPlaying.h
// Now Playing Cordova Plugin
//
// Created by François LASSERRE on 12/05/13.
// Copyright 2013 François LASSERRE. All rights reserved.
// MIT Licensed
//

#import <Cordova/CDVPlugin.h>
#import <MediaPlayer/MediaPlayer.h>


@interface NowPlaying : CDVPlugin {
}

- (void)updateMetas:(CDVInvokedUrlCommand*)command;

@end
