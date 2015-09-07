 

#import "LayerImageView.h"

@implementation LayerImageView

- (void)initMainImage{
    
    self.layer.cornerRadius = 5;
    self.clipsToBounds = YES;
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIImage *mainImg = self.mainImage;
    [mainImg drawInRect:self.bounds];
    CGContextDrawTiledImage(context, CGRectZero, mainImg.CGImage);
 
    UIImage * shapeImg = self.shapeImage;
    [shapeImg drawInRect:CGRectMake(CGRectGetWidth(self.bounds) - 45,0,45,45)];
    CGContextDrawTiledImage(context, CGRectZero, mainImg.CGImage);
}

- (void)drawRect:(CGRect)rect{
    [self initMainImage];
}

@end
