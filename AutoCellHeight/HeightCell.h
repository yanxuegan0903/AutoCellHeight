//
//  HeightCell.h
//  AutoCellHeight
//
//  Created by vsKing on 2017/4/1.
//  Copyright © 2017年 vsKing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HeightModel.h"


@interface HeightCell : UITableViewCell

@property (strong, nonatomic) UILabel *label;

@property (nonatomic, strong) HeightModel *model;


@end
