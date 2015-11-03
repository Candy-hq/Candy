//
//  BarViewController.m
//  Cooking
//
//  Created by Candy on 15/11/3.
//  Copyright © 2015年 汪汉琦. All rights reserved.
//

#import "BarViewController.h"
#import "FindViewController.h"
#import "RecommendViewController.h"
#import "FoodWordsController.h"
#import "MyViewController.h"


@interface BarViewController ()

@end

@implementation BarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    RecommendViewController *recommendVC = [[RecommendViewController alloc]init];
    UINavigationController *recommendNC = [[UINavigationController alloc]initWithRootViewController:recommendVC];
    
//    recommendNC.navigationBarHidden = YES;
    
    FindViewController *findVC = [[FindViewController alloc]init];
    findVC.tabBarController.hidesBottomBarWhenPushed = YES;
    UINavigationController *findNC = [[UINavigationController alloc]initWithRootViewController:findVC];
//    findNC.navigationBarHidden = YES;
    
    FoodWordsController *foodVC = [[FoodWordsController alloc]init];
    UINavigationController *foodNC = [[UINavigationController alloc]initWithRootViewController:foodVC];
//    foodNC.navigationBarHidden = YES;
    
    MyViewController *myVC = [[MyViewController alloc]init];
    UINavigationController *myNC = [[UINavigationController alloc]initWithRootViewController:myVC];
//    myNC.navigationBarHidden = YES;
    
    self.viewControllers = @[recommendNC,findNC,foodNC,myNC];
    
    recommendVC.title = @"推荐";
    findVC.title = @"发现";
    foodVC.title = @"食话";
    myVC.title = @"我的";
    
    
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
