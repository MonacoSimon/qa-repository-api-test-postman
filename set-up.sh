#!/bin/bash

echo "=================================="
echo "QA API Testing - Setup"
echo "=================================="

echo ""
echo "Verificando Node.js..."

if ! command -v node &> /dev/null
then
    echo "ERROR: Node.js no está instalado"
    exit 1
fi

echo "Node.js encontrado"

echo ""
echo "Verificando npm..."

if ! command -v npm &> /dev/null
then
    echo "ERROR: npm no está instalado"
    exit 1
fi

echo "npm encontrado"

echo ""
echo "Verificando Newman..."

if ! command -v newman &> /dev/null
then
    echo "Newman no encontrado"
    echo ""
    echo "Instalando Newman..."
    
    npm install -g newman
    
    if [ $? -ne 0 ]; then
        echo "ERROR: no se pudo instalar Newman"
        exit 1
    fi
fi

echo "Newman encontrado"

echo ""
echo "Creando directorios necesarios..."

mkdir -p newman/results

echo "Directorios creados"

echo ""
echo "Asignando permisos..."

chmod +x newman/run.sh

echo "Permisos asignados"

echo ""
echo "=================================="
echo "Entorno listo"
echo "=================================="

echo ""
echo "Para ejecutar las pruebas:"
echo ""
echo "cd newman"
echo "./run.sh"