//
//  RSAlertViewManager.m
//  NetworkTaxiCustomer
//
//  Created by thinkjoy on 16/8/26.
//  Copyright © 2016年 Thinkjoy_RS. All rights reserved.
//

#import "RSAlertViewManager.h"

@interface RSAlertViewManager ()

@end

@implementation RSAlertViewManager

#pragma mark    0个按钮
+ (void)showSingleAlertViewWithControllerTitle:(NSString *)controllerTitle
                                       message:(NSString *)message
                               controllerStyle:(UIAlertControllerStyle)controllerStyle
                             dismissAfterDelay:(CGFloat)afterDelay {
    UIAlertController *alertC = [UIAlertController alertControllerWithTitle:controllerTitle message:message preferredStyle:controllerStyle];
    [[UIApplication sharedApplication].windows.lastObject.rootViewController presentViewController:alertC animated:YES completion:^{
        [[RSAlertViewManager alloc] performSelector:@selector(dismiss:) withObject:alertC afterDelay:afterDelay];
    }];
    
}
- (void)dismiss:(UIAlertController *)aler {
    [aler dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark    1个按钮
+ (void)showAlertViewWithControllerTitle:(NSString *)controllerTitle
                                 message:(NSString *)message
                         controllerStyle:(UIAlertControllerStyle)controllerStyle
                         isHaveTextField:(BOOL)isHaveTextField
                             actionTitle:(NSString *)actionTitle
                             actionStyle:(UIAlertActionStyle)actionStyle
                         alertViewAction:(AlertViewAction)alertViewAction {
    
    UIAlertController *alertC = [UIAlertController alertControllerWithTitle:controllerTitle message:message preferredStyle:controllerStyle];
    if (isHaveTextField == YES) {
        [alertC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
            
        }];
    }
    UIAlertAction *alertOne = [UIAlertAction actionWithTitle:actionTitle style:actionStyle handler:^(UIAlertAction * _Nonnull action)  {
        alertViewAction(action);
    }];
    [alertC addAction:alertOne];
//    self.alertController = alertC;
    [[UIApplication sharedApplication].windows.lastObject.rootViewController presentViewController:alertC animated:YES completion:nil];
}

#pragma mark    2个按钮
+ (void)showAlertViewWithControllerTitle:(NSString *)controllerTitle
                                 message:(NSString *)message
                         controllerStyle:(UIAlertControllerStyle)controllerStyle
                         isHaveTextField:(BOOL)isHaveTextField
                             actionTitle:(NSString *)actionTitle
                             actionStyle:(UIAlertActionStyle)actionStyle
                         alertViewAction:(AlertViewAction)alertViewAction
                        otherActionTitle:(NSString *)otherActionTitle
                        otherActionStyle:(UIAlertActionStyle)otherActionStyle
                    otherAlertViewAction:(AlertViewOtherAction)otherAlertViewAction {
    
    UIAlertController *alertC = [UIAlertController alertControllerWithTitle:controllerTitle message:message preferredStyle:controllerStyle];
    if (isHaveTextField == YES) {
        [alertC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
            
        }];
    }
    UIAlertAction *alertOne = [UIAlertAction actionWithTitle:actionTitle style:actionStyle handler:^(UIAlertAction * _Nonnull action)  {
        alertViewAction(action);
    }];
    UIAlertAction *alertTwo = [UIAlertAction actionWithTitle:otherActionTitle style:otherActionStyle handler:^(UIAlertAction * _Nonnull action)  {
        otherAlertViewAction(action);
    }];
    [alertC addAction:alertOne];
    [alertC addAction:alertTwo];
//    self.alertController = alertC;
    [[UIApplication sharedApplication].windows.lastObject.rootViewController presentViewController:alertC animated:YES completion:nil];
    
}

#pragma mark    3个按钮
+ (void)showAlertViewWithControllerTitle:(NSString *)controllerTitle
                                 message:(NSString *)message
                         controllerStyle:(UIAlertControllerStyle)controllerStyle
                         isHaveTextField:(BOOL)isHaveTextField
                             actionTitle:(NSString *)actionTitle
                             actionStyle:(UIAlertActionStyle)actionStyle
                         alertViewAction:(AlertViewAction)alertViewAction
                        otherActionTitle:(NSString *)otherActionTitle
                        otherActionStyle:(UIAlertActionStyle)otherActionStyle
                    otherAlertViewAction:(AlertViewOtherAction)otherAlertViewAction
                        threeActionTitle:(NSString *)threeActionTitle
                        threeActionStyle:(UIAlertActionStyle)threeActionStyle
                    threeAlertViewAction:(AlertViewOtherAction)threeAlertViewAction
{
    UIAlertController *alertC = [UIAlertController alertControllerWithTitle:controllerTitle message:message preferredStyle:controllerStyle];
    if (isHaveTextField == YES) {
        [alertC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
            
        }];
    }
    UIAlertAction *alertOne = [UIAlertAction actionWithTitle:actionTitle style:actionStyle handler:^(UIAlertAction * _Nonnull action)  {
        alertViewAction(action);
    }];
    UIAlertAction *alertTwo = [UIAlertAction actionWithTitle:otherActionTitle style:otherActionStyle handler:^(UIAlertAction * _Nonnull action)  {
        otherAlertViewAction(action);
    }];
    UIAlertAction *alertThree = [UIAlertAction actionWithTitle:threeActionTitle style:threeActionStyle handler:^(UIAlertAction * _Nonnull action)  {
        threeAlertViewAction(action);
    }];
    [alertC addAction:alertOne];
    [alertC addAction:alertTwo];
    [alertC addAction:alertThree];
//    self.alertController = alertC;
    
    [[[UIApplication sharedApplication] keyWindow].rootViewController presentViewController:alertC animated:YES completion:nil];
    
}

@end
