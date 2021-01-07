<article class="news__item" id="post-<?php the_ID(); ?>">
    <div class="row">
        <div class="col-sm-4">
            <?php 
                if( has_post_thumbnail() ){
                    $post_thumbnail_id = get_post_thumbnail_id($post->ID);
                    $post_thumbnail_url = wp_get_attachment_image_src($post_thumbnail_id, 'medium' );
            ?>
            <a href="<?php echo the_permalink(); ?>" class="news__link" title="<?php echo get_the_title(); ?>">
                <img class="news__img" src="<?php echo $post_thumbnail_url['0']; ?>" alt="<?php echo get_the_title(); ?>">
            </a>
            <?php } ?>

        </div>
        <div class="col-sm-8">
            <div class="news__content">
                <h3 class="news__title">
                    <a href="<?php echo the_permalink(); ?>" title="<?php echo get_the_title(); ?>">
                        <?php echo get_the_title(); ?>
                    </a>
                </h3>
                <div class="entry-meta">
                    <?php 
                        
                        echo '<span class="entry-cat">'.get_the_category()[0]->name.'</span>';

                        echo '<span class="entry-date">'.get_the_date('d-m-Y').'</span>';
                    ?>
                </div>
                <?php 
                    $summary = strip_tags(get_the_content());
                    $excerpt = get_the_excerpt();
                    if($excerpt != ''){
                         $summary = $excerpt;
                    }
                    if (strlen($summary) > 300){
                        $summary = current(explode('::BR::', wordwrap($summary, 300, '::BR::'))) . ' &hellip;';
                    }
                    echo '<p class="news__description ">'.$summary.'</p>';              
                ?>

            </div>
        </div>
    </div>
</article>