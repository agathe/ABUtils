//
// Created by Agathe Battestini on 2/15/14.
//

#import <Foundation/Foundation.h>
@class RACSubject;

/**
* Convenient class to hold a cell object information
*/
@interface ABCellInfoDataObject : NSObject

@property (nonatomic, strong) id object;
@property (nonatomic, strong) NSString *cellIdentifier;
@property (nonatomic, assign) CGFloat cellHeight;
@property (nonatomic, assign) CGSize cellSize;

@property (nonatomic, strong) RACSubject * dataChangeSubject;


+ (instancetype)newWithSize:(CGSize)size;

+ (instancetype)newWithSize:(CGSize)size object:(id)object;

+ (instancetype)newWithSize:(CGSize)size cellIdentifier:(NSString *)cellIdentifier;

+ (instancetype)newWithObject:(id)object cellIdentifier:(NSString *)cellIdentifier;

+ (instancetype)newWithSize:(CGSize)size object:(id)object cellIdentifier:(NSString *)cellIdentifier;

+ (instancetype)newWithHeight:(CGFloat)height object:(id)object cellIdentifier:(NSString *)cellIdentifier;
@end