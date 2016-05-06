//
//  POPBacisAniOneViewController.h
//  PopAnimationDemo
//
//  Created by 易仁 on 16/5/4.
//  Copyright © 2016年 易仁. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface POPBacisAniOneViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UIButton *myButton;
@property (strong, nonatomic) IBOutlet UILabel *myLabel;
- (IBAction)horiMove:(UIButton *)sender;
- (IBAction)vertMove:(UIButton *)sender;
- (IBAction)spinMove:(UIButton *)sender;
- (IBAction)choseMode:(UISwitch *)sender;
- (IBAction)resetFrame:(UIButton *)sender;



@end
