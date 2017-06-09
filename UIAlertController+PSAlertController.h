//
//  UIAlertController+KTAlertController.h
//  Kanthaka
//
//  Created by InfoEnumEl03 on 28/10/16.
//  Copyright © 2016 KT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (PSAlertController)
typedef void (^UIAlertCompletionBlock) (UIAlertController *alertViewController, NSInteger buttonIndex);

+ (instancetype)showAlertIn:(UIViewController *)controller
                  WithTitle:(NSString *)title
                    message:(NSString *)message
          cancelButtonTitle:(NSString *)cancelButtonTitle
          otherButtonTitles:(NSString *)otherButtonTitle
                   tapBlock:(UIAlertCompletionBlock)tapBlock;
@end
