<?php 
get_header();

echo '<main id="is_nhabe360">';
    if( !is_home() && !is_front_page()){
        echo '<div class="pt-5 mt-5"><div class="container">';
        echo dimox_breadcrumbs();
        echo '</div></div>';
	}
    if (get_field('content_layout')) :
        while (has_sub_field('content_layout')):
            echo get_template_part('template-parts/parts/page', get_row_layout());
        endwhile;
    else: 
        get_template_part( 'content', 'none' );
    endif;  
echo '</main>';

get_footer(); 
?>