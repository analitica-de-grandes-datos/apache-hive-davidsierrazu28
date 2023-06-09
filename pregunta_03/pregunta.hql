/* 
Pregunta
===========================================================================

Para resolver esta pregunta use el archivo `data.tsv`.

Escriba una consulta que devuelva los cinco valores diferentes más pequeños 
de la tercera columna.

Apache Hive se ejecutará en modo local (sin HDFS).

Escriba el resultado a la carpeta `output` de directorio de trabajo.

        >>> Escriba su respuesta a partir de este punto <<<
*/

drop table if exists data;
CREATE TABLE data ( 
        col1 STRING, 
        col2 STRING, 
        col3 INT 
) 
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY '\t';

LOAD DATA LOCAL INPATH 'data.tsv' OVERWRITE INTO TABLE data; 

INSERT OVERWRITE DIRECTORY 'output';

SELECT col3 FROM data ORDER BY col3 ASC LIMIT 5;
