//
//  ViewController.h
//  CompletionBlock
//
//  Created by Rajagopal G on 21/11/16.
//  Copyright © 2016 TringappsPvtLtd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
typedef void ( ^customCompletionBlock) (BOOL);
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
-(void)convertDateToStringWithDate:(NSDate *)dateToConvert completionBlock:(customCompletionBlock) withCompletionBlock;
- (IBAction)datePicked:(id)sender;
@end

