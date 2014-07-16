//
// Created by Agathe Battestini on 2/29/14.
//

#import "UIAlertView+ABUtils.h"


@implementation UIAlertView (ABUtils)

+ (void)showAlertViewForError:(NSError*)error title:(NSString*)title {

    NSString *desc = [error.userInfo objectForKey:NSLocalizedDescriptionKey];
    NSString *recovery = [error.userInfo objectForKey:NSLocalizedRecoverySuggestionErrorKey];
    NSMutableString *message = [NSMutableString string];
    if(desc)
        [message appendFormat:@"%@\n",desc];
    if(recovery)
        [message appendString:recovery];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil
                                     cancelButtonTitle:NSLocalizedString(@"OkButton", nil) otherButtonTitles:nil];
    [alertView show];
}

+ (void)showAlertViewForNotDoneYet {

    NSString *desc = @"Not done yet";
    NSString *title = @"TODO";

    NSMutableString *message = [NSMutableString string];
    if(desc)
        [message appendFormat:@"%@\n",desc];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil
                                     cancelButtonTitle:NSLocalizedString(@"OkButton", nil) otherButtonTitles:nil];
    [alertView show];
}


@end