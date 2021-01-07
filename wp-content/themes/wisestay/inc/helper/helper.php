<?php
//Favicon 
if (!function_exists('favicon')) :
    function favicon() {
        $cache_key = "favicon.custom_field";
        $fields = wp_cache_get($cache_key, 'favicon');
        if (!$fields) {
            $fields = get_field('favicon', 'option');
            wp_cache_add($cache_key, $fields, 'favicon');
        }
        return $fields;
    }
endif;

// Header logo images 
if (!function_exists('global_logo')) :
    function global_logo() {
        $cache_key = "global_logo.custom_field";
        $fields = wp_cache_get($cache_key, 'global_logo');
        if (!$fields) {
            $fields = get_field('global_logo', 'option');
            wp_cache_add($cache_key, $fields, 'global_logo');
        }
        return $fields;
    }
endif;
if (!function_exists('logo_white')) :
    function logo_white() {
        $cache_key = "logo_white.custom_field";
        $fields = wp_cache_get($cache_key, 'logo_white');
        if (!$fields) {
            $fields = get_field('logo_white', 'option');
            wp_cache_add($cache_key, $fields, 'logo_white');
        }
        return $fields;
    }
endif;


// contact_info
if (!function_exists('contact_info')) :
    function contact_info() {
        $cache_key = "contact_info.custom_field";
        $fields = wp_cache_get($cache_key, 'contact_info');
        if (!$fields) {
            $fields = get_field('contact_info', 'option');
            wp_cache_add($cache_key, $fields, 'contact_info');
        }
        return $fields;
    }
endif;

// facebook_fanpage
if (!function_exists('facebook_fanpage')) :
    function facebook_fanpage() {
        $cache_key = "facebook_fanpage.custom_field";
        $fields = wp_cache_get($cache_key, 'facebook_fanpage');
        if (!$fields) {
            $fields = get_field('facebook_fanpage', 'option');
            wp_cache_add($cache_key, $fields, 'facebook_fanpage');
        }
        return $fields;
    }
endif;




// Social container
if (!function_exists('social_container')) :
    function social_container() {
        $cache_key = "social_container.custom_field";
        $fields = wp_cache_get($cache_key, 'social_container');
        if (!$fields) {
            $fields = get_field('global_social', 'option');
            wp_cache_add($cache_key, $fields, 'social_container');
        }
        return $fields;
    }
endif;

// copyright
if (!function_exists('copyright')) :
    function copyright() {
        $cache_key = "copyright.custom_field";
        $fields = wp_cache_get($cache_key, 'copyright');
        if (!$fields) {
            $fields = get_field('global_copyright', 'option');
            wp_cache_add($cache_key, $fields, 'copyright');
        }
        return $fields;
    }
endif;
//get query post on page
if (!function_exists('my_custom_query')) :
    function my_custom_query($args)
    {
        $query = '';
        if ($args && $args != '') {
            $query = new WP_Query($args);
        }
        return $query;
    }
endif;
?>