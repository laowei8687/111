//
//  V1iewController.m
//  TableView
//
//  Created by Ibokan on 15/12/8.
//  Copyright © 2015年 王斌. All rights reserved.
//

#import "V1iewController.h"

@interface V1iewController ()

@end

@implementation V1iewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    indentifier = @"ok";
//    self.storyboard
    // Do any additional setup after loading the view.
    UIView *v1 = [[UIView alloc]initWithFrame:CGRectMake(100,100, 100, 100)];
    v1.backgroundColor = [UIColor grayColor];
    [self.view addSubview:v1];
    self.title = @"ok";
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
