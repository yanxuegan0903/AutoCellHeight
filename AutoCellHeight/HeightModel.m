//
//  HeightModel.m
//  AutoCellHeight
//
//  Created by vsKing on 2017/4/1.
//  Copyright © 2017年 vsKing. All rights reserved.
//

#import "HeightModel.h"

@implementation HeightModel

- (instancetype)initWithText:(NSString *)text
{
    self = [super init];
    if (self) {
        self.text = text;
    }
    return self;
}

@end
