<?php
/*
 * Code hiển thị bài viết liên quan trong cùng 1 category
 * Code by levantoan.com
 */
$categories = get_the_category(get_the_ID());
if ($categories){
    echo '<div class="relatedcat">';
    $category_ids = array();
    foreach($categories as $individual_category) $category_ids[] = $individual_category->term_id;
    $args=array(
        'category__in' => $category_ids,
        'post__not_in' => array(get_the_ID()),
        'posts_per_page' => 6, // So bai viet dc hien thi
    );
    $my_query = new wp_query($args);
    if( $my_query->have_posts() ):
        echo '<h2>Tin cùng chuyên mục</h2><ul>';
        while ($my_query->have_posts()):$my_query->the_post();
            ?>
<li><a href="<?php the_permalink() ?>" title="<?php the_title_attribute(); ?>"><?php the_title(); ?></a></li>
<?php
        endwhile;
        echo '</ul>';
    endif; wp_reset_query();
    echo '</div>';
}
?>