//
//  MVVMViewController.m
//  DesignMode
//
//  Created by Kevin on 2017/1/4.
//  Copyright © 2017年 zhangkk. All rights reserved.
//

#import "MVVMViewController.h"
#import "MVVMView.h"
#import "MVVMModel.h"
#import "MVVMViewModel.h"
@interface MVVMViewController ()

@end

@implementation MVVMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	MVVMView *MView = [MVVMView new];
	
	MVVMModel *model = [MVVMModel new];
	model.name = @"name1";
	MVVMViewModel *viewModel = [MVVMViewModel new];
	
	[self.view addSubview:MView];
	
	//* viewModel 作为枢纽 沟通view和model之间关系
	[viewModel setWithModel:model];
	[MView setWithViewMoel:viewModel];
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
