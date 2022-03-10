//
//  main.m
//  Search2DMatrix
//
//  Created by Evan Wang on 2022/3/10.
//

#import <Foundation/Foundation.h>

bool run(NSArray<NSArray<NSNumber*>*> *input,NSNumber *target) {
    //TODO: You can code here
    return  false;
}

void test(NSArray<NSArray<NSNumber*>*> *input,NSNumber *target,BOOL result) {
    if (run(input,target) != result) {
        NSLog(@"%@ validation failed",input);
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        test(@[@[@1,@3,@5,@7],@[@10,@11,@16,@20],@[@23,@30,@34,@60]],@3,true);
        test(@[@[@1,@3,@5,@7],@[@10,@11,@16,@20],@[@23,@30,@34,@60]],@13,true);
    }
    return 0;
}
