//
//  AniTableViewController.m
//  PopAnimationDemo
//
//  Created by 易仁 on 16/5/4.
//  Copyright © 2016年 易仁. All rights reserved.
//

#import "AniTableViewController.h"
#import "POPBacisAniOneViewController.h"
#import "SpringAniViewController.h"
#import "PanViewController.h"
#import "DecayViewController.h"
#import "ButtonExpandViewController.h"

@interface AniTableViewController ()
@property (nonatomic, strong) NSArray *array;
@end

@implementation AniTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.array = @[@"POP基础动画",@"POP弹簧效果",@"POP衰减效果",@"POP手势弹簧",@"按键动画例1"];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    cell.textLabel.text = self.array[indexPath.row];
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:{
            POPBacisAniOneViewController *basicOneVC = [self.storyboard instantiateViewControllerWithIdentifier:@"basicone"];
            [self.navigationController pushViewController:basicOneVC animated:YES];
            break;
        }
        case 1:{
           SpringAniViewController  *springVC = [self.storyboard instantiateViewControllerWithIdentifier:@"springvc"];
            [self.navigationController pushViewController:springVC animated:YES];
            break;
        }
        case 2:{
            DecayViewController *decayVC = [self.storyboard instantiateViewControllerWithIdentifier:@"decay"];
            [self.navigationController pushViewController:decayVC animated:YES];
            break;
        }
        case 3:{
           PanViewController *panVC  = [self.storyboard instantiateViewControllerWithIdentifier:@"pan"];
            [self.navigationController pushViewController:panVC animated:YES];
            break;
        }
        case 4:{
            ButtonExpandViewController *buttonVC  = [self.storyboard instantiateViewControllerWithIdentifier:@"buttonvc"];
            [self.navigationController pushViewController:buttonVC animated:YES];
            break;
        }
        default:
            break;
    }
}

@end
