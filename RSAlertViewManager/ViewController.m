//
//  ViewController.m
//  RSAlertViewManager
//
//  Created by thinkjoy on 16/8/26.
//  Copyright © 2016年 Thinkjoy_RS. All rights reserved.
//

#import "ViewController.h"
#import "RSAlertViewManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [RSAlertViewManager showSingleAlertViewWithControllerTitle:@"111" message:@"222" controllerStyle:UIAlertControllerStyleAlert dismissAfterDelay:3];
}
@end
