//
//  CardDataConvertTool.h
//  BankIDSearch
//
//  Created by hejianyuan on 15/10/10.
//  Copyright © 2015年 东电创新（北京）科技发展股份有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CardDataConvertTool : NSObject

@property (strong, nonatomic) NSDictionary * cardDataDict;


+ (NSDictionary *)parseData;

@end
