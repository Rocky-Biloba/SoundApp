//
//  SoundAppViewController.m
//  SoundApp
//
//  Created by RLO on 2013-06-10.
//  Copyright (c) 2013 RLO. All rights reserved.
//

#import "SoundAppViewController.h"
#import "MenuViewController.h"  

@implementation SoundAppViewController

- (IBAction)play: (id) sender{
    if (clicked==0) {
        clicked = 1;
        
        if(!self.audioPlayer) {
            
            NSURL *url = [NSURL fileURLWithPath: [NSString stringWithFormat:@"%@/Symbols.m4a", [[NSBundle mainBundle] resourcePath]]];
            
            //NSLog(NSBundleDidLoadNotification);
            
            NSError *error;
            self.audioPlayer  = [[AVAudioPlayer alloc] initWithContentsOfURL:url  error:&error];
            if(error) { NSLog(@"Error %@", [error localizedDescription]); }
            
            self.audioPlayer.numberOfLoops = 0;
        }
        
        [self.audioPlayer play];
        
        [self.playButton setTitle:@"Stop" forState: UIControlStateNormal];
    } else {
        
        /* below, was[audioPlayer release];*/
        
        clicked = 0;
        [self.audioPlayer pause];
        
        [self.playButton setTitle:@"Play" forState: UIControlStateNormal];
    }
    
    
}

- (IBAction)goToMenu:(id)sender {
    
    //create menuviewcontrllr
    
    MenuViewController * menu =[[MenuViewController alloc] init];
    
    // define view transition stylee
    
    menu.modalTransitionStyle= UIModalTransitionStyleCrossDissolve;
    
    // present view contrllr

    [self presentModalViewController: menu animated: YES];
}

@end
