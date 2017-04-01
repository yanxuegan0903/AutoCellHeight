//
//  HeightCell.m
//  AutoCellHeight
//
//  Created by vsKing on 2017/4/1.
//  Copyright © 2017年 vsKing. All rights reserved.
//

#import "HeightCell.h"
#import "Masonry.h"


@implementation HeightCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        UILabel * label = [UILabel new];
        [self.contentView addSubview:label];
        label.backgroundColor = [UIColor yellowColor];
        label.numberOfLines = 0;
        label.font = [UIFont systemFontOfSize:13];
        self.label = label;
        
        
        
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    self.label.frame = CGRectMake(0, 0, CGRectGetWidth(self.contentView.frame), CGRectGetHeight(self.contentView.frame));
    
    
}


- (void)setModel:(HeightModel *)model{
    _model = model;
    [self.label setText:model.text];
}



@end
