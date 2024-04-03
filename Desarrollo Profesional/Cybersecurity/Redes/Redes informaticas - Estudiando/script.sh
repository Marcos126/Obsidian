#!/bin/bash

# Definición de la estructura de carpetas con numeración para ordenarlas secuencialmente
base_dir="."

# Crear la estructura principal de 'Conceptos básicos'
mkdir -p "$base_dir/1-Conceptos_basicos/1-Temas_que_aprenderas_sobre_redes"
mkdir -p "$base_dir/1-Conceptos_basicos/2-Antecedentes_redes_computacionales"
mkdir -p "$base_dir/1-Conceptos_basicos/3-Que_es_red_computadoras"
mkdir -p "$base_dir/1-Conceptos_basicos/4-Importancia_redes_computacionales"
mkdir -p "$base_dir/1-Conceptos_basicos/5-Que_son_Bits_Bytes"
mkdir -p "$base_dir/1-Conceptos_basicos/6-Clasificacion_redes_computadoras"

# Crear la estructura de 'Software de redes'
mkdir -p "$base_dir/2-Software_redes/1-Protocolos_red"
mkdir -p "$base_dir/2-Software_redes/2-Model_TCP_IP"
mkdir -p "$base_dir/2-Software_redes/3-Identificando_redes_Asignacion_direcciones_IP"
mkdir -p "$base_dir/2-Software_redes/4-Que_es_modelo_OSI"
mkdir -p "$base_dir/2-Software_redes/5-Capa_fisica"
mkdir -p "$base_dir/2-Software_redes/6-Cable_par_trenzado"
mkdir -p "$base_dir/2-Software_redes/7-Capa_enlace_datos"
mkdir -p "$base_dir/2-Software_redes/8-Que_es_direccion_MAC"
mkdir -p "$base_dir/2-Software_redes/9-Que_es_capa_red"
mkdir -p "$base_dir/2-Software_redes/10-Capa_transporte"
mkdir -p "$base_dir/2-Software_redes/11-Capa_sesion"
mkdir -p "$base_dir/2-Software_redes/12-Capa_presentacion"
mkdir -p "$base_dir/2-Software_redes/13-Capa_aplicacion"
mkdir -p "$base_dir/2-Software_redes/14-Diferencias_modelo_OSI_TCP_IP"

# Crear la estructura de 'Hardware de redes'
mkdir -p "$base_dir/3-Hardware_redes/1-8_Tipos_dispositivos_red_funcionamiento"
mkdir -p "$base_dir/3-Hardware_redes/2-Simbolos_dibujar_arquitecturas_redes"
mkdir -p "$base_dir/3-Hardware_redes/3-Redes_empresariales_ejemplos"

# Crear la estructura de 'Conclusión del curso'
mkdir -p "$base_dir/4-Conclusion_curso/1-Cierre_curso_siguientes_pasos"

echo "Estructura de carpetas creada con éxito."

