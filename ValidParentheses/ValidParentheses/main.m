//
//  main.m
//  ValidParentheses
//
//  Created by Evan Wang on 2022/3/10.
//

#import <Foundation/Foundation.h>

bool run(NSString *input) {
    //TODO: You can code here
    return  false;
}

void test(NSString *input,BOOL result) {
    if (run(input) != result) {
        NSLog(@"%@ validation failed",input);
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        test(@"()",true);
        test(@"()[]{}",true);
        test(@"(]",false);
        test(@"([)]",false);
        test(@"{[]}",true);
    }
    return 0;
}
