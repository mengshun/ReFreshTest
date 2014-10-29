//
//  Cell.m
//  ReFreshTest
//
//  Created by MS on 14/10/29.
//  Copyright (c) 2014年 ML. All rights reserved.
//

#import "Cell.h"

@interface Cell ()
{
    UILabel *_labe;
}
@end

@implementation Cell

- (void)awakeFromNib {
    // Initialization code
}
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        NSLog(@"22222");
        [self initView];
    }
    return self;
}
- (id)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        NSLog(@"5555");
    }
    return self;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)initView
{
    NSLog(@"3333333");
    _labe = [[UILabel alloc]initWithFrame:CGRectZero];
    [self addSubview:_labe];
}

- (void)layoutSubviews{
    [super layoutSubviews];
    _labe.frame = CGRectMake(100, CGRectGetHeight(self.frame)/2.0-25, 100, 50);
    _labe.text  = [NSString stringWithFormat:@"%d",arc4random()%255];
    _labe.textAlignment = NSTextAlignmentCenter;
    _labe.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
}
@end
