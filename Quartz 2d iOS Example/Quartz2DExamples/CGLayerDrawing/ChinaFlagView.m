//
//  ChinaFlagView.m
//  Quartz 2d iOS Example
//
//  Created by Zheng Li on 2021/5/18.
//

#import "ChinaFlagView.h"

@implementation ChinaFlagView


- (void)drawRect:(CGRect)rect {
//    288×192
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGRect contextRect = CGRectMake(0, 0, KScreenWidth, KScreenWidth / 288 * 192);
    
    int          i, j,
    num_six_star_rows = 5,
    num_five_star_rows = 4;
    CGFloat      start_x = 5.0,// 1
    start_y = 108.0,// 2
    red_stripe_spacing = 34.0,// 3
    h_spacing = 26.0,// 4
    v_spacing = 22.0;// 5
    CGContextRef starLayerContext,
    myLayerContext2;
    CGLayerRef   stripeLayer,
    starLayer;
    CGRect       flagBoundingBox,// 6
    stripeRect,
    starField;
    
    /// set constants
    const CGPoint starPathPoints[] = {{ 5, 5},   {10, 15},// 7
        {10, 15},  {15, 5},
        {15, 5},   {2.5, 11},
        {2.5, 11}, {16.5, 11},
        {16.5, 11},{5, 5}};
    
    starField  =  CGRectMake (0, 102, 160, 119); // star field// 9
    
    
    /// reverse context, iOS CTM start at top left, the CTM should be reversed
    CGContextTranslateCTM(context, 0.0, 400);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    /// set flag background
    flagBoundingBox = CGRectMake (0, 0, contextRect.size.width, contextRect.size.height);
    CGContextSetRGBFillColor(context, 1, 0, 0, 1);
    CGContextFillRect(context, flagBoundingBox);
    
    /// make star layer
    starLayer = CGLayerCreateWithContext(context, starField.size, NULL);
    starLayerContext = CGLayerGetContext(starLayer);
    CGContextSetRGBFillColor(starLayerContext, 0.6, 1, 0.5, 1);
}


@end
