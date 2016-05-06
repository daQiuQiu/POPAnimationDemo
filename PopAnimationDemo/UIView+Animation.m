//
//  UIView+Animation.m
//  PopAnimationDemo
//
//  Created by 易仁 on 16/5/6.
//  Copyright © 2016年 易仁. All rights reserved.
//

#import "UIView+Animation.h"
#import <POP.h>
@implementation UIView (Animation)
-(void) animateSizeForView: (UIView*)view {
    POPSpringAnimation *Ani = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerScaleXY];
    Ani.fromValue = [NSValue valueWithCGPoint:CGPointMake(0.3, 0.3)];
    
    Ani.toValue = [NSValue valueWithCGPoint:CGPointMake(1.0, 1.0)];
    Ani.springSpeed = 20;
    Ani.springBounciness = 20;
//    [Ani setCompletionBlock:^(POPAnimation *Ani, BOOL finished) {
//        if (finished) {
//            POPSpringAnimation *sAni = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerScaleXY];
//            //sAni.fromValue = [NSValue valueWithCGPoint:CGPointMake(0.7, 0.7)];
//            
//            sAni.toValue = [NSValue valueWithCGPoint:CGPointMake(1, 1)];
//            sAni.springSpeed = 20;
//            sAni.springBounciness = 20;
//            [view.layer pop_addAnimation:sAni forKey:@"back"];
//        }
//    }];
    
    [view.layer pop_addAnimation:Ani forKey:@"hori1"];
}

@end
