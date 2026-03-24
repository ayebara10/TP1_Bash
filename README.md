# Ejercicio Práctico Bash - Gestión de Alumnos

## Integrantes del grupo

## Descripción
Script Bash con menú interactivo para la gestión de archivos de alumnos.

## Requisitos previos
Definir la variable de entorno `FILENAME` antes de ejecutar el script:
```bash
export FILENAME=alumnos
```

## Opciones del menú
1. Crear entorno
2. Correr proceso (Background)
3. Listar alumnos por padrón
4. Top 10 notas
5. Buscar por padrón
6. Salir

## Formato de archivo de entrada
Los archivos `.txt` colocados en `entrada` deben tener el siguiente formato:
```
PADRON NOMBRE APELLIDO EMAIL NOTA
122331 Juan Lopez jlopez@fi.uba.ar 8
122332 Gaston Perez gperez@fi.uba.ar 7
```

## Uso
```bash
# 1- Definir variable de entorno
export FILENAME=alumnos

# 2- Ejecutar el script
bash main.sh                  

# 3- Opción 1: crear el entorno
# 4- Copiar archivos .txt a ~/EPNro1/entrada
# 5- Opción 2: iniciar proceso en background
# 6- Opciones 3, 4 ó 5: consultar datos
# 7- Opción 6: salir

# 8- Eliminar entorno y detener procesos
bash main.sh -d               
```