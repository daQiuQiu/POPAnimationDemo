//
//  DecayViewController.h
//  PopAnimationDemo
//
//  Created by 易仁 on 16/5/5.
//  Copyright © 2016年 易仁. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DecayViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *myLabel;
- (IBAction)startAnimate:(UIButton *)sender;
- (IBAction)resetLFrame:(UIButton *)sender;

@end
