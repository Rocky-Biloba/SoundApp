//
//  SoundAppViewController.h
//  SoundApp
//
//  Created by RLO on 2013-06-10.
//  Copyright (c) 2013 RLO. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "MenuViewController.h"  

int clicked;

@interface SoundAppViewController : UIViewController {
    
}

@property (strong) AVAudioPlayer *audioPlayer;
@property (weak) IBOutlet UIButton *playButton;

- (IBAction)play:(id) sender;

- (IBAction)goToMenu:(id)sender;



@end
