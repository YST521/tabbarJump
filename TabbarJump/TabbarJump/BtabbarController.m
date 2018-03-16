//
//  BtabbarController.m
//  TabbarJump
//
//  Created by youxin on 2018/3/16.
//  Copyright © 2018年 yst. All rights reserved.
//

#import "BtabbarController.h"
#import "AViewController.h"
#import "AAViewController.h"
#import "AAAViewController.h"
#import "BViewController.h"


@interface BtabbarController ()

@end

@implementation BtabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addChildController];
}

-(void)addChildController{
    
    BViewController *Bvc =[[BViewController alloc]init];
    
    
    Bvc.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"AA " image:[UIImage imageNamed:@"account_highlight"] selectedImage:[UIImage imageNamed:@"account_normal"]];
    
    UINavigationController* bNA=[[UINavigationController alloc]initWithRootViewController:Bvc];
    
    
   
    
    AAViewController *Bv =[[AAViewController alloc]init];
    Bv.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"BB " image:[UIImage imageNamed:@"account_highlight"] selectedImage:[UIImage imageNamed:@"account_normal"]];
    
    UINavigationController* simNB=[[UINavigationController alloc]initWithRootViewController:Bv];
    
    AAAViewController *AAAvc =[[AAAViewController alloc]init];
    AAAvc.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"CC " image:[UIImage imageNamed:@"account_highlight"] selectedImage:[UIImage imageNamed:@"account_normal"]];
    
    UINavigationController* AAANA=[[UINavigationController alloc]initWithRootViewController:AAAvc];
    
    bNA.view.backgroundColor = [UIColor greenColor];
    Bv.view.backgroundColor = [UIColor cyanColor];
    AAAvc.view.backgroundColor =[UIColor redColor];
    
    self.viewControllers = @[bNA,simNB,AAANA];
    self.selectedIndex = 0;
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
