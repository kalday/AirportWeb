-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Kyra Alday
-- Create date: 19 May 2021
-- Description:	Airport System Queries
-- =============================================
CREATE PROCEDURE usp_PilotDetailsQuals
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- List the Pilot's details and the types of planes they can fly

	SELECT	p.Pilot_LicenceID					[Licence ID],
			p.Pilot_FName + ' ' + p.Pilot_SName	[Pilot Name],
			pt.Plane_Type						[Plane Type],
			pt.Type_Description					[Plane Type Description]
	FROM	((tblPilot p	INNER JOIN	tblPilotPlaneType ppt	ON	p.Pilot_LicenceID = ppt.Pilot_Licence_Ref)
							INNER JOIN	tblPlaneType pt			ON	ppt.Plane_Type_Ref = pt.Plane_Type)

END
GO
