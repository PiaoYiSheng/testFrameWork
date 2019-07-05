//
//  TestViewController.m
//  testFrameWork

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label = [[UILabel alloc] init];
    label.text = @"TestViewController\n点击屏幕查看代理响应";
    label.numberOfLines = 0;
    label.frame = self.view.bounds;
    label.textColor = [UIColor blackColor];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    // 获取路径
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"testFrameWork.framework/TestLibrary" ofType:@"bundle"];
    NSBundle *testBundle = [NSBundle bundleWithPath:bundlePath];
    NSString *path = [testBundle pathForResource:@"test_Image@2x" ofType:@"png"];
    // 设置图片
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame = CGRectMake((self.view.frame.size.width - 100) *0.5, 100, 100, 100);
    imageView.image = [UIImage imageWithContentsOfFile:path];
    [self.view addSubview:imageView];
    imageView.backgroundColor = [UIColor yellowColor];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if ([self.delegate respondsToSelector:@selector(clickTestViewController)]) {
        [self.delegate clickTestViewController];
    }
}

@end
