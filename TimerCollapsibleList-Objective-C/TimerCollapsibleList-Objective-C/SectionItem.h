//
//  SectionItem.h
//  Objective-C-List
//
//  Created by Evan Wang on 2022/3/10.
//

#import <Foundation/Foundation.h>
#import "CellItem.h"
NS_ASSUME_NONNULL_BEGIN

@interface SectionItem : NSObject
@property(strong,nonatomic) NSDate *date;
@property(copy,nonatomic) NSArray<CellItem*> *items;
@end

NS_ASSUME_NONNULL_END
