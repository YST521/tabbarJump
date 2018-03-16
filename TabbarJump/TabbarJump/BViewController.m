//
//  BViewController.m
//  TabbarJump
//
//  Created by youxin on 2018/3/16.
//  Copyright © 2018年 yst. All rights reserved.
//

#import "BViewController.h"
#import "AppDelegate.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"B0";
    
    self.view.backgroundColor =[UIColor colorWithWhite:0.95 alpha:1.0];
    UIBarButtonItem * leftItem = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(backAction)];
    
    
    self.navigationItem.leftBarButtonItem = leftItem;
}

- (void)backAction

{
    
    AppDelegate *appDelegatE = (AppDelegate*)[UIApplication sharedApplication].delegate;
    
   appDelegatE.window.rootViewController = appDelegatE.aTabbarVC;
    
   
    
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
