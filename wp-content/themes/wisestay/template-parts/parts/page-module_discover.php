<section class="discover py-5">
    <div class="container">
        <div class="heading">
            <h2>Khám phá khu vực</h2>
        </div>
        <div class="discover__list discover-list mt-4">
            <?php 
                $terms = get_terms( array(
                    'taxonomy' => 'khuvuc',
                    'hide_empty' => false
                ) );
            ?>
            <div class="slider">
                <?php 
                    foreach($terms as $term) :
                        $tax_term_id = $term->term_taxonomy_id;
                        $images = get_option('taxonomy_image_plugin');
                        $slug = home_url() . "/khu-vuc/" . $term->slug;
                        echo '<div class="item"><div class="image"><a href="'.$slug.'" title="'.$term->name.'">';
                        echo wp_get_attachment_image( $images[$tax_term_id], 'medium' );
                        echo '</a></div><div class="title"><h3><a href="'.$slug.'" title="'.$term->name.'">'.$term->name.'</a></h3></div></div>';
                    endforeach;
                ?>

            </div>
        </div>
    </div>
    </div>
</section>