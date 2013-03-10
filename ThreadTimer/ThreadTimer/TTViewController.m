//
//  TTViewController.m
//  ThreadTimer
//
//  Created by Foster Lockwood on 3/10/13.
//  Copyright (c) 2013 Apps in House. All rights reserved.
//

#import "TTViewController.h"
#import "OPTimer.h"

@interface TTViewController () <OPTimerDelegate>

@end

@implementation TTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Create the timer like any normal Obj-c object
    OPTimer* timer = [[OPTimer alloc] init];
    
    // Set the delegate, in charge of providing a callback function
    timer.delegate = self;
    
    // Set the timer's interval (rate at which it calls the callback) IN NANOSECONDS!
    timer.intervalInNanoSeconds = (1000 * 1000 * 1000) / 1;
    
    // Start that bad boy up, since it DOES NOT START AUTOMATICALLY
    [timer startFiring];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - OPTimer Delegate

- (void)timerHasFired:(OPTimer *)timer {
    // This is the callback method that gets called every interval
    // based on the time you set on the timer
    NSLog(@"OPTimer has fired!");
}


@end
