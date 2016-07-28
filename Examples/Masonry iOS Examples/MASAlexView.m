//
//  MASAlexView.m
//  Masonry iOS Examples
//
//  Created by 陈昭燊 on 16/7/27.
//  Copyright © 2016年 Jonas Budelmann. All rights reserved.
//

#import "MASAlexView.h"

@implementation MASAlexView
{
    UIView *_greenView;
    UIView *_redView;
    BOOL isClick;
    NSMutableArray *_animatableConstraints;
}
- (id)init {
    isClick = 0;
    self = [super init];
    self.backgroundColor = [UIColor blueColor];
    if (!self) return nil;
    UIView *greenView = UIView.new;
    _greenView = greenView;
    greenView.backgroundColor = UIColor.greenColor;
    greenView.layer.borderColor = UIColor.redColor.CGColor;
    greenView.layer.borderWidth = 2;
    [MasonryTools makePostionView:greenView atTopAndLeftView:self viewSize:CGSizeMake(200, 200) offet:CGPointMake(100, 50)];

    
    UIView *redView = UIView.new;
    _redView = redView;
    redView.backgroundColor = UIColor.redColor;
    redView.layer.borderColor = UIColor.greenColor.CGColor;
    redView.layer.borderWidth = 2;
    [MasonryTools makePostionView:redView onBottomAndLeftView:greenView viewSize:CGSizeMake(200, 200) offet:CGPointMake(0, 50)];
    
    UIView *yellowView = UIView.new;
    yellowView.backgroundColor = UIColor.yellowColor;
    yellowView.layer.borderColor = UIColor.blueColor.CGColor;
    yellowView.layer.borderWidth = 3;
    [MasonryTools makePostionView:yellowView onTheRightAndCenterView:greenView viewSize:CGSizeMake(400, 200) offet:100];
    
    
    UIButton *btn = [[UIButton alloc]init];
    [btn setTitle:@"Click Me!" forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:12];
    [btn addTarget:self action:@selector(clickeMe) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitleColor:UIColor.orangeColor forState:UIControlStateNormal];
    [MasonryTools makePostionView:btn atTheCenterOfView:greenView viewSize:CGSizeMake(100, 20)];

    
    return self;
}
- (void)clickeMe{
    NSLog(@"%@",NSStringFromCGRect(_greenView.bounds));
    [_redView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_greenView.bottom).offset(50);
        make.left.equalTo(_greenView);
        make.width.height.equalTo(_greenView);
    }];
    if (!isClick) {
        [_greenView mas_updateConstraints:^(MASConstraintMaker *make) {
            make.width.height.equalTo(100);
        }];
        
    }else{
        [_greenView mas_updateConstraints:^(MASConstraintMaker *make) {
            make.width.height.equalTo(250);
        }];
        
    }
    
    
    isClick = !isClick;
    [UIView animateWithDuration:1.0 animations:^{
        [self layoutIfNeeded];
    }];
}

@end
