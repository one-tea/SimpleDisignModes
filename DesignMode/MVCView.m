//
//  MVCView.m
//  DesignMode
//
//  Created by Kevin on 2017/1/5.
//  Copyright © 2017年 zhangkk. All rights reserved.
//

#import "MVCView.h"

@interface MVCView()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UIButton *button;
@end
@implementation MVCView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if (self) {
		self.backgroundColor = [UIColor whiteColor];
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

-(void)setViewWithModel:(MVCModel *)model{
	self.label.text = model.name;
	
}
-(void)clickChangModel{
	
	[self.delegate clickChange];
}


@end
