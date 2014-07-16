//
// Created by Agathe Battestini on 2/29/14.
//

#import <Foundation/Foundation.h>

@interface UIAlertView (ABUtils)

/**
* Shows an alertView for Errors
*/

+ (void)showAlertViewForError:(NSError *)error title:(NSString *)title;

+ (void)showAlertViewForNotDoneYet;

@end