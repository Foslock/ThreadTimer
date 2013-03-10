ThreadTimer
===========

Uses the custom class OPTimer to create an accurate timer that uses background threading

###How to use OPTimer

    // Create the timer like any normal Obj-c object
    OPTimer* timer = [[OPTimer alloc] init];
    
    // Set the delegate, in charge of providing a callback function
    // Make sure it conforms to the 'OPTimerDelegate' protocol
    timer.delegate = self;
    
    // Set the timer's interval (rate at which it calls the callback) IN NANOSECONDS!
    timer.intervalInNanoSeconds = (1000 * 1000 * 1000) / 1;
    
    // Start that bad boy up, since it DOES NOT START AUTOMATICALLY
    [timer startFiring];

###Disclaimer

This is an "as-is" product, totally yours for the using and keeping. Feel free to pull/fork or whatever if you think you can improve on it.