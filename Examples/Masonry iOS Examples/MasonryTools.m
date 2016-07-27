//
//  MasonryTools.m
//  Masonry iOS Examples
//
//  Created by 陈昭燊 on 16/7/27.
//  Copyright © 2016年 Jonas Budelmann. All rights reserved.
//

#import "MasonryTools.h"

@implementation MasonryTools
+ (void)makePostionView:(UIView *)subView atTopAndLeftView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point{
    [containView addSubview:subView];
    [self makePostionView:subView topAndLeftView:containView viewSize:size offet:point];
}

+ (void)makePostionView:(UIView *)subView atTopAndRightView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point{
    [containView addSubview:subView];
    [self makePostionView:subView topAndRightView:containView viewSize:size offet:point];
}


+ (void)makePostionView:(UIView *)subView atBottomAndLeft:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point{
    [containView addSubview:subView];
    [self makePostionView:subView bottomAndLeftView:containView viewSize:size offet:point];
}

+ (void)makePostionView:(UIView *)subView atBottomAndRight:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point{
    [containView addSubview:subView];
    [self makePostionView:subView bottomAndRightView:containView viewSize:size offet:point];
}


+ (void)makePostionView:(UIView *)subView onTopAndLeftView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point{
    [containView.superview addSubview:subView];
    
    [self makePostionView:subView topAndLeftView:containView viewSize:size offet:point];
}

+ (void)makePostionView:(UIView *)subView onTopAndRightView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point{
    [containView.superview addSubview:subView];
    [self makePostionView:subView topAndRightView:containView viewSize:size offet:point];
    
}

+ (void)makePostionView:(UIView *)subView onBottomAndLeftView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point{
    [containView.superview addSubview:subView];
    [self makePostionView:subView bottomAndLeftView:containView viewSize:size offet:point];
}

+ (void)makePostionView:(UIView *)subView onBottomAndRightView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point{
    [containView.superview addSubview:subView];
    [self makePostionView:subView bottomAndRightView:containView viewSize:size offet:point];
}


+ (void)makePostionView:(UIView *)view topAndLeftView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point{
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(containView).offset(point.y);
        make.left.equalTo(containView).offset(point.x);
        make.width.equalTo(size.width);
        make.height.equalTo(size.height);
    }];
}

+ (void)makePostionView:(UIView *)view topAndRightView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point{
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(containView).offset(point.y);
        make.right.equalTo(containView).offset(point.x);
        make.width.equalTo(size.width);
        make.height.equalTo(size.height);
    }];
}

+ (void)makePostionView:(UIView *)view bottomAndLeftView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point{
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(containView).offset(point.y);
        make.left.equalTo(containView).offset(point.x);
        make.width.equalTo(size.width);
        make.height.equalTo(size.height);
    }];
}

+ (void)makePostionView:(UIView *)view bottomAndRightView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point{
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(containView).offset(point.y);
        make.left.equalTo(containView).offset(point.x);
        make.width.equalTo(size.width);
        make.height.equalTo(size.height);
    }];
}


+ (void)makePostionView:(UIView *)subView topView:(UIView *)topView leftView:(UIView *)leftView bottomView:(UIView *)bottomView rightView:(UIView *)rightView offet:(CGRect)offet{
    
}
@end
