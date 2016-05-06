//
//  POPBacisAniOneViewController.m
//  PopAnimationDemo
//
//  Created by 易仁 on 16/5/4.
//  Copyright © 2016年 易仁. All rights reserved.
//

#import "POPBacisAniOneViewController.h"
#import <POP.h>
@interface POPBacisAniOneViewController ()

@end
CGRect  frame;
BOOL    easeMode;
@implementation POPBacisAniOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    frame = self.myLabel.frame;
    easeMode = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) basicAnimation {
    POPBasicAnimation *ani = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    if (easeMode ==YES) {
        ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    }
    else {
        ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    }
    ani.duration = 1.5;
    ani.fromValue = @(20);
    ani.toValue = @(250);
    [self.myLabel pop_addAnimation:ani forKey:@"horizontal"];
    
}

-(void) basicRotation {
    POPBasicAnimation *ani = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerRotation];
    if (easeMode ==YES) {
        ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    }
    else {
        ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    }
    ani.duration = 1.5;
    ani.fromValue = @(0);
    ani.toValue = @(M_PI*2);
    [self.myLabel.layer pop_addAnimation:ani forKey:@"rotationlayer"];
}


- (IBAction)horiMove:(UIButton *)sender {
    [self basicAnimation];
    
}

- (IBAction)vertMove:(UIButton *)sender {
    POPBasicAnimation *ani = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    if (easeMode ==YES) {
        ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    }
    else {
       ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    }
    ani.fromValue = @(315);
    ani.toValue = @(100);
    ani.duration = 1.5;
    [self.myLabel pop_addAnimation:ani forKey:@"vertical"];

}

- (IBAction)spinMove:(UIButton *)sender {
    [self basicRotation];
}

- (IBAction)choseMode:(UISwitch *)sender {
    if (sender.on == YES) {
        easeMode = YES;
    }
    else {
        easeMode = NO;
    }
}

- (IBAction)resetFrame:(UIButton *)sender {
    self.myLabel.frame = frame;
    [self.myLabel.layer pop_removeAllAnimations];

}
@end
