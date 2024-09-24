IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [Coupon] (
    [CouponId] int NOT NULL IDENTITY,
    [CouponCode] nvarchar(max) NOT NULL,
    [DiscountAmount] float NOT NULL,
    [MinAmount] int NOT NULL,
    CONSTRAINT [PK_Coupon] PRIMARY KEY ([CouponId])
);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20240922135251_AddCoupon', N'8.0.8');
GO

COMMIT;
GO

