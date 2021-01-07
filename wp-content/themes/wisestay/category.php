<?php get_header(); ?>

<main id="is_nhabe360" class="category">

    <!-- <header class="header">
<h1 class="entry-title"><?php //single_term_title(); ?></h1>
<div class="archive-meta"><?php //if ( '' != the_archive_description() ) { echo esc_html( the_archive_description() ); } ?></div>
</header>
<?php //if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<?php //get_template_part( 'entry' ); ?>
<?php //endwhile; endif; ?>
<?php //get_template_part( 'nav', 'below' ); ?>
-->


    <div class="news wrapper mt-5 pt-5">

        <div class="container">
            <?php 
                echo dimox_breadcrumbs();
            ?>
            <div class="row">
                <div class="col-lg-9 col-md-9 col-12">
                    <h1 class="category-title">Tin tức</h1>

                    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); 
                          get_template_part('template-parts/category/entry');
                          endwhile; endif; ?>
                    <?php get_template_part( 'nav', 'below' ); ?>

                </div>
                <div class="col-lg-3 col-md-3 col-12">
                </div>
            </div>
        </div>
    </div>
</main>
<?php //get_sidebar(); ?>
<?php get_footer(); ?>