//
//  ListCell.m
//  List
//
//  Created by William Judd on 1/7/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

#import "ListCell.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width

@implementation ListCell

{
    UIView *colorView;
    
    BOOL isDone;
    
    UIView * strikeThrough;
    
   
}


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {

        colorView = [[UIView alloc] initWithFrame:CGRectMake(SCREEN_WIDTH -30, 10, 20, 20)];
        colorView.backgroundColor = [ UIColor blueColor];
        [self.contentView addSubview:colorView];
    
        strikeThrough = [[UIView alloc] initWithFrame:CGRectMake(10, 35, 100, 1)];
        strikeThrough.backgroundColor = [UIColor blackColor];
        [self.contentView addSubview:strikeThrough];
 
        
        
    }
    
    return self;
    
}

-(void)setItemInfo:(NSDictionary *)itemInfo {


    colorView.backgroundColor = itemInfo[@"color"];
    self.textLabel.text = itemInfo[@"text"];
    
    isDone = [itemInfo[@"done"] boolValue];
    
    strikeThrough.hidden = !isDone;
    
    _itemInfo = itemInfo;
    
}

    

@end
