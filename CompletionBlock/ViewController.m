//
//  ViewController.m
//  CompletionBlock
//
//  Created by Rajagopal G on 21/11/16.
//  Copyright © 2016 TringappsPvtLtd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
NSString *convertedDateToString;
@implementation ViewController
@synthesize datePicker;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}

//-(void)sampleCompletionBlockToConvertDateToString:(NSDate *)dateToConvert completionBlock:(void (^)(BOOL))complHandler{
//    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
//    [formatter setDateFormat:@"MMM dd yyyy HH:mm:ss"];
//    NSString *stringFromDate = [formatter stringFromDate:dateToConvert];
//}

-(void)convertDateToStringWithDate:(NSDate *)dateToConvert completionBlock:(customCompletionBlock)withCompletionBlock{
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"MMM dd yyyy"];
    NSString *stringFromDate = [formatter stringFromDate:dateToConvert];
    convertedDateToString = stringFromDate;
    if(convertedDateToString != nil){
        withCompletionBlock(YES);
    }else{
        withCompletionBlock(NO);
    }
}

- (IBAction)datePicked:(id)sender {
    NSDate *pickedDate = datePicker.date;
    [self convertDateToStringWithDate:pickedDate completionBlock:^(BOOL completed){
        if(completed){
            NSLog(@"Process Completed edited for commit");
            NSLog(@"%@",convertedDateToString);
        }
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
