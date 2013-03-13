//
//  TTViewController.m
//  ThreadTimer
//
//  Created by Foster Lockwood on 3/10/13.
//  Copyright (c) 2013 Apps in House. All rights reserved.
//

#import "TTViewController.h"
#import "OPTimer.h"

@interface TTViewController ()

@end

@implementation TTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Create the timer like the normal NSTimer
    OPTimer* timer = [OPTimer timerWithTimeInterval:0.1f
                                             target:self
                                           selector:@selector(timerHasFired:)
                                           userInfo:nil];
    
    
    // Start that bad boy up, since it isn't scheduled
    [timer startFiring];
    
    // This one will start on its own (ASAP)
    [OPTimer scheduledTimerWithTimeInterval:1.0f
                                     target:self
                                   selector:@selector(otherTimer:)
                                   userInfo:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - OPTimer callbacks

- (void)timerHasFired:(OPTimer*)timer {
    // This is the callback method that gets called every interval
    // based on the time you set on the timer
    printf("T1: %.3f\n", [[NSDate date] timeIntervalSince1970]);
}

- (void)otherTimer:(OPTimer*)timer {
    // This is the callback method that gets called every interval
    // based on the time you set on the timer
    printf("T2: %.3f\n", [[NSDate date] timeIntervalSince1970]);
}


@end
