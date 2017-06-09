//
//  UIAlertController+KTAlertController.m
//  Kanthaka
//
//  Created by InfoEnumEl03 on 28/10/16.
//  Copyright © 2016 KT. All rights reserved.
//

#import "UIAlertController+PSAlertController.h"

@implementation UIAlertController (PSAlertController)

+ (instancetype)showAlertIn:(UIViewController *)controller
                  WithTitle:(NSString *)title
                    message:(NSString *)message
          cancelButtonTitle:(NSString *)cancelButtonTitle
          otherButtonTitles:(NSString *)otherButtonTitle
                   tapBlock:(UIAlertCompletionBlock)tapBlock {
    
    UIAlertController *alertController = [self alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    if(cancelButtonTitle != nil) {
        
        UIAlertAction *cancelButton = [UIAlertAction
                                       actionWithTitle:cancelButtonTitle
                                       style:UIAlertActionStyleCancel
                                       handler:^(UIAlertAction *action)
                                       {
                                           tapBlock(alertController, 0); // CANCEL BUTTON CALL BACK ACTION
                                       }];
        [alertController addAction:cancelButton];
        
    }
    
    if(otherButtonTitle != nil) {
        
        UIAlertAction *otherButton = [UIAlertAction
                                      actionWithTitle:otherButtonTitle
                                      style:UIAlertActionStyleDefault
                                      handler:^(UIAlertAction *action)
                                      {
                                          tapBlock(alertController, 1); // OTHER BUTTON CALL BACK ACTION
                                      }];
        
        [alertController addAction:otherButton];
    }
    
    [controller presentViewController:alertController animated:YES completion:nil];
    
    return alertController;
}

@end
