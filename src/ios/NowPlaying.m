//
// NowPlaying.m
// Now Playing Cordova Plugin
//
// Created by François LASSERRE on 12/05/13.
// Copyright 2013 François LASSERRE. All rights reserved.
// MIT Licensed
//

#import "NowPlaying.h"

@implementation NowPlaying

- (void)updateMetas:(CDVInvokedUrlCommand*)command
{
    NSString *artist = [command.arguments objectAtIndex:0];
    NSString *title = [command.arguments objectAtIndex:1];
    NSString *album = [command.arguments objectAtIndex:2];

    if (NSClassFromString(@"MPNowPlayingInfoCenter"))  {
        MPNowPlayingInfoCenter *infoCenter = [MPNowPlayingInfoCenter defaultCenter];
        infoCenter.nowPlayingInfo = [NSDictionary dictionaryWithObjectsAndKeys:
                                     artist, MPMediaItemPropertyArtist,
                                     title, MPMediaItemPropertyTitle,
                                     album, MPMediaItemPropertyAlbumTitle,
                                     nil];
    }
}

@end
