//
//  FirstViewController.m
//  Johnson's Sound
//
//  Created by Curt on 6/10/13.
//  Copyright (c) 2013 com.smoochfairy. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (IBAction)playsound:(id)sender {
    SystemSoundID soundID;
    NSString *buttomName=[sender currentTitle];
    NSString *soundFile= [[NSBundle mainBundle]
pathForResource:buttomName ofType:@"wav"];
    
    AudioServicesCreateSystemSoundID ((__bridge  CFURLRef)
                                     [NSURL fileURLWithPath:soundFile],& soundID);
    AudioServicesPlaySystemSound(soundID);
    

    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
