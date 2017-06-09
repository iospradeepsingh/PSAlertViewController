



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
