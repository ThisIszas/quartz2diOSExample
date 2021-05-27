//
//  ChinaFlagView.m
//  Quartz 2d iOS Example
//
//  Created by Zheng Li on 2021/5/18.
//

#import "ChinaFlagView.h"

#define DEGREES_TO_RADIANS(x) ((x)/180.0*M_PI)
#define RADIANS_TO_DEGREES(x) ((x)/M_PI*180.0)

@implementation ChinaFlagView


- (void)drawRect:(CGRect)rect {
//    288×192
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGRect contextRect = CGRectMake(0, 0, KScreenWidth, KScreenWidth / 288 * 192);
 
    CGContextRef starLayerContext;
    CGLayerRef   starLayer;
    CGRect       flagBoundingBox, starField;
    
    starField  =  CGRectMake (0, 102, 160, 119); // star field// 9
    
    /// 这里是直接按照ios的坐标系(左上原点)画的, 不再翻转CTM了.
    
    /// set flag background
    flagBoundingBox = CGRectMake (0, 0, contextRect.size.width, contextRect.size.height);
    CGContextSetRGBFillColor(context, 1, 0, 0, 1);
    CGContextFillRect(context, flagBoundingBox);
    
    /// make star layer
    starLayer = CGLayerCreateWithContext(context, starField.size, NULL);
    starLayerContext = CGLayerGetContext(starLayer);
    /// 五角星颜色, 黄色
    CGContextSetRGBFillColor(starLayerContext, 0.98, 0.87, 0, 1);
    /// 画五角星的path到 layer context上
    cg_drawPentagramByLine(starLayerContext, CGPointMake(8, 8), 8);
    /// 填充五角星的path
    CGContextFillPath(starLayerContext);
    
    /// 画最大的星星
    CGContextSaveGState(context);
    /// scale 5倍来画大星星
    CGContextScaleCTM(context, 5, 5);
    CGContextDrawLayerAtPoint(context, CGPointMake(4, 5), starLayer);
    CGContextRestoreGState(context);
    
    CGContextSaveGState(context);
    /// scale context来画小星星
    CGContextScaleCTM(context, 1.8, 1.8);
    
    CGContextSaveGState(context);
    CGContextRotateCTM(context, DEGREES_TO_RADIANS(10));
    /// 右上第一颗小星星
    CGContextDrawLayerAtPoint(context, CGPointMake(65, -7), starLayer);
    /// 最下面的小星星
    CGContextDrawLayerAtPoint(context, CGPointMake(75, 45), starLayer);
    CGContextRestoreGState(context);
    
    CGContextSaveGState(context);
    CGContextRotateCTM(context, DEGREES_TO_RADIANS(-30));
    /// 第二颗小星星
    CGContextDrawLayerAtPoint(context, CGPointMake(56, 60), starLayer);
    CGContextRestoreGState(context);
    
    CGContextSaveGState(context);
    CGContextRotateCTM(context, DEGREES_TO_RADIANS(-2));
    /// 第三颗小星星
    CGContextDrawLayerAtPoint(context, CGPointMake(80, 45), starLayer);
    CGContextRestoreGState(context);
    
    CGContextRestoreGState(context);
}

void cg_drawPentagramByLine(CGContextRef context, CGPoint center,CGFloat radius)
{
    CGPoint p1 = CGPointMake(center.x, center.y - radius);
    CGContextMoveToPoint(context, p1.x, p1.y);
    CGFloat angle=4 * M_PI / 5.0;

    for (int i=1; i<=5; i++)
    {
        CGFloat x = center.x -sinf(i*angle)*radius;
        CGFloat y = center.y -cosf(i*angle)*radius;
        CGContextAddLineToPoint(context, x, y);
    }

    CGContextClosePath(context);
}

@end
