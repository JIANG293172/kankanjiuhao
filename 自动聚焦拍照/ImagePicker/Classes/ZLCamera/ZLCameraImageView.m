//
//  BQImageView.m
//  BQCommunity
//
//  Created by TJQ on 14-8-5.
//  Copyright (c) 2014年 beiqing. All rights reserved.
//

#import "ZLCameraImageView.h"
#import "UIView+Layout.h"
//#import "UIImage+ZLPhotoLib.h"
#import "Masonry.h"
@interface ZLCameraImageView ()
@property (strong, nonatomic) UIImageView *deleBjView;
@end

@implementation ZLCameraImageView


- (UIImageView *)deleBjView{
    if (!_deleBjView) {
        _deleBjView = [[UIImageView alloc] init];
        _deleBjView.image = [UIImage imageNamed:@"X.png"];
        _deleBjView.hidden = YES;
        _deleBjView.userInteractionEnabled = YES;
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(deleImage:)];
        tap.numberOfTapsRequired = 1;
        [_deleBjView addGestureRecognizer:tap];

        [self addSubview:_deleBjView];
        [_deleBjView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.offset = 25;
            make.height.offset = 25;
            make.top.offset = 2;
            make.right.offset = -2;
        }];
    }
    return _deleBjView;
}


- (void)setEdit:(BOOL)edit{
    self.deleBjView.hidden = NO;
}

- (id)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.userInteractionEnabled = YES;
    }
    return self;
}

#pragma mark 删除图片
- (void) deleImage : ( UITapGestureRecognizer *) tap{
    if ([self.delegatge respondsToSelector:@selector(deleteImageView:)]) {
        [self.delegatge deleteImageView:self];
    }
}

@end
