# Estefanía Ruiz Cuartas
# Lenguaje de programación: R
# Tema: Manejo de archivos .xlsx en R
# Fuentes de consulta: 

# INFORMACIÓN IMPORTANTE: 
# Para ejecutar un código que permita leer y escribir archivos de tipo .xlsx, se requiere la instalación del paquete "xlsx", esto se hace mediante la función install.packages("xlsx"); sin embargo, en esta plataforma donde estamos trabajando, no permite la instalación de paquetes adicionales a los que ya se encuentran aquí dispuestos (nativos), y para nuestra mala suerte, nos encontramos con que este paquete "xlsx" no se encuentra incluido en los nativos, por lo cuál no lo podemos usar. De haberlo podido utilizar, tendríamos en cuenta funciones tales como read.xlsx(), entre otros.

# Dado lo anterioremente mencionado, para hacer este reto, utilizaremos archivos de tipo csv

# Archivos .csv: El archivo csv es un archivo de texto en el que los valores de las columnas están separados por una coma
cat("\n
Archivo csv
\n")

# Ejercicio 1: inventario.csv: Nos encontramos con el cvs que contiene los productos más vendidos en una tienda. En este archivo tenemos registro del código del producto, el nombre del producto, su precio y el proveedor que los maneja.
cat("\n
- Ejercicio 1: documento inventario.csv
\n")

cat("\n")
# En primera instancia es necesario hacer el llamado de leer el archivo csv, esto se hace con la función read.csv()
doc1 <- read.csv("inventario.csv")

# Mostraremos en la consola el contenido de este archivo
print(doc1)

cat("\n")
# Veremos que esta información aparece almacenada en forma de dataframe
cat("\n 
Es un dataframe? : \n")
print(is.data.frame(doc1))

# En vista que es un dataframe, verificaremos la cantidad de filas y columnas del mismo

cat("\n")
cat("\n")
# Número de filas
cat("\n 
Número de filas del dataframe: \n")
print(nrow(doc1))

cat("\n")
cat("\n")
# Número de columnas
cat("\n 
Número de columnas del dataframe: \n")
print(ncol(doc1))

cat("\n")
cat("\n")
# El dueño quiere conocer cuáles de estos productos valen más de $14000
cat("\n 
Productos que valen más de $14000: 
\n")

# Para esto se requiere el uso de la función subset() que permite extraer una información específica. Mostraremos lo obtenido
precio_14 <- subset(doc1, precio > 14000)
print(precio_14)

cat("\n")
cat("\n")
# El dueño espera conocer, de estos productos destacados, cuáles son los que se le compran al proveedor variedades_ed
cat("\n 
Productos que se le compran al proveedor variedades_ed: 
\n")

# Para esto se requiere el uso de la función subset() que permite extraer una información específica. Mostraremos lo obtenido
prov_var <- subset(doc1,proveedor=="variedades_ed")
print(prov_var)

# Este dato, el dueño quiere tenerlo en un formato csv, eso lo haremos usando write.csv
write.csv(prov_var,"proveedor_variedades.csv",row.names = FALSE)

# Línea separadora de temas
cat("\n",
"\n")
cat("-------------------------------------------------------------------")
cat("\n")
cat("\n")

# Ejercicio 2: clientes.csv. La tienda también lleva registro a parte de los clientes frecuentes, y sus últimas compras
cat("\n
- Ejercicio 2: documento clientes.csv
\n")

cat("\n")
# En primera instancia es necesario hacer el llamado de leer el archivo csv, esto se hace con la función read.csv()
doc2 <- read.csv("clientes.csv")

# Mostraremos en la consola el contenido de este archivo
print(doc2)

cat("\n")
# Veremos que esta información aparece almacenada en forma de dataframe
cat("\n 
Es un dataframe? : \n")
print(is.data.frame(doc2))

# En vista que es un dataframe, verificaremos la cantidad de filas y columnas del mismo

cat("\n")
cat("\n")
# Número de filas
cat("\n 
Número de filas del dataframe: \n")
print(nrow(doc2))

cat("\n")
cat("\n")
# Número de columnas
cat("\n 
Número de columnas del dataframe: \n")
print(ncol(doc2))

cat("\n")
cat("\n")
# El dueño quiere conocer la información del cliente que invirtió más dinero en esta última compra
cat("\n 
Cliente que invirtió más dinero en la última compra: 
\n")

# Para esto necesitamos la función max()
client_max <- subset(doc2, venta == max(venta))
print(client_max)

cat("\n")
cat("\n")
# El dueño también quiere ver los clientes que compraron más de 2 unidades y gastaron menos de 55000
cat("\n 
Cliente que compraron más de 2 unidades y gastaron menos de $55000 
\n")

# Para esto se requiere el uso de la función subset() que permite extraer una información específica. Mostraremos lo obtenido
client_cant <- subset(doc2, cantidad>2 & venta < 55000)
print(client_cant)

cat("\n")
cat("\n")
# Por último, el dueño quiere consignar en un csv los datos de los clientes que en esta última compra gastaron más de 40000 para hacerles descuento la próxima compra
cat("\n 
Clientes que gastaron más de 40000
\n")

# Para esto se requiere el uso de la función subset() que permite extraer una información específica. Mostraremos lo obtenido
client_desc <- subset(doc2, venta > 40000)
print(client_desc)

# Este dato, para almacenarlo en csv, lo haremos usando write.csv
write.csv(client_desc,"clientes_descuento.csv",row.names = FALSE)

