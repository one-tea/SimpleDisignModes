//
//  MVVMView.h
//  DesignMode
//
//  Created by Kevin on 2017/1/4.
//  Copyright © 2017年 zhangkk. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MVVMViewModel.h"

@interface MVVMView : UIView

-(void)setWithViewMoel:(MVVMViewModel *)vm;

@end
