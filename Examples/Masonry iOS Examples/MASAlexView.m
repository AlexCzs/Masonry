//
//  MASAlexView.m
//  Masonry iOS Examples
//
//  Created by 陈昭燊 on 16/7/27.
//  Copyright © 2016年 Jonas Budelmann. All rights reserved.
//

#import "MASAlexView.h"

@implementation MASAlexView
- (id)init {
    self = [super init];
    self.backgroundColor = [UIColor blueColor];
    if (!self) return nil;
    UIView *greenView = UIView.new;
    greenView.backgroundColor = UIColor.greenColor;
    greenView.layer.borderColor = UIColor.blackColor.CGColor;
    greenView.layer.borderWidth = 2;
//    [self addSubview:greenView];
//    [greenView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(self.left).offset(100);
//        make.top.equalTo(self.top).offset(100);
//        make.width.equalTo(@50);
//        make.height.equalTo(@50);
//    }];
    
    [MasonryTools makePostionView:greenView atTopAndLeftView:self viewSize:CGSizeMake(100, 100) offet:CGPointMake(100, 200)];
    
    return self;
}


@end
