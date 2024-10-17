# Working-inSQL

Este repositorio contiene una colección de consultas Transact-SQL (T-SQL) de nivel medio-avanzado, enfocadas en la manipulación y obtención de metadatos en SQL Server.

## Estructura del Repositorio

•  [SQLAltoNivel] Carpeta que contiene todas las consultas relacionadas con metadatos en SQL Server.


## Contenido

### SQLAltoNivel

En esta carpeta encontrarás consultas que te permitirán obtener información detallada sobre la estructura y los elementos de tu base de datos. Algunas de las consultas incluidas son:

```sql
SELECT * FROM INFORMATION_SCHEMA.TABLES;

•  Columnas: Consulta detalles sobre las columnas de todas las tablas y vistas.

SELECT * FROM INFORMATION_SCHEMA.COLUMNS;

•  Restricciones de Columnas: Información sobre las columnas que están restringidas por una constraint.

SELECT * FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE;

•  Restricciones de Tablas: Información sobre las tablas que están restringidas por una constraint.

SELECT * FROM INFORMATION_SCHEMA.CONSTRAINT_TABLE_USAGE;

•  Claves: Detalles sobre las columnas que son claves (primarias o foráneas).

SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE;

•  Constraints Referenciales: Información sobre las constraints referenciales (claves foráneas).

SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS;

•  Esquemas: Información sobre los esquemas en la base de datos.

SELECT * FROM INFORMATION_SCHEMA.SCHEMATA;

•  Constraints de Tablas: Información sobre las constraints de las tablas.

SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS;

Cómo Usar
1. 
Clona el repositorio:

git clone https://github.com/tu-usuario/wok-sql.git

1. 
Navega a la carpeta SQLAltoNivel:

cd wok-sql/SQLAltoNivel

1. 
Abre los archivos .sql en tu editor de SQL preferido (por ejemplo, SQL Server Management Studio o Visual Studio Code) y ejecuta las consultas según tus necesidades.

Descargas Recomendadas
•  [Descargar SQL Server](https://www.bing.com/search?form=SKPBOT&q=%5BDescargar%20SQL%20Server%5D%28https%3A%2F%2Fwww.microsoft.com%2Fes-es%2Fsql-server%2Fsql-server-downloads%29): Obtén la última versión de SQL Server.

•  [Descargar SQL Server Management Studio (SSMS)](https://www.bing.com/search?form=SKPBOT&q=%5BDescargar%20SQL%20Server%20Management%20Studio%20%28SSMS%29%5D%28https%3A%2F%2Flearn.microsoft.com%2Fes-es%2Fsql%2Fssms%2Fdownload-sql-server-management-studio-ssms%3Fview%3Dsql-server-ver16%29): Herramienta para gestionar tu infraestructura SQL.

•  [Descargar bases de datos de ejemplo AdventureWorks](https://www.bing.com/search?form=SKPBOT&q=%5BDescargar%20bases%20de%20datos%20de%20ejemplo%20AdventureWorks%5D%28https%3A%2F%2Flearn.microsoft.com%2Fes-es%2Fsql%2Fsamples%2Fadventureworks-install-configure%3Fview%3Dsql-server-ver16%29): Bases de datos de ejemplo para practicar.

Contribuciones
¡Las contribuciones son bienvenidas! Si tienes consultas adicionales o mejoras, no dudes en hacer un fork del repositorio y enviar un pull request.

Licencia
Este proyecto está licenciado bajo la Licencia MIT. Consulta el archivo LICENSE para más detalles.

