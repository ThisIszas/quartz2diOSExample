//
//  ViewController.m
//  Quartz 2d iOS Example
//
//  Created by Zheng Li on 2021/5/18.
//

#import "ViewController.h"
#import "USFlagView.h"

#define KScreenWidth ([[UIScreen mainScreen] bounds].size.width)
#define KScreenHeight [[UIScreen mainScreen] bounds].size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *displayView = [[USFlagView alloc] initWithFrame:CGRectMake(0, 100, KScreenWidth, 400)];
    [self.view addSubview:displayView];
    
    // Do any additional setup after loading the view.
}


@end
