//
// Created by Agathe Battestini on 2/15/14.
//

#import "ABCellInfoDataObject.h"


@implementation ABCellInfoDataObject {

}

+ (instancetype)newWithSize:(CGSize)size {
    return [ABCellInfoDataObject newWithSize:size object:nil cellIdentifier:nil];
}

+ (instancetype)newWithSize:(CGSize)size object:(id)object
{
    return [ABCellInfoDataObject newWithSize:size object:object cellIdentifier:nil];
}

+ (instancetype)newWithSize:(CGSize)size cellIdentifier:(NSString*)cellIdentifier
{
    return [ABCellInfoDataObject newWithSize:size object:nil cellIdentifier:cellIdentifier];
}

+ (instancetype)newWithObject:(id)object cellIdentifier:(NSString*)cellIdentifier
{
    return [ABCellInfoDataObject newWithSize:CGSizeZero object:object cellIdentifier:cellIdentifier];
}

+ (instancetype)newWithSize:(CGSize)size object:(id)object cellIdentifier:(NSString*)cellIdentifier {
    ABCellInfoDataObject *result = [ABCellInfoDataObject new];
    result.cellSize = size;
    result.object = object;
    result.cellIdentifier = cellIdentifier;
    return result;
}

+ (instancetype)newWithHeight:(CGFloat)height object:(id)object cellIdentifier:(NSString*)cellIdentifier {
    ABCellInfoDataObject *result = [ABCellInfoDataObject new];
    result.cellHeight = height;
    result.object = object;
    result.cellIdentifier = cellIdentifier;
    return result;
}



@end