//
//  SpringAniViewController.h
//  PopAnimationDemo
//
//  Created by 易仁 on 16/5/4.
//  Copyright © 2016年 易仁. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpringAniViewController : UIViewController
- (IBAction)frictionChange:(UISlider *)sender;
@property (strong, nonatomic) IBOutlet UILabel *myLabel;
- (IBAction)startSpin:(UIButton *)sender;
- (IBAction)resetFrame:(UIButton *)sender;
- (IBAction)horiMove:(UIButton *)sender;
- (IBAction)tensionChange:(UISlider *)sender;
- (IBAction)spinMove:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UISlider *fSlider;
@property (strong, nonatomic) IBOutlet UISlider *tSlider;

@end
