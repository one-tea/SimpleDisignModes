//
//  ViewController.m
//  DesignMode
//
//  Created by Kevin on 2016/12/30.
//  Copyright © 2016年 zhangkk. All rights reserved.
//

#import "ViewController.h"
#import "MVCViewController.h"
#import "MVPViewController.h"
#import "MVVMViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
		[self MVC];
//		[self MVP];
//		[self MVVM];

	});
}

-(void)MVC{
	[self presentViewController:[MVCViewController new] animated:YES completion:nil];
}
-(void)MVP{

	[self presentViewController:[MVPViewController new] animated:YES completion:nil];
}
-(void)MVVM{

	[self presentViewController:[MVVMViewController new] animated:YES completion:nil];

}
- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
