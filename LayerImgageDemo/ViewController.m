//
//  ViewController.m
//  LayerImgageDemo
//
//  Created by gaolili on 15/9/7.
//  Copyright (c) 2015年 mRocker. All rights reserved.


#import "ViewController.h"
#import "LayerImageView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    LayerImageView * layerImage = [[LayerImageView alloc]initWithFrame:CGRectMake(50, 100, 200, 100)];
    layerImage.mainImage =[UIImage imageNamed:@"centerImg"];
    layerImage.shapeImage =[UIImage imageNamed:@"100_1"];
    [self.view addSubview:layerImage];
    
}



@end
