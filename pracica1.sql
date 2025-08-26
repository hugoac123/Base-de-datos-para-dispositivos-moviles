CREATE DATABASE Ejemplo
On primary
(Name = EjemploData,
Filename = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Ejemplo.MDF',
Size = 5MB, MaxSize = 10MB,
FileGrowth = 20%)
Log on
(NAME = EjemploLog,
Filename = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\EjemploLog.ldf',
Size = 3MB,
MaxSize = 5MB,
FileGrowth = 1MB)





sp_helpdb

use Ejemplo
exec sp_spaceused


CREATE DATABASE bd_ejemplo
Go


SP_HELPDB bd_ejemplo

CREATE DATABASE Departamentos
ON
(
    NAME = departamentos_Data,
	FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Departamentos_Data.mdf',
	SIZE=4,
	MAXSIZE=10,
	FILEGROWTH=1
)
GO

CREATE DATABASE Departamento2
ON
(NAME = Departamentos2_Data,
FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Departamentos2_Data.mdf'
)
GO


CREATE DATABASE Departamentos3
ON
(NAME=Departamentos3_Data,
FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Departamentos3_Data.mdf',
SIZE = 40,
MAXSIZE=100,
FILEGROWTH=1
)
LOG ON
(NAME=Departamentos3_Lod,
FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Departamentos3_Log.ldf',
SIZE=5,
MAXSIZE=5,
FILEGROWTH=10%
)
GO

CREATE DATABASE Departamento4
ON

(NAME = Departamentos4_Data,
FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Departamentos4_Data.mdf',
SIZE= 15, MAXSIZE= 80, FILEGROWTH= 20%
),
(NAME=Departamentos4_Sec,
FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Departamentos4_Sec.ndf',
SIZE= 10,MAXSIZE= 80, FILEGROWTH=2
)

LOG ON
(NAME=Departamentos4_Log,
FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Departamentos4_Log.ldf',
SIZE= 10,MAXSIZE= 70, FILEGROWTH=5
)

GO