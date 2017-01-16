//
//  ViewController.m
//  TrafficLights
//
//  Created by Ioannis Daratzikis on 10/01/2017.
//  Copyright © 2017 Ioannis Daratzikis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    scoreInt = 0;
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startStop:(id)sender {
    
    if (scoreInt == 0) {
        
        timerInt = 3;
        
        self.trafficLight.image = [UIImage imageNamed:@"TrafficLight.png"];
        
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(startCounter) userInfo:nil repeats:YES];
        
        self.startButton.enabled = NO;
        [self.startButton setTitle:@"" forState:UIControlStateNormal];
        
    } else {
        
        [scoreTimer invalidate];
        
        [self.startButton setTitle:@"Restart" forState:UIControlStateNormal];
        
    }
    
    if (timerInt == 0) {
        
        scoreInt = 0;
        
        
    }
    
    
    
}

-(void)startCounter {
    
    timerInt -= 1;
    
    if (timerInt == 2) {
        
        self.trafficLight.image = [UIImage imageNamed:@"TrafficLight3.png"];
        
    } else if (timerInt == 1) {
        
        self.trafficLight.image = [UIImage imageNamed:@"TrafficLight2.png"];
        
    } else if (timerInt == 0) {
        
        self.trafficLight.image = [UIImage imageNamed:@"TrafficLight1.png"];
        
        [timer invalidate];
        
        [self.startButton setTitle:@"Stop" forState:UIControlStateNormal];
        self.startButton.enabled = YES;
        
        scoreTimer = [NSTimer scheduledTimerWithTimeInterval:0.0001 target:self selector:@selector(scoreCounter) userInfo:nil repeats:YES];
        
    }
    
    
}

-(void)scoreCounter {
    
    scoreInt += 1;
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
    
    
    
}










@end
