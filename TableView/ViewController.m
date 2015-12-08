//
//  ViewController.m
//  TableView
//
//  Created by Ibokan on 15/12/8.
//  Copyright © 2015年 王斌. All rights reserved.
//
// laowei
//jjjjjjjjjjj
#import "ViewController.h"
#import "V1iewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UITableView *tv1;
@property (nonatomic, strong) UITableView *tv2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"jjjj");
    
    // Do any additional setup after loading the view, typically from a nib.
    self.tv1 = [[UITableView alloc]initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, 240) style:UITableViewStylePlain];
    self.tv1.tag = 1;
    self.tv1.dataSource = self;
    self.tv1.delegate = self;
    [self.view addSubview:self.tv1];
    
    self.tv2 = [[UITableView alloc]initWithFrame:CGRectMake(0, 300, self.view.bounds.size.width, 220) style:UITableViewStylePlain];
    self.tv2.tag = 2;
    self.tv2.dataSource = self;
    self.tv2.delegate = self;
    [self.view addSubview:self.tv2];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 260, 30, 30)];
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(tap) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)tap
{
    V1iewController *v1 = [[V1iewController alloc]init];
    [self presentViewController:v1 animated:YES completion:nil];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView.tag == 1) {
        return  7;
    }
    return 8;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView.tag == 1) {
        UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
        cell.textLabel.text = @"1";
        return cell;
    }
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    cell.textLabel.text = @"2";
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
