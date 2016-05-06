//
//  ButtonExpandViewController.m
//  PopAnimationDemo
//
//  Created by 易仁 on 16/5/5.
//  Copyright © 2016年 易仁. All rights reserved.
//

#import "ButtonExpandViewController.h"
#import <POP.h>
@interface ButtonExpandViewController ()

@end
CGRect oriFrame;

@implementation ButtonExpandViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    oriFrame = CGRectMake(172, 617, 2, 2);
    
    self.myLabel6 = [[UILabel alloc]init];
    self.myLabel6.frame = CGRectMake(175, 620, 50, 50);
    self.myLabel6.text = @"NO6";
    [self.view addSubview:self.myLabel6];
    
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) startAniWithFrame: (CGRect)frame atTime: (float)time forLabel: (UILabel*)label{
    POPSpringAnimation *Ani = [POPSpringAnimation animationWithPropertyNamed:kPOPViewFrame];
    //Ani.fromValue = [NSValue valueWithCGRect:label.frame];
    //Ani.velocity = @(300.0);
    Ani.toValue = [NSValue valueWithCGRect:frame];
    
    Ani.springSpeed = 10;
    Ani.springBounciness = 20;
    Ani.beginTime = CACurrentMediaTime()+time;
    
//    Ani.dynamicsTension = tValue;
    //Ani.dynamicsFriction = 4;
    [label.layer pop_addAnimation:Ani forKey:@"hri"];
    //[label setNeedsDisplay];
    //label.frame = frame;
    
//    POPSpringAnimation *sAni = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerRotation];
//    //sAni.velocity = [NSValue valueWithCGPoint:CGPointMake(50, 400)];
//    sAni.fromValue = 0;
//    sAni.toValue = @(M_PI*4);
//    sAni.springSpeed = 20;
//    sAni.springBounciness = 20;
//    sAni.beginTime = CACurrentMediaTime()+time;
////    sAni.dynamicsTension = tValue;
////    sAni.dynamicsFriction = fValue;
//    [label.layer pop_addAnimation:sAni forKey:@"springRion1"];
    //label.frame = frame;
    [UIView animateWithDuration:0.2 animations:^{
        
        [label layoutIfNeeded];
    }];
}

-(void) getLabelStatus {
    if (self.myLabel1.frame.origin.y > 610) {
        [self startAniWithFrame:CGRectMake(130, 580, 100, 20) atTime:0 forLabel:_myLabel1];
        [self startAniWithFrame:CGRectMake(150, 540, 100, 20) atTime:0.1 forLabel:_myLabel2];
        [self startAniWithFrame:CGRectMake(170, 520, 100, 20) atTime:0.2 forLabel:_myLabel3];
        [self startAniWithFrame:CGRectMake(190, 540, 100, 20) atTime:0.3 forLabel:_myLabel4];
        [self startAniWithFrame:CGRectMake(210, 580, 100, 20) atTime:0.4 forLabel:_myLabel5];
        [self startAniWithFrame:CGRectMake(210, 500, 100, 100) atTime:0.5 forLabel:_myLabel6];
        
        
        
    }
    else {
        
    }
}


- (IBAction)startAnima:(UIButton *)sender {
    [self performSelector:@selector(getLabelStatus) withObject:nil afterDelay:0];
    }
@end
