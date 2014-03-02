/***********************************
Create a User for ASP.Net Security 
using the provided stored procedures.
************************************/
DECLARE @RC int
DECLARE @ApplicationName nvarchar(256)
DECLARE @UserName nvarchar(256)
DECLARE @Password nvarchar(128)
DECLARE @PasswordSalt nvarchar(128)
DECLARE @Email nvarchar(256)
DECLARE @PasswordQuestion nvarchar(256)
DECLARE @PasswordAnswer nvarchar(128)
DECLARE @IsApproved bit
DECLARE @CurrentTimeUtc datetime
DECLARE @CreateDate datetime
DECLARE @UniqueEmail int
DECLARE @PasswordFormat int
DECLARE @UserId uniqueidentifier

DECLARE @now datetime
SET @now= GETDATE()

SELECT @ApplicationName='/', @UserName='mcobery', @Password='password?', @PasswordSalt='',
       @Email='marc_cobery@uml.edu', @PasswordQuestion='Who?', @PasswordAnswer='Me',
	   @IsApproved=1, @CurrentTimeUtc=@now, @CreateDate=@now, 
	   @UniqueEmail=0, @PasswordFormat=0


EXECUTE @RC = [dbo].[aspnet_Membership_CreateUser] 
   @ApplicationName
  ,@UserName
  ,@Password
  ,@PasswordSalt
  ,@Email
  ,@PasswordQuestion
  ,@PasswordAnswer
  ,@IsApproved
  ,@CurrentTimeUtc
  ,@CreateDate
  ,@UniqueEmail
  ,@PasswordFormat
  ,@UserId OUTPUT
GO

