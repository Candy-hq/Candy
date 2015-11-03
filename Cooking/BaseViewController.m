//
//  BaseViewController.m
//  Cooking
//
//  Created by Candy on 15/11/3.
//  Copyright © 2015年 汪汉琦. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewWillAppear:(BOOL)animated
{

    [super viewWillAppear:animated];
    self.tabBarController.tabBar.hidden = YES;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.topV = [[UIImageView alloc]initWithFrame:(CGRectMake(0, 0, kViewWidth, 64))];
    self.topV.backgroundColor = [UIColor redColor];
    self.topV.userInteractionEnabled = YES;
    [self.view addSubview:self.topV];
    
    self.backV = [[UIImageView alloc]initWithFrame:(CGRectMake(0, 64, kViewWidth, kViewHeight - 64))];
    self.backV.userInteractionEnabled = YES;
    self.backV.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.backV];


    
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

@end
