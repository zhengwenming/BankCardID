//
//  ViewController.m
//  BankIDSearch
//
//  Created by hejianyuan on 15/10/10.
//  Copyright © 2015年 ThinkCode. All rights reserved.
//

#import "ViewController.h"
#import "CardDataConvertTool.h"

@interface ViewController ()<UITextFieldDelegate>

@property (nonatomic, strong) CardDataConvertTool * tool;

@property (weak, nonatomic) IBOutlet UITextField *cardTextField;
@property (weak, nonatomic) IBOutlet UITextView *cardDescTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.tool = [[CardDataConvertTool alloc] init];
    self.cardTextField.delegate = self;
    
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField.text.length > 0) {
        //这地方还没想到好的匹配算法，先直接遍历
        for (NSString * key in self.tool.cardDataDict) {
            if ([textField.text hasPrefix:key]) {
                self.cardDescTextView.text = self.tool.cardDataDict[key];
                break;
            }
        }
    }
    return YES;
}



@end
