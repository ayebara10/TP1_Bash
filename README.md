# Ejercicio Práctico Bash - Gestión de Alumnos

## Integrantes del grupo

## Descripción
Script Bash con menú interactivo para la gestión de archivos de alumnos

## Requisitos previos

Definir la variable de entorno "FILENAME" antes de ejecutar el script

```bash
export FILENAME=alumnos
```

## Opciones del menú

1) Crear entorno
2) Correr proceso (Background)
3) Listar alumnos por Padrón
4) Top 10 Notas
5) Buscar por Padrón
6) Salir

## Formato de archivo de entrada

Los archivos ".txt" colocados en "entarda" deben tener el siguiente formato (columnas separadas por espacios):

```
PADRON NOMBRE APELLIDO EMAIL NOTA
122331 Juan Lopez jlopez@fi.uba.ar 8
122332 Gaton Perez pgaston@fi.uba.ar 7
```
## Ejemplo de uso 

```bash
# 1- Definir variable de entorno
export FILENAME=alumnos

# 2- Ejecutar el script
bash main.sh

# 3- Seleccionar opción 1 para crear el enotorno
# 4- Copiar archivos .txt de alumnos a ~/EPNro1/entrada
# 5- Seleccioar opción 2 para iniciar el proceso en background
# 6- Usar opciones 3, 4 ó 5 para consultar los datos de los alumnos
# 7- Usar la opción 6 para salir

# 8- Eliminar el entorno creado y finalizar el porceso en background (consolidar.sh)
bash main.sh -d
```
