//
//  MVPPresenter.m
//  DesignMode
//
//  Created by Kevin on 2016/12/30.
//  Copyright © 2016年 zhangkk. All rights reserved.
//

#import "MVPPresenter.h"
@implementation MVPPresenter
- (instancetype)init
{
	self = [super init];
	if (self) {

	}
	return self;
}

-(void)setPreModel:(MVPModel *)model{
	self.model = model;
}

-(void)setPreView:(MVPCell *)view{
	self.MVPView = view;
	[self.MVPView setlabel:_model.name];
}

-(void)clickChangName{
	
	NSLog(@"name change %d",arc4random()%10);

}

@end
