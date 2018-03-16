//
//  AtabbarController.m
//  TabbarJump
//
//  Created by youxin on 2018/3/16.
//  Copyright © 2018年 yst. All rights reserved.
//

#import "AtabbarController.h"
#import "AViewController.h"
#import "AAViewController.h"
#import "AAAViewController.h"

@interface AtabbarController ()

@end

@implementation AtabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self addChildController];
    
}

-(void)addChildController{
   
    AViewController *BBv =[[AViewController alloc]init];
    
    
    BBv.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"11 " image:[UIImage imageNamed:@"account_highlight"] selectedImage:[UIImage imageNamed:@"account_normal"]];
    
    UINavigationController* simNA=[[UINavigationController alloc]initWithRootViewController:BBv];
    
    
    AAViewController *Bv =[[AAViewController alloc]init];
    Bv.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"22 " image:[UIImage imageNamed:@"account_highlight"] selectedImage:[UIImage imageNamed:@"account_normal"]];
    
    UINavigationController* simNB=[[UINavigationController alloc]initWithRootViewController:Bv];
    
    AAAViewController *AAAvc =[[AAAViewController alloc]init];
    AAAvc.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"33 " image:[UIImage imageNamed:@"account_highlight"] selectedImage:[UIImage imageNamed:@"account_normal"]];
    
    UINavigationController* AAANA=[[UINavigationController alloc]initWithRootViewController:AAAvc];
    
    BBv.view.backgroundColor =  [UIColor redColor];
    Bv.view.backgroundColor  =   [UIColor yellowColor];
    AAAvc.view.backgroundColor =[UIColor blueColor];
    
    self.viewControllers = @[simNA,simNB,AAANA];
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
