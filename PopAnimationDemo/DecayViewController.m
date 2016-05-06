//
//  DecayViewController.m
//  PopAnimationDemo
//
//  Created by 易仁 on 16/5/5.
//  Copyright © 2016年 易仁. All rights reserved.
//

#import "DecayViewController.h"
#import <POP.h>
@interface DecayViewController ()

@end
CGRect lFrame;
@implementation DecayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    lFrame = self.myLabel.frame;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void) decayAnimation {
    POPDecayAnimation *decayAni = [POPDecayAnimation animationWithPropertyNamed:kPOPLayerPosition];
    decayAni.velocity = [NSValue valueWithCGRect:CGRectMake(300, 600, 20, 20)];
    //操作只能通过速度，没有toValue！
//    decayAni.toValue = [NSValue valueWithCGPoint:CGPointMake(300, 80)];
    [self.myLabel.layer pop_addAnimation:decayAni forKey:@"decay"];
}

- (IBAction)startAnimate:(UIButton *)sender {
    [self decayAnimation];
}

- (IBAction)resetLFrame:(UIButton *)sender {
    self.myLabel.frame = lFrame;
    [self.myLabel.layer pop_removeAllAnimations];
}
@end
