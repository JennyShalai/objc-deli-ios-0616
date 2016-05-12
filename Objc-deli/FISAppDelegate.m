//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    NSInteger numberOfCustomersInLine = [deliLine count];
    if (numberOfCustomersInLine == 0) {
        return @"The line is currently empty.";
    } else {
        NSString *lineFormattedString = @"The line is:";
        NSString *customerInLineWithNumber = @"";

            for (NSInteger i = 0; i < numberOfCustomersInLine; i++) {
                customerInLineWithNumber = [customerInLineWithNumber stringByAppendingFormat:@"\n%li. %@", i+1, deliLine[i]];
            }
        lineFormattedString = [lineFormattedString stringByAppendingString:customerInLineWithNumber];
        return lineFormattedString;
    }
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
}
- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *nextCustomerInTheLine = [deliLine objectAtIndex:0];
    [deliLine removeObjectAtIndex:0];
    return nextCustomerInTheLine;
}

@end
