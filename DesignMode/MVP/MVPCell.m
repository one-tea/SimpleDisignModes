//
//  MVPCell.m
//  DesignMode
//
//  Created by Kevin on 2016/12/30.
//  Copyright © 2016年 zhangkk. All rights reserved.
//

#import "MVPCell.h"
#import "MVPPresenter.h"



@interface MVPCell ()

@property(nonatomic,strong)MVPPresenter *presenter;
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UIButton *button;

@end

@implementation MVPCell

-(instancetype)init{
	self = [super init];
	if (self) {
		self.frame =[UIScreen mainScreen].bounds;
		
		self.label= [UILabel new];
		_label.frame = CGRectMake(100, 100, 100, 30);
		[self addSubview:_label];
		_label.backgroundColor = [UIColor orangeColor];
		
		self.button = [UIButton new];
		_button.backgroundColor = [UIColor redColor];
		[_button setTitle:@"点击" forState:UIControlStateNormal];
		[_button addTarget:self action:@selector(clickChangModel) forControlEvents:UIControlEventTouchUpInside];
		_button.frame = CGRectMake(150, 200, 50, 50);
		[self addSubview:_button];
		
		
	}
	return self;
}


-(void)setlabel:(NSString *)nameStr{
	
	_label.text = nameStr;
}

-(void)clickChangModel{
	
	self.presenter = [[MVPPresenter alloc]init];
	[self.presenter clickChangName];
	
}
@end
