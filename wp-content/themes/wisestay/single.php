<?php get_header(); ?>
<main id="is_nhabe360">
    <div class="wrapper mt-5 pt-5">
        <div class="container">
            <?php 
                echo dimox_breadcrumbs();
            ?>
            <div class="row">
                <div class="col-lg-9 col-lg-9">
                    <?php 
                    if ( have_posts() ) : while ( have_posts() ) : the_post(); 
                        // get_template_part( 'entry' ); 
                        get_template_part('template-parts/category/entry-single');
                        get_template_part('template-parts/category/relate-posts');
                    // if ( comments_open() && ! post_password_required() ) { comments_template( '', true ); }
                    endwhile; endif; 
                ?>
                </div>
                <div class="col-lg-3 col-lg-3">

                </div>
            </div>
        </div>
    </div>


    <!-- <footer class="footer">
<?php //get_template_part( 'nav', 'below-single' ); ?>
</footer> -->
</main>
<?php //get_sidebar(); ?>
<?php get_footer(); ?>