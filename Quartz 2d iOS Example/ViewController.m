//
//  ViewController.m
//  Quartz 2d iOS Example
//
//  Created by Zheng Li on 2021/5/18.
//

#import "ViewController.h"
#import "USFlagView.h"
#import "ChinaFlagView.h"

//#import <objc/runtime.h>

@interface ViewController ()
//@property(nonatomic, strong) NSString *fas;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *displayView = [[ChinaFlagView alloc] initWithFrame:CGRectMake(0, 100, KScreenWidth, 400)];
    [self.view addSubview:displayView];
    
    // Do any additional setup after loading the view.
//    unsigned int count, i;
//    objc_property_t *properties = class_copyPropertyList([self class], &count);
//
//    for(i=0; i<count; i++){
//        objc_property_t property = properties[i];
//
//        fprintf(stdout, "%s %s\n", property_getName(property), property_getAttributes(property));
//    }
}

@end
