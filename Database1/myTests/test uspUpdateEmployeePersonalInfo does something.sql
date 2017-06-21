CREATE PROCEDURE dbo.[test uspUpdateEmployeePersonalInfo does something]
AS
    EXECUTE tSQLt.FakeTable 'HumanResources', 'Employee';
    DECLARE @BusinessEntityID AS INT = 0;
    DECLARE @NationalIDNumber AS NVARCHAR = '';
    DECLARE @BirthDate AS DATETIME = '1980-04-01';
    DECLARE @MaritalStatus AS NCHAR = '';
    DECLARE @Gender AS NCHAR = '';
    EXECUTE [HumanResources].[uspUpdateEmployeePersonalInfo] @BusinessEntityID, @NationalIDNumber, @BirthDate, @MaritalStatus, @Gender;
    EXECUTE tSQLt.AssertEquals 'TRUE', 'FALSE', N'Error Not Implemented';