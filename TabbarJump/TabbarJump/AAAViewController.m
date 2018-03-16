//
//  AAAViewController.m
//  TabbarJump
//
//  Created by youxin on 2018/3/16.
//  Copyright © 2018年 yst. All rights reserved.
//

#import "AAAViewController.h"
#import "CViewController.h"

@interface AAAViewController ()

@end

@implementation AAAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
     [self PUSH];
    
}

-(void)PUSH{
    CViewController *cVC =[[CViewController alloc]init];
    [self.navigationController pushViewController:cVC animated:YES];
    
    
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
