# 📁 Menú Interactivo Linux – ASIR / DIGITECH

## Descripción
Este proyecto es un **script de Bash** que implementa un **menú interactivo con 30 opciones** para la administración básica de sistemas Linux.  
Forma parte de la asignatura **ASIR – Administración de Sistemas Operativos** (Microsoft Active Directory, Linux) como parte de la formación en **DIGITECH**.

El script permite desde **crear archivos y carpetas**, **gestionar usuarios y grupos**, hasta **visualizar procesos y comprimir/descomprimir datos**, todo de manera interactiva.

---

## 📋 Contenido del repositorio
- `menu_linux.sh`: Script principal con el menú interactivo de 30 opciones.
- `README.md`: Documentación del proyecto y guía de uso.

---

## ⚙️ Requisitos
- Sistema operativo Linux.
- Bash shell (por defecto en la mayoría de distribuciones Linux).
- Permisos de administrador (sudo) para algunas opciones: instalar paquetes, crear usuarios/grupos.
- Herramientas adicionales opcionales:
  - `nano` / `gedit`
  - `samba` (para red)
  - `tar` (para comprimir/descomprimir)

---

<details>
  <summary>📝 Opciones del menú (haz click para ver)</summary>

| Opción | Función |
|--------|---------|
| 1  | Muestra la versión de Linux |
| 2  | Crear archivos con `nano` |
| 3  | Crear archivos con `gedit` |
| 4  | Instalar herramientas de red (`samba`) |
| 5  | Instalar herramientas de gestión de grupos |
| 6  | Visualizar carpetas y archivos (`ls -la`) |
| 7  | Asignar permisos a archivos y carpetas |
| 8  | Visualizar calendario (`cal`) |
| 9  | Mostrar una vaquita simpática en consola |
| 10 | Mostrar el manual de un comando (`man`) |
| 11 | Mostrar archivos sin posibilidad de edición (`cat`) |
| 12 | Información de un archivo específico (`file` y `ls -l`) |
| 13 | Vincular archivos (`ln`) |
| 14 | Reiniciar la terminal (`exec bash`) |
| 15 | Crear carpetas (`mkdir`) |
| 16 | Crear archivos (`touch`) |
| 17 | Crear usuarios (`adduser`) |
| 18 | Crear grupos (`groupadd`) |
| 19 | Copiar carpetas (`cp -r`) |
| 20 | Eliminar carpeta (`rm -r`) |
| 21 | Eliminar archivo (`rm`) |
| 22 | Agregar un usuario a un grupo (`usermod -aG`) |
| 23 | Listar usuarios (`cut -d: -f1 /etc/passwd`) |
| 24 | Listar grupos (`cut -d: -f1 /etc/group`) |
| 25 | Actualizar el sistema (`apt update && apt upgrade`) |
| 26 | Salir del menú |
| 27 | Comprimir carpeta (`tar -czvf`) |
| 28 | Descomprimir archivo (`tar -xzvf`) |
| 29 | Buscar archivo por nombre (`find`) |
| 30 | Mostrar procesos activos (`ps aux`) |

</details>

## 🚀 Instalación y uso

1. Clonar el repositorio:

```bash
git clone https://github.com/TuUsuario/menu-linux-asisr.git
cd menu-linux-asisr
```
 

2. Dar permisos de ejecución al script:
```bash
chmod +x scripts/menu_linux.sh
```
3. Ejecutar el script:
```bash
./scripts/menu_linux.sh
```
