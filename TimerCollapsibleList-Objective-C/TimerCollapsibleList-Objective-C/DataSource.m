//
//  DataSource.m
//  Objective-C-List
//
//  Created by Evan Wang on 2022/3/10.
//

#import "DataSource.h"
@implementation DataSource

- (instancetype)init {
    self = [super init];
    if (self) {
        NSDate *date = [NSDate now];
        NSTimeInterval hour = 60 * 60;
        NSTimeInterval day = 60 * 60 * 24;
        NSMutableArray<SectionItem*> *sectionArray = [NSMutableArray array];
        for (int i = 0; i < 10; i ++) {
            NSMutableArray<CellItem*> *itemArray =[NSMutableArray array];
            for (int j = 0; j < 10; j ++) {
                CellItem *item = [CellItem new];
                item.date = [date dateByAddingTimeInterval: day * i + hour * j];
                [itemArray addObject: item];
            }
            SectionItem *section = [SectionItem new];
            section.date = [date dateByAddingTimeInterval:day * i];
            section.items = [NSArray arrayWithArray:itemArray];
            [sectionArray addObject:section];
        }
        _sections = [NSArray arrayWithArray:sectionArray];
    }
    return self;
}
@end
