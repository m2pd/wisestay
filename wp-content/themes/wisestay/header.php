<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>" />
    <meta name="viewport" content="width=device-width" />
    <?php
        if(favicon() && favicon() !=""){
            echo '<link rel="shortcut icon" type="image/x-icon" href="'.favicon().'"/>';
            echo '<link rel="icon" href="'.favicon().'" type="image/x-icon">';
        }
    ?>


    <?php wp_head(); echo add_stylesheet();?>
</head>

<body <?php body_class(); if(!is_home() && !is_front_page()){echo 'id="header-white"';} ?>>

    <?php get_template_part( 'template-parts/header', 'wrapper' ); ?>