//
//  OPTimer.h
//  On Pitch
//
//  Created by Foster Lockwood on 3/10/13.
//  Copyright (c) 2013 Tufts Dev Team. All rights reserved.
//

#import <Foundation/Foundation.h>

// Forward declaration of protocol
@protocol OPTimerDelegate;

@interface OPTimer : NSObject

@property (weak) id<OPTimerDelegate> delegate;
@property (assign) NSInteger intervalInNanoSeconds;

- (void)startFiring;
- (void)stopFiring;

@end

@protocol OPTimerDelegate <NSObject>

// Will be called on a background thread, be careful of expensive synchronous calls
// Sounds are OK though, as well as thread spawns, just be careful at high rates
- (void)timerHasFired:(OPTimer*)timer;

@end