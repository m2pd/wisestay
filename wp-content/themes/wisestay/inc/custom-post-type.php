<?php
/**
 * Define custom post type
 */
//Add option page
add_action('init', 'create_post_type');

function create_post_type()
{
    if( function_exists('acf_add_options_page') ) {

        acf_add_options_page(array(
            'page_title' 	=> 'Thiết lập',
            'menu_title'	=> 'Thiết lập',
            'menu_slug' 	=> 'global-settings',
            'capability'	=> 'edit_posts',
            'redirect'		=> false,
            'icon_url' => 'dashicons-admin-customizer',
            'position'=>'7.5'
        ));

    }

}


function disable_new_posts()
{
// Hide sidebar link
    global $submenu;
    unset($submenu['edit.php?post_type=home_setting'][10]);
    unset($submenu['edit.php?post_type=home_setting'][5]);
    unset($submenu['edit.php?post_type=global_setting'][10]);
    unset($submenu['edit.php?post_type=global_setting'][5]);

}

add_action('admin_menu', 'disable_new_posts');
