//
// NowPlaying.m
// Now Playing Cordova Plugin
//
// Created by François LASSERRE on 12/05/13.
// Copyright 2013 François LASSERRE. All rights reserved.
// MIT Licensed
//

#import "NowPlaying.h"
#import <MediaPlayer/MediaPlayer.h>

@implementation NowPlaying

- (void) updateMetas:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options
{
	NSUInteger argc = [arguments count];

	if (argc < 3) { // at a minimum we need artist, title and album...
		return;
	}

	NSString *artist = [arguments objectAtIndex:1];
	NSString *title = [arguments objectAtIndex:2];
	NSString *album = [arguments objectAtIndex:3];

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
