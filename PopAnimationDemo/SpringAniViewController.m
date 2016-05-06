//
//  SpringAniViewController.m
//  PopAnimationDemo
//
//  Created by 易仁 on 16/5/4.
//  Copyright © 2016年 易仁. All rights reserved.
//

#import "SpringAniViewController.h"
#import <POP.h>
@interface SpringAniViewController ()

@end
CGRect oframe;
float fValue;
float tValue;

@implementation SpringAniViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    oframe = self.myLabel.frame;
    self.fSlider.minimumValue = 0;
    self.fSlider.maximumValue = 20;
    self.tSlider.minimumValue = 0;
    self.tSlider.maximumValue = 200;
//    fValue = 10;
//    tValue = 10;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) startSpringAnimation {
    POPSpringAnimation *sAni = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerRotation];
    //sAni.velocity = [NSValue valueWithCGPoint:CGPointMake(50, 400)];
    sAni.fromValue = 0;
    sAni.toValue = @(M_PI*2);
    sAni.springSpeed = 20;
    sAni.springBounciness = 20;
    //sAni.dynamicsTension = tValue;
    sAni.dynamicsFriction = (int)fValue;
    [self.myLabel.layer pop_addAnimation:sAni forKey:@"springRotation"];
    
    
}

-(void) spinAndMove {
    POPSpringAnimation *Ani = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    Ani.fromValue = @(20);
    Ani.velocity = @(300.0);
    Ani.toValue = @(200);
    Ani.springSpeed = 10;
    Ani.springBounciness = 20;
    
    Ani.dynamicsTension = tValue;
    NSLog(@"T = %f",Ani.dynamicsTension);
//    if (tValue == 0) {
//        Ani.dynamicsTension = 100;
//    }
    Ani.dynamicsFriction = (int)fValue;
    [self.myLabel.layer pop_addAnimation:Ani forKey:@"hori1"];
    
    
}

-(void) combineAni {
    POPSpringAnimation *Ani = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    Ani.fromValue = @(286);
    //Ani.velocity = @(300.0);
    Ani.toValue = @(86);
    Ani.springSpeed = 10;
    Ani.springBounciness = 20;
    
    Ani.dynamicsTension = tValue;
    Ani.dynamicsFriction = (int)fValue;
    [self.myLabel.layer pop_addAnimation:Ani forKey:@"hori"];
    
    POPSpringAnimation *sAni = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerRotation];
    //sAni.velocity = [NSValue valueWithCGPoint:CGPointMake(50, 400)];
    sAni.fromValue = 0;
    sAni.toValue = @(M_PI*2);
    sAni.springSpeed = 20;
    sAni.springBounciness = 20;
    sAni.dynamicsTension = tValue;
    sAni.dynamicsFriction = fValue;
    [self.myLabel.layer pop_addAnimation:sAni forKey:@"springRotation1"];
    
    
}

- (IBAction)startSpin:(UIButton *)sender {
    [self startSpringAnimation];
}

- (IBAction)resetFrame:(UIButton *)sender {
    [self.myLabel.layer pop_removeAllAnimations];
    self.myLabel.frame = oframe;
}

- (IBAction)horiMove:(UIButton *)sender {
    [self spinAndMove];
}

- (IBAction)tensionChange:(UISlider *)sender {
    tValue = sender.value;
    NSLog(@"t = %f",tValue);
    
}

- (IBAction)spinMove:(UIButton *)sender {
    [self combineAni];
}
- (IBAction)frictionChange:(UISlider *)sender {
    fValue = sender.value;
    NSLog(@"f = %f",fValue);
}
@end
