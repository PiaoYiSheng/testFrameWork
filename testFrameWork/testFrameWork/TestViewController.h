//
//  TestViewController.h
//  testFrameWork

#import <UIKit/UIKit.h>
@protocol TestViewControllerDelegate <NSObject>
@optional
- (void) clickTestViewController;
@end
@interface TestViewController : UIViewController
@property (nonatomic, weak) id<TestViewControllerDelegate>  delegate;
@end


