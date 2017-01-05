//
//  MVCViewController.m
//  DesignMode
//
//  Created by Kevin on 2017/1/5.
//  Copyright © 2017年 zhangkk. All rights reserved.
//

#import "MVCViewController.h"
#import "MVCView.h"
#import "MVCModel.h"
@interface MVCViewController ()<MVCDelegate>

@end

@implementation MVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	MVCView *view = [[MVCView alloc]initWithFrame:[UIScreen mainScreen].bounds];
	view.delegate = self;
	
	
	MVCModel *model = [MVCModel new];
	
	model.name = @"name1";
	
	[view setViewWithModel:model];

	[self.view addSubview:view];
	
}

#pragma mark - delegate

-(void)clickChange{
	
	NSLog(@"MVC:chang  from View!");
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
