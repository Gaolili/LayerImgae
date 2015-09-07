 

#import "LayerImageView.h"

@implementation LayerImageView

- (void)initMainImage{
    
    self.layer.cornerRadius = 5;
    self.clipsToBounds = YES;
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIImage *mainImg = self.mainImage;
    [mainImg drawInRect:self.bounds];
    CGContextDrawTiledImage(context, CGRectZero, mainImg.CGImage);
 
    
    UIColor * arcCls = self.arcColor;
    NSInteger radius = self.radius;
    CGFloat  arcX = self.arcPoint.x;
    CGFloat  arcY = self.arcPoint.y;
    CGContextSetFillColorWithColor(context, arcCls.CGColor);
    CGContextSetStrokeColorWithColor(context, arcCls.CGColor);
    CGContextMoveToPoint(context, arcX,arcY);
    CGContextAddArc(context,arcX,arcY, radius, 270 * M_PI / 180, 180 *M_PI / 180,0);
    CGContextClosePath(context);
    CGContextDrawPath(context, kCGPathFillStroke);
    
    self.titleLabel =[[UILabel alloc]initWithFrame:CGRectMake(160, 10, 40, 30)];
    self.titleLabel.textColor =[UIColor whiteColor];
    self.titleLabel.font = self.titlesFont;
//    self.titleLabel.textAlignment = NSTextAlignmentCenter;
//    self.titleLabel.backgroundColor =[UIColor yellowColor];
    self.titleLabel.transform = CGAffineTransformMakeRotation(30 *M_PI /180.0f); //旋转
    self.titleLabel.text = self.titles;
    [self addSubview:self.titleLabel];
    
}

- (void)drawRect:(CGRect)rect{
    [self initMainImage];
}

@end
