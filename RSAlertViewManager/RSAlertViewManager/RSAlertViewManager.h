//
//  RSAlertViewManager.h
//  NetworkTaxiCustomer
//
//  Created by thinkjoy on 16/8/26.
//  Copyright © 2016年 Thinkjoy_RS. All rights reserved.
//  对系统的AlertViewController简单的封装

#import <UIKit/UIKit.h>

typedef void(^AlertViewAction)(UIAlertAction *action);
typedef void(^AlertViewOtherAction)(UIAlertAction *action);

@interface RSAlertViewManager : NSObject

#pragma mark    只有提示框
/**
 *  创建一个只有提示框
 *
 *  @param controllerTitle 警告框标题
 *  @param message         提示信息
 *  @param controllerStyle 样式
 *  @param afterDelay      自动消失时间
 */
+ (void)showSingleAlertViewWithControllerTitle:(NSString *)controllerTitle
                                       message:(NSString *)message
                               controllerStyle:(UIAlertControllerStyle)controllerStyle
                             dismissAfterDelay:(CGFloat)afterDelay;


#pragma mark    只有一个action
/**
 *  创建一个只有一个action
 *
 *  @param controllerTitle 警告框标题
 *  @param message         提示信息
 *  @param controllerStyle 样式
 *  @param isHaveTextField 是否需要一个输入框
 *  @param actionTitle     按钮信息
 *  @param actionStyle     按钮样式
 *  @param alertViewAction block名字
 */
+ (void)showAlertViewWithControllerTitle:(NSString *)controllerTitle
                                 message:(NSString *)message
                         controllerStyle:(UIAlertControllerStyle)controllerStyle
                         isHaveTextField:(BOOL)isHaveTextField
                             actionTitle:(NSString *)actionTitle
                             actionStyle:(UIAlertActionStyle)actionStyle
                         alertViewAction:(AlertViewAction)alertViewAction;

#pragma mark    创建一个有两个action
/**
 *  创建一个有两个action
 *
 *  @param controllerTitle 警告框标题
 *  @param message         提示信息
 *  @param controllerStyle 样式
 *  @param isHaveTextField 是否需要一个输入框
 *  @param actionTitle          按钮信息
 *  @param actionStyle          按钮样式
 *  @param alertViewAction      block名字
 *  @param otherActionTitle     按钮信息
 *  @param otherActionStyle     按钮样式
 *  @param otherAlertViewAction block名字
 */
+ (void)showAlertViewWithControllerTitle:(NSString *)controllerTitle
                                 message:(NSString *)message
                         controllerStyle:(UIAlertControllerStyle)controllerStyle
                         isHaveTextField:(BOOL)isHaveTextField
                             actionTitle:(NSString *)actionTitle
                             actionStyle:(UIAlertActionStyle)actionStyle
                         alertViewAction:(AlertViewAction)alertViewAction
                        otherActionTitle:(NSString *)otherActionTitle
                        otherActionStyle:(UIAlertActionStyle)otherActionStyle
                    otherAlertViewAction:(AlertViewOtherAction)otherAlertViewAction;

#pragma mark    三个
/**
 *  三个
 *
 *  @param controllerTitle      <#controllerTitle description#>
 *  @param message              <#message description#>
 *  @param controllerStyle      <#controllerStyle description#>
 *  @param isHaveTextField      <#isHaveTextField description#>
 *  @param actionTitle          <#actionTitle description#>
 *  @param actionStyle          <#actionStyle description#>
 *  @param alertViewAction      <#alertViewAction description#>
 *  @param otherActionTitle     <#otherActionTitle description#>
 *  @param otherActionStyle     <#otherActionStyle description#>
 *  @param otherAlertViewAction <#otherAlertViewAction description#>
 */
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
                    threeAlertViewAction:(AlertViewOtherAction)threeAlertViewAction;

@end
