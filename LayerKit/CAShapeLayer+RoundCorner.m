//
//  CAShapeLayer+RoundCorner.m
//  LayerKit
//
//  Created by HL on 2018/8/13.
//  Copyright © 2018年 XL. All rights reserved.
//

#import "CAShapeLayer+RoundCorner.h"
#import <UIKit/UIKit.h>

@implementation CAShapeLayer (RoundCorner)

// 1. 它依附于一个给定的path,必须给与path,而且,即使path不完整也会自动首尾相接
// 2. strokeStart以及strokeEnd代表着在这个path中所占用的百分比
// 3. CAShapeLayer动画仅仅限于沿着边缘的动画效果,它实现不了填充效果

/**
 绘制圆角

 @param shapeLayerRect frame
 @return CAShapeLayer
 */
+ (CAShapeLayer *)drawRoundCornerWithCAShapeLayerRect:(CGRect)shapeLayerRect {
    CAShapeLayer *mask = [CAShapeLayer layer];
    mask.frame = shapeLayerRect;
//  mask.path = [UIBezierPath bezierPathWithRoundedRect:shapeLayerRect cornerRadius:shapeLayerRect.size.width/2].CGPath;//设置圆角
    mask.path = [UIBezierPath bezierPathWithRoundedRect:shapeLayerRect byRoundingCorners:UIRectCornerAllCorners cornerRadii:shapeLayerRect.size].CGPath;///cornerRadii 圆角半径
    return mask;
}

@end
