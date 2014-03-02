/***********************************
Create a Role for ASP.Net Security 
using the provided stored procedures.
************************************/
DECLARE @RC int
DECLARE @ApplicationName nvarchar(256)
DECLARE @RoleName nvarchar(256)

SELECT @ApplicationName='Demo', @RoleName='Administrators'

EXECUTE @RC = [dbo].[aspnet_Roles_CreateRole] 
   @ApplicationName
  ,@RoleName
GO


