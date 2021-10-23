<?php
    class Conexion{

        public function conectar(){
            $servidor = "localhost";
            $usuario = "phpmyadmin";
            $password = "ISV@SAVI86";
            $bd = "agendayi";

            $conexion = mysqli_connect($servidor, $usuario, $password, $bd);

            return $conexion;
        }
    }
?>