//
//  ViewController.m
//  The reflection
//
//  Created by  江苏 on 16/4/25.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"
#import "RepL.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *imageV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CAReplicatorLayer* layer=(CAReplicatorLayer*)self.imageV.layer;
    
    layer.instanceCount=2;
    
    CATransform3D transform=CATransform3DMakeTranslation(0, self.imageV.bounds.size.height, 0);
    
    //绕x轴旋转
    transform=CATransform3DRotate(transform, M_PI, 1, 0, 0);
    
    //向下平移高度
    layer.instanceTransform=transform;
    
    layer.instanceRedOffset=-0.1;
    layer.instanceBlueOffset=-0.1;
    layer.instanceGreenOffset=-0.1;
}



@end
