//
//  ViewController.h
//  TrafficLights
//
//  Created by Ioannis Daratzikis on 10/01/2017.
//  Copyright © 2017 Ioannis Daratzikis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSTimer *timer;
    NSTimer *scoreTimer;
    
    int timerInt;
    int scoreInt;
    
    
}


@property (strong, nonatomic) IBOutlet UIImageView *trafficLight;
@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;
@property (strong, nonatomic) IBOutlet UIButton *startButton;

- (IBAction)startStop:(id)sender;





@end

