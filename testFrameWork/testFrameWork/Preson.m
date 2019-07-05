//
//  Preson.m
//  testFrameWork

#import "Preson.h"

@implementation Preson
+ (void)eat{
    NSLog(@"吃饭了");
    

    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"testFrameWork.framework/TestLibrary" ofType:@"bundle"];
    NSBundle *testBundle = [NSBundle bundleWithPath:bundlePath];
    NSString *p = [testBundle pathForResource:@"test_Plist" ofType:@"plist"];
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:p];
    NSLog(@"\n-----------\ntestFrameWork->Preson读取到的plist\ntest_Plist:%@\n-------------",dic);
}
@end
