//
//  DataSource.h
//  Objective-C-List
//
//  Created by Evan Wang on 2022/3/10.
//

#import <Foundation/Foundation.h>
#import "SectionItem.h"
#import "CellItem.h"
NS_ASSUME_NONNULL_BEGIN

@interface DataSource : NSObject
@property(copy,nonatomic) NSArray<SectionItem*>* sections;
@end

NS_ASSUME_NONNULL_END
