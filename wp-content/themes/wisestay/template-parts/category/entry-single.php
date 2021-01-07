<div class="single-new">
    <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
        <header>
            <?php 
            if ( is_singular() ) {
                echo '<h1 class="entry-title">';
            } else {
                echo '<h2 class="entry-title">';
            } 
        ?>
            <!-- <a href="<?php //the_permalink(); ?>" title="<?php //the_title_attribute(); ?>"> -->
            <?php the_title(); ?>
            <!-- </a> -->
            <?php 
            if ( is_singular() ) {
                echo '</h1>';
            } else {
                echo '</h2>';
            } 
        ?>
            <div class="entry-meta">
                <?php 
                        
                        echo '<span class="entry-cat">'.get_the_category()[0]->name.'</span>';

                        echo '<span class="entry-date">'.get_the_date('d-m-Y').'</span>';
                    ?>
            </div>
            <?php //edit_post_link(); ?>
            <?php //if ( ! is_search() ) { get_template_part( 'entry', 'meta' ); } ?>
        </header>
        <?php get_template_part( 'entry', ( is_front_page() || is_home() || is_front_page() && is_home() || is_archive() || is_search() ? 'summary' : 'content' ) ); ?>
        <?php //if ( is_singular() ) { get_template_part( 'entry-footer' ); } ?>
    </article>
</div>