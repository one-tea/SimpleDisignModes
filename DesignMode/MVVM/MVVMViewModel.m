//
//  MVVMViewModel.m
//  DesignMode
//
//  Created by Kevin on 2017/1/4.
//  Copyright © 2017年 zhangkk. All rights reserved.
//	处理view和Model间关联问题，开发者只需考虑布局逻辑

#import "MVVMViewModel.h"

@implementation MVVMViewModel
-(instancetype)init{
	if (self = [super init]) {
		
	}
	return self;
}

-(void)setWithModel:(MVVMModel *)model{
	self.model = model;
	self.nameStr = model.name;
	
	
}
-(void)clickChangeName{
	
	self.model.name = [NSString stringWithFormat:@"name%d",arc4random()%10];
	self.nameStr = self.model.name;
	NSLog(@"%@",self.nameStr);
	
}
@end
