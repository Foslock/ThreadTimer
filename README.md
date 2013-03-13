ThreadTimer
===========

Uses the custom class OPTimer to create an accurate timer that uses background threading

###How to get started

1. Drag the files "OPTimer.h" and "OPTimer.m" into your project (make sure they are COPIED and added to the target).
2. Put '#import "OPTimer.h"' wherever you want to use it.
3. See below.

###How to use OPTimer

    // Create the timer like the normal NSTimer
    OPTimer* timer = [OPTimer timerWithTimeInterval:0.1f
                                             target:self
                                           selector:@selector(timerHasFired:)
                                           userInfo:nil];
    
    
    // Start that bad boy up, since it isn't scheduled
    [timer startFiring];

You could also use the other class method to create an automatically started timer like so:

	[OPTimer scheduledTimerWithTimeInterval:1.0f
                                     target:self
                                   selector:@selector(otherTimer:)
                                   userInfo:nil];

###Disclaimer

This is an "as-is" product, totally yours for the using and keeping. Feel free to pull/fork or whatever if you think you can improve on it.