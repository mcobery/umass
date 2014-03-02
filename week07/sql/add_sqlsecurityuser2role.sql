/***********************************
Add a User for ASP.Net Security 
to a defined Role of ASP.Net Security
using the provided stored procedures.
************************************/
DECLARE @RC int
DECLARE @ApplicationName nvarchar(256)
DECLARE @UserNames nvarchar(4000)
DECLARE @RoleNames nvarchar(4000)
DECLARE @CurrentTimeUtc datetime

DECLARE @now datetime
SET @now= GETDATE()

SELECT @ApplicationName='Demo', @UserNames='mcobery', @RoleNames='Administrators',
       @CurrentTimeUtc=@now

EXECUTE @RC = [dbo].[aspnet_UsersInRoles_AddUsersToRoles] 
   @ApplicationName
  ,@UserNames
  ,@RoleNames
  ,@CurrentTimeUtc
GO


