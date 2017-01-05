//
//  MVPViewController.m
//  DesignMode
//
//  Created by Kevin on 2016/12/30.
//  Copyright © 2016年 zhangkk. All rights reserved.
//

#import "MVPViewController.h"
#import "MVPPresenter.h"
#import "MVPCell.h"
#import "MVPModel.h"

@interface MVPViewController ()

@end

@implementation MVPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	self.view.backgroundColor = [UIColor whiteColor];
	
	MVPPresenter *present = [MVPPresenter new];
	MVPCell *view = [MVPCell new];
	MVPModel *model = [MVPModel new];
	
	//获取数据
	model.name = @"小明";
	
	//视图布局
	[self.view addSubview:view];
	
	//交给presenter处理
	[present setPreModel:model];
	[present setPreView:view];
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
