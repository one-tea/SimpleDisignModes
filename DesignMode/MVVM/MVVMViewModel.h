//
//  MVVMViewModel.h
//  DesignMode
//
//  Created by Kevin on 2017/1/4.
//  Copyright © 2017年 zhangkk. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MVVMModel.h"

@interface MVVMViewModel : NSObject
@property(nonatomic,copy)NSString *nameStr;

@property(nonatomic,strong)MVVMModel *model;



-(void)setWithModel:(MVVMModel *)model;
-(void)clickChangeName;
@end
