//
//  MVPPresenter.h
//  DesignMode
//
//  Created by Kevin on 2016/12/30.
//  Copyright © 2016年 zhangkk. All rights reserved.
//
//* 交互中 避免 view和 model 之间的耦合

#import <Foundation/Foundation.h>
#import "MVPModel.h"
#import "MVPCell.h"
@interface MVPPresenter : NSObject 
@property(nonatomic,strong)MVPCell *MVPView;
@property(nonatomic,strong)MVPModel *model;


-(void)setPreView:(MVPCell *)view;
-(void)setPreModel:(MVPModel *)model;

-(void)clickChangName;
@end
