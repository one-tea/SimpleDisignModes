//
//  MVVMView.m
//  DesignMode
//
//  Created by Kevin on 2017/1/4.
//  Copyright © 2017年 zhangkk. All rights reserved.
//

#import "MVVMView.h"
#import "NSObject+FBKVOController.h"
@interface MVVMView ()

@property(nonatomic,strong)MVVMViewModel *vm;
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UIButton *button;

@end

@implementation MVVMView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)init
{
	self = [super init];
	if (self) {
		self.backgroundColor = [UIColor whiteColor];
		self.frame = [UIScreen mainScreen].bounds;
		
		self.label = [[UILabel alloc]initWithFrame:CGRectMake(150,100 , 100, 30)];
		self.label.backgroundColor = [UIColor orangeColor];
		[self addSubview:_label];
		
		self.button = [UIButton new];
		_button.backgroundColor = [UIColor redColor];
		[_button setTitle:@"点击" forState:UIControlStateNormal];
		[_button addTarget:self action:@selector(mvvmClickChangModel) forControlEvents:UIControlEventTouchUpInside];
		_button.frame = CGRectMake(150, 200, 50, 50);
		[self addSubview:_button];
	}
	return self;
}

-(void)setWithViewMoel:(MVVMViewModel *)vm{
	self.vm = vm;
	//KVO
	[self.vm addObserver:self forKeyPath:@"nameStr" options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:nil];
	self.label.text = vm.nameStr;
	
//	//* FBKVO
//	[self.KVOController observe:self.vm keyPath:@"nameStr" options:NSKeyValueObservingOptionInitial|NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSString *,id> * _Nonnull change) {
//		self.label.text = change[NSKeyValueChangeNewKey];
//	}];

}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:	(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
	if ([keyPath isEqualToString:@"nameStr"]&&[change objectForKey:NSKeyValueChangeNewKey]) {
		NSNumber *new = [change objectForKey:NSKeyValueChangeNewKey];
//		self.label.text = [NSString stringWithFormat:@"%@",new];
	}
}
-(void)mvvmClickChangModel{
	[self.vm clickChangeName];
}

-(void)dealloc{
	[self.vm removeObserver:self forKeyPath:@"nameStr"];
}
@end
