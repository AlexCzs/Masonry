//
//  MasonryTools.m
//  Masonry iOS Examples
//
//  Created by 陈昭燊 on 16/7/27.
//  Copyright © 2016年 Jonas Budelmann. All rights reserved.
//

#import "MasonryTools.h"

#define MasonryWidthHeight \
    make.width.equalTo(@(size.width)); \
    make.height.equalTo(@(size.height))

@implementation MasonryTools

+ (void)makePostionView:(UIView *)subView atTopAndLeftView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point{
    [containView addSubview:subView];
    [subView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(containView).offset(point.y);
        make.left.equalTo(containView).offset(point.x);
        MasonryWidthHeight;
    }];
}

+ (void)makePostionView:(UIView *)subView atTopAndRightView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point{
    [containView addSubview:subView];
    [subView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(containView).offset(point.y);
        make.right.equalTo(containView).offset(point.x);
        MasonryWidthHeight;
    }];
}

+ (void)makePostionView:(UIView *)subView atTopAndCenterView:(UIView *)containView viewSize:(CGSize)size offet:(CGFloat)offet{
    [containView addSubview:subView];
    [subView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(containView);
        make.top.equalTo(containView).offset(offet);
        MasonryWidthHeight;
    }];
}

+ (void)makePostionView:(UIView *)subView atBottomAndLeft:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point{
    [containView addSubview:subView];
    [subView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(containView).offset(point.y);
        make.left.equalTo(containView).offset(point.x);
        MasonryWidthHeight;
    }];
}

+ (void)makePostionView:(UIView *)subView atBottomAndRight:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point{
    [containView addSubview:subView];
    [subView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(containView).offset(point.y);
        make.right.equalTo(containView).offset(point.x);
        MasonryWidthHeight;
    }];
}

+ (void)makePostionView:(UIView *)subView atBottomAndCenterView:(UIView *)containView viewSize:(CGSize)size offet:(CGFloat)offet{
    [containView addSubview:subView];
    [subView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(containView);
        make.bottom.equalTo(containView).offset(offet);
        MasonryWidthHeight;
    }];
}


+ (void)makePostionView:(UIView *)subView onTopAndLeftView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point{
    [containView.superview addSubview:subView];
    [subView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(containView.top).offset(point.y);
        make.left.equalTo(containView).offset(point.x);
        MasonryWidthHeight;
    }];
}

+ (void)makePostionView:(UIView *)subView onTopAndRightView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point{
    [containView.superview addSubview:subView];
    [subView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(containView.top).offset(point.y);
        make.right.equalTo(containView).offset(point.x);
        MasonryWidthHeight;
    }];
    
}

+ (void)makePostionView:(UIView *)subView onTopAndCenterView:(UIView *)containView viewSoze:(CGSize)size offet:(CGFloat)offset{
    [containView.superview addSubview:subView];
    [subView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(containView.top).offset(offset);
        make.centerX.equalTo(containView);
        MasonryWidthHeight;
    }];
}

+ (void)makePostionView:(UIView *)subView onBottomAndLeftView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point{
    [containView.superview addSubview:subView];
    [subView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(containView.bottom).offset(point.y);
        make.left.equalTo(containView).offset(point.x);
        MasonryWidthHeight;
    }];
}

+ (void)makePostionView:(UIView *)subView onBottomAndRightView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point{
    [containView.superview addSubview:subView];
    [subView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(containView.bottom).offset(point.y);
        make.right.equalTo(containView).offset(point.x);
        MasonryWidthHeight;
    }];
}

+ (void)makePostionView:(UIView *)subView onBottomAndCenterView:(UIView *)containView viewSoze:(CGSize)size offet:(CGFloat)offset{
    [containView.superview addSubview:subView];
    [subView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(containView.bottom).offset(offset);
        make.centerX.equalTo(containView);
        MasonryWidthHeight;
    }];
}

+ (void)makePostionView:(UIView *)subView atTheCenterOfView:(UIView *)containView viewSize:(CGSize)size{
    [containView addSubview:subView];
    [subView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(containView);
        MasonryWidthHeight;
    }];
}

+ (void)makePostionView:(UIView *)subView onTheLeftAndCenterView:(UIView *)containView viewSize:(CGSize)size offet:(CGFloat)offset{
    [containView.superview addSubview:subView];
    [subView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(containView.left).offset(offset);
        make.centerY.equalTo(containView);
        MasonryWidthHeight;
    }];
}


+ (void)makePostionView:(UIView *)subView onTheRightAndCenterView:(UIView *)containView viewSize:(CGSize)size offet:(CGFloat)offset{
    [containView.superview addSubview:subView];
    [subView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(containView.right).offset(offset);
        make.centerY.equalTo(containView);
        MasonryWidthHeight;
    }];
}

+ (void)makePostionView:(UIView *)subView atTheLeftAndCenterView:(UIView *)containView viewSize:(CGSize)size offet:(CGFloat)offset{
    [containView addSubview:subView];
    [subView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(containView.left).offset(offset);
        make.centerY.equalTo(containView);
        MasonryWidthHeight;
    }];
}


+ (void)makePostionView:(UIView *)subView atTheRightAndCenterView:(UIView *)containView viewSize:(CGSize)size offet:(CGFloat)offset{
    [containView addSubview:subView];
    [subView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(containView.right).offset(offset);
        make.centerY.equalTo(containView);
        MasonryWidthHeight;
    }];
}


+ (void)makePostionView:(UIView *)subView topView:(UIView *)topView leftView:(UIView *)leftView bottomView:(UIView *)bottomView rightView:(UIView *)rightView offet:(CGRect)offet{
    [subView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(topView.top).offset(offet.origin.y);
        make.left.equalTo(leftView.left).offset(offet.origin.x);
        make.bottom.equalTo(bottomView.bottom).offset(offet.size.height);
        make.right.equalTo(bottomView.right).offset(offet.size.width);
    }];
}
@end
