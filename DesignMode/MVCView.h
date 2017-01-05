//
//  MVCView.h
//  DesignMode
//
//  Created by Kevin on 2017/1/5.
//  Copyright © 2017年 zhangkk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVCModel.h"
@protocol MVCDelegate <NSObject>

-(void)clickChange;

@end
@interface MVCView : UIView

@property(nonatomic,weak)id <MVCDelegate> delegate;

-(void)setViewWithModel:(MVCModel *)model;
@end
