//
//  AViewController.m
//  TabbarJump
//
//  Created by youxin on 2018/3/16.
//  Copyright © 2018年 yst. All rights reserved.
//

#import "AViewController.h"
#import "BtabbarController.h"
#import "AppDelegate.h"
#import "CViewController.h"

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"11";
    
    UIButton *btn1 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    btn1.frame = CGRectMake(100, 100, 200, 40);
    btn1.backgroundColor =[UIColor greenColor];
    [btn1 setTitle:@"跳转第三个item" forState:(UIControlStateNormal)];
    [btn1 setTitleColor:[UIColor blackColor]forState:(UIControlStateNormal)];
    [self.view addSubview:btn1];
    [btn1 addTarget:self action:@selector(btnClick:) forControlEvents:(UIControlEventTouchUpInside)];
    
    UIButton *btn2 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    btn2.frame = CGRectMake(100, 300, 200, 40);
    btn2.backgroundColor =[UIColor yellowColor];
    [self.view addSubview:btn2];
    [btn2 setTitleColor:[UIColor blackColor]forState:(UIControlStateNormal)];
     [btn2 setTitle:@"跳转第二个tabbarontroller" forState:(UIControlStateNormal)];
    [btn2 addTarget:self action:@selector(btnTClick:) forControlEvents:(UIControlEventTouchUpInside)];
    
}

-(void)btnClick:(UIButton*)sender{
    
    self.tabBarController.selectedIndex = 2;
    
//    AppDelegate *appdelegateE = (AppDelegate*)[UIApplication sharedApplication].delegate;
//     UINavigationController *nav = (UINavigationController *)appdelegateE.aTabbarVC.viewControllers[0];
//     CViewController *cVC = [[CViewController alloc]init];
//     [nav pushViewController:cVC animated:YES];
}

-(void)btnTClick:(UIButton*)sender{
    
  
    BtabbarController *tabbarVC = [[BtabbarController alloc]init];
    
    AppDelegate *appdelegateE = (AppDelegate*)[UIApplication sharedApplication].delegate;
    
    appdelegateE.window.rootViewController = tabbarVC;
    tabbarVC.selectedIndex = 0;
    
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
