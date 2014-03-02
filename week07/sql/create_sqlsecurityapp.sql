/***********************************
Create an Application for ASP.Net Security 
using the provided stored procedures.
************************************/
DECLARE @RC int
DECLARE @ApplicationName nvarchar(256)
DECLARE @ApplicationId uniqueidentifier

SELECT @ApplicationName = 'Demo'

EXECUTE @RC = [dbo].[aspnet_Applications_CreateApplication] 
   @ApplicationName
  ,@ApplicationId OUTPUT
GO


