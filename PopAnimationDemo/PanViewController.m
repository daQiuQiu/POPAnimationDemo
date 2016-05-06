//
//  PanViewController.m
//  PopAnimationDemo
//
//  Created by 易仁 on 16/5/5.
//  Copyright © 2016年 易仁. All rights reserved.
//

#import "PanViewController.h"
#import <POP.h>
@interface PanViewController ()
@property (nonatomic, strong) UIPanGestureRecognizer *rec;
@end

@implementation PanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.rec = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(startAni)];
    [self.view addGestureRecognizer:_rec];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) startAni {
    [self rotate:self.rec];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)rotate:(UIPanGestureRecognizer*)recognizer
{
    CGPoint velocity = [recognizer velocityInView:self.view];
    
    POPSpringAnimation *positionAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPosition];
    positionAnimation.velocity = [NSValue valueWithCGPoint:velocity];//速度可以影响 弹性 动画大小 幅度
    positionAnimation.dynamicsTension = 5;//张力  决定幅度范围
    positionAnimation.dynamicsFriction = 5.0f;//摩擦力 与张力功能相反
    positionAnimation.springBounciness = 20.0f;
    [_myView.layer pop_addAnimation:positionAnimation forKey:@"positionAnimation"];
    
    
    POPSpringAnimation *sizeAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerSize];
    sizeAnimation.velocity = [NSValue valueWithCGPoint:velocity];
    sizeAnimation.springBounciness = 1.0f;
    sizeAnimation.dynamicsFriction = 1.0f;
    //只需要弹力效果可以不设置摩擦力
    
    [_myView.layer pop_addAnimation:sizeAnimation forKey:@"sizeAnimation"];
}



@end
