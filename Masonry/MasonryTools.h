//
//  MasonryTools.h
//  Masonry iOS Examples
//
//  Created by 陈昭燊 on 16/7/27.
//  Copyright © 2016年 Jonas Budelmann. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Masonry.h"

@interface MasonryTools : NSObject

/*!
 * 添加子视图，根据父视图的左边和顶部设置边距
 *
 * @param subView     子视图
 * @param containView 父视图
 * @param size        子视图宽高
 * @param point       距父视图左上位置，point.x表示水平距离，point.y表示顶部垂直距离
 */
+ (void)makePostionView:(UIView *)subView atTopAndLeftView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point;
/*!
 * 添加子视图，根据父视图的右边和顶部设置边距
 *
 * @param subView     子视图
 * @param containView 父视图
 * @param size        子视图宽高
 * @param point       距父视图右上位置，point.x表示水平距离，point.y表示顶部垂直距离
 */
+ (void)makePostionView:(UIView *)subView atTopAndRightView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point;


/*!
 * 添加子视图，根据父视图顶部设置边距
 *
 * @param subView     子视图
 * @param containView 父视图
 * @param size        子视图宽高
 * @param offet       距离父视图顶部距离
 */
+ (void)makePostionView:(UIView *)subView atTopAndCenterView:(UIView *)containView viewSize:(CGSize)size offet:(CGFloat)offet;

/*!
 * 添加子视图，根据父视图的左边和底部设置边距
 * @param subView     子视图
 * @param containView 父视图
 * @param size        子视图宽高
 * @param point       距父视图左下位置，point.x表示水平距离，point.y表示顶部垂直距离
 */
+ (void)makePostionView:(UIView *)subView atBottomAndLeft:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point;

/*!
 * 添加子视图，根据父视图的右边和底部设置边距
 * @param subView     子视图
 * @param containView 父视图
 * @param size        子视图宽高
 * @param point       距父视图右下位置，point.x表示水平距离，point.y表示顶部垂直距离
 */
+ (void)makePostionView:(UIView *)subView atBottomAndRight:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point;

/*!
 * 添加子视图，根据父视图底部设置边距
 *
 * @param subView     子视图
 * @param containView 父视图
 * @param size        子视图宽高
 * @param offet       距离父视图底部距离
 */
+ (void)makePostionView:(UIView *)subView atBottomAndCenterView:(UIView *)containView viewSize:(CGSize)size offet:(CGFloat)offet;

/*!
 * 添加并列视图，根据左上位置，确定当前视图的位置
 *
 * @param subView     约束视图
 * @param containView 并列视图
 * @param size        约束视图宽高
 * @param point       距并列视图的左上位置，point.x表示水平距离，point.y表示顶部垂直距离
 */
+ (void)makePostionView:(UIView *)subView onTopAndLeftView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point;

/*!
 * 添加并列视图，根据右上位置，确定当前视图的位置
 *
 * @param subView     约束视图
 * @param containView 并列视图
 * @param size        约束视图宽高
 * @param point       距并列视图的右上位置，point.x表示水平距离，point.y表示顶部垂直距离
 */
+ (void)makePostionView:(UIView *)subView onTopAndRightView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point;

/*!
 * 添加并列视图，根据并列视图的正上方，确定当前视图位置
 *
 * @param subView     约束视图
 * @param containView 并列视图
 * @param size        约束视图宽高
 * @param offet       距并列视图正上方距离
 */
+ (void)makePostionView:(UIView *)subView onTopAndCenterView:(UIView *)containView viewSoze:(CGSize)size offet:(CGFloat)offset;


/*!
 * 添加并列视图，根据的左下位置，确定当前视图的位置
 *
 * @param subView     约束视图
 * @param containView 并列视图
 * @param size        约束视图宽高
 * @param point       距并列视图的左下位置，point.x表示水平距离，point.y表示顶部垂直距离
 */
+ (void)makePostionView:(UIView *)subView onBottomAndLeftView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point;

/*!
 * 添加并列视图，根据的右下位置，确定当前视图的位置
 *
 * @param subView     约束视图
 * @param containView 并列视图
 * @param size        约束视图宽高
 * @param point       距并列视图的右下位置，point.x表示水平距离，point.y表示顶部垂直距离
 */
+ (void)makePostionView:(UIView *)subView onBottomAndRightView:(UIView *)containView viewSize:(CGSize)size offet:(CGPoint)point;

/*!
 * 添加并列视图，根据并列视图的正下方，确定当前视图位置
 *
 * @param subView     约束视图
 * @param containView 并列视图
 * @param size        约束视图宽高
 * @param offet       距并列视图正下方距离
 */
+ (void)makePostionView:(UIView *)subView onBottomAndCenterView:(UIView *)containView viewSoze:(CGSize)size offet:(CGFloat)offset;

/*!
 * 添加子视图，子视图在俯视图的中央
 *
 * @param subView     子视图
 * @param containView 父视图
 * @param size        子视图宽高
 */
+ (void)makePostionView:(UIView *)subView atTheCenterOfView:(UIView *)containView viewSize:(CGSize)size;

/*!
 * 添加并列视图，设置正左边距离
 *
 * @param subView     约束视图
 * @param containView 并列视图
 * @param size        约束视图大小
 * @param offet       距离约束视图左边距离
 */
+ (void)makePostionView:(UIView *)subView onTheLeftAndCenterView:(UIView *)containView viewSize:(CGSize)size offet:(CGFloat)offset;

/*!
 * 添加并列视图，设置正左边距离
 *
 * @param subView     约束视图
 * @param containView 并列视图
 * @param size        约束视图大小
 * @param offet       距离约束视图右边距离
 */
+ (void)makePostionView:(UIView *)subView onTheRightAndCenterView:(UIView *)containView viewSize:(CGSize)size offet:(CGFloat)offset;

/*!
 * 添加子视图，根据父视图正左边距确定子视图位置
 *
 * @param subView     子视图
 * @param containView 父视图
 * @param size        子视图大小
 * @param offet       距离父视图左边距离
 */
+ (void)makePostionView:(UIView *)subView atTheLeftAndCenterView:(UIView *)containView viewSize:(CGSize)size offet:(CGFloat)offset;

/*!
 * 添加子视图，根据父视图右边距确定子视图位置
 *
 * @param subView     子视图
 * @param containView 父视图
 * @param size        子视图大小
 * @param offet       距离父视图右边距离
 */
+ (void)makePostionView:(UIView *)subView atTheRightAndCenterView:(UIView *)containView viewSize:(CGSize)size offet:(CGFloat)offset;

/*!
 * 根据四个约束确定子视图的约束
 *
 * @param subView    子视图
 * @param topView    顶部依赖视图
 * @param leftView   左边依赖视图
 * @param bottomView 底部依赖视图
 * @param rightView  右边依赖视图
 * @param offet      依赖边距,上：y,左：x,下：height,右：width
 */
+ (void)makePostionView:(UIView *)subView topView:(UIView *)topView leftView:(UIView *)leftView bottomView:(UIView *)bottomView rightView:(UIView *)rightView offet:(CGRect)offet;

@end
