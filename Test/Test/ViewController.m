//
//  ViewController.m
//  Test


#import "ViewController.h"
#import <testFrameWork/Preson.h>
#import <testFrameWork/TestViewController.h>
@interface ViewController ()<TestViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label = [[UILabel alloc] init];
    label.text = @"ViewController\n点击屏幕进入testFrameWork控制器";
    label.numberOfLines = 0;
    label.frame = self.view.bounds;
    label.textColor = [UIColor blackColor];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    // 调用吃饭方法
    [Preson eat];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    // 使用testVC
    TestViewController *tVC = [[TestViewController alloc] init];
    tVC.delegate = self;
    [self.navigationController pushViewController:tVC animated:YES];
}

#pragma mark Delegate
-(void)clickTestViewController{
    NSLog(@"TestViewController-----Delegate");
}


@end
