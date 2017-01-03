//
//  ViewController.m
//  自动聚焦拍照
//
//  Created by tao on 16/12/30.
//  Copyright © 2016年 tao. All rights reserved.
//

#import "ViewController.h"
#import "ZLCameraViewController.h"
#import "Masonry.h"
@interface ViewController ()

@property (nonatomic, strong) UIImageView *imageIV;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _imageIV = [[UIImageView alloc] init];
    [self.view addSubview:_imageIV];
    [_imageIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.offset = 300;
        make.centerX.centerY.offset = 0;
    }];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"拍照" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(presentCameraContinuous) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset = 50;
        make.centerX.offset = 0;
        make.width.offset = 100;
        make.height.offset= 50;
    }];
    
    // Do any additional setup after loading the view, typically from a nib.
}

/**
 *  初始化自定义相机（连拍）
 */
#pragma mark - *初始化自定义相机（连拍）
- (void)presentCameraContinuous {
    ZLCameraViewController *cameraVC = [[ZLCameraViewController alloc] init];
    // 拍照最多个数
    cameraVC.maxCount = 1;
    cameraVC.GraphRecognition = YES;
    // 连拍
    cameraVC.cameraType = ZLCameraSingle;
    cameraVC.callback = ^(NSArray *cameras){
        
        //在这里得到拍照结果
        //数组元素是ZLCamera对象
        for (ZLCamera *canamer in cameras) {
            _imageIV.image = canamer.photoImage;
            [self.view setNeedsDisplay];
            
        }
        
    };
    //展示在父类的View上
    [cameraVC showPickerVc:self];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
