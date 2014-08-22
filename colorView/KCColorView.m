//
//  KCTagView.m
//  colorView
//
//  Created by kaga chan on 22/8/14.
//  Copyright (c) 2014 ada. All rights reserved.
//

#import "KCColorView.h"

@implementation KCColorView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _colorTags = [NSMutableArray array];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        _colorTags = [NSMutableArray array];
    }
    return self;
}

- (void)addColor:(UIColor *)color
{
    [self.colorTags addObject:color];
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    if ([_colorTags count] == 0) {
        return;
    }
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    NSIndexPath *size = [KCColorView getGridSize:[_colorTags count]];
    double cellWidth = (self.frame.size.width / size.section);
    double cellHeight = (self.frame.size.height / size.row);
    
    for (NSInteger i = 0, count = [_colorTags count]; i < count; i++) {
        UIColor *color = [_colorTags objectAtIndex:i];
        CGRect rect = [self getRectForColor:i grid:size width:cellWidth height:cellHeight];
        
        CGContextSetFillColorWithColor(context, [color CGColor]);
        CGContextAddRect(context, rect);
        CGContextFillPath(context);
    }
}

- (CGRect)getRectForColor:(NSInteger)index grid:(NSIndexPath *)size width:(double)cellWidth height:(double)cellHeight
{
    NSInteger row = floor((double)index / size.section);
    NSInteger column = index % (int)size.section;
    CGRect rect = CGRectMake(cellWidth * column, cellHeight * row, cellWidth, cellHeight);
    return rect;
}

+ (NSIndexPath *)getGridSize:(NSInteger)size
{
    NSInteger row = [KCColorView getRow:size];
    NSInteger column = ceil((double)size / row);
    return [NSIndexPath indexPathForRow:row inSection:column]; CGSizeMake(row, column);
}

+ (NSInteger)getRow:(NSInteger)size
{
    NSInteger column = 1;
    while (pow(column, column) < size) {
        column++;
    }
    return column;
}


@end
