//
//  ZLQuartzBaseUIView.m
//  Quartz 2d iOS Example
//
//  Created by Zheng Li on 2021/5/18.
//

#import "ZLQuartzBaseUIView.h"

@implementation ZLQuartzBaseUIView
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}
@end
