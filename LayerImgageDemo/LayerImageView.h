 

#import <UIKit/UIKit.h>

@interface LayerImageView : UIView
@property (nonatomic,strong) UIImage * mainImage;
@property (nonatomic,strong) UIImageView * mainImageView;

@property (nonatomic,strong) UIColor * arcColor; //扇形填充颜色
@property (nonatomic,assign) NSInteger  radius; //扇形半径
@property (nonatomic,assign) CGPoint arcPoint;  //扇形开始画的坐标

@property (nonatomic,strong) NSString * titles;
@property (nonatomic,strong) UILabel * titleLabel;
@property (nonatomic,strong) UIFont * titlesFont;
@end
