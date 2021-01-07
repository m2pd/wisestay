<?php 
    $title = get_sub_field('title');
    $category_id = get_sub_field('category_id');
?>
<section class="product py-5">
    <div class="container">
        <div class="heading d-flex justify-content-between align-items-center">
            <?php 
                if($title && $title != ''){
                    echo '<h2>'.$title.'</h2>';
                }else{
                    echo '<h2>Sản phẩm</h2>';
                }
                $category_link = get_category_link( $category_id );
                echo '<a href="'.$category_link.'">Xem thêm</a>';
            ?>
        </div>
        <div class="product__list product-list">
            <?php 
                // $posts_array = get_posts(
                //     array(
                //         'posts_per_page' => 4,
                //         'post_type' => 'danh-sach-san-pham',
                //         'orderby' => 'date',
                //         'order' => 'DESC',
                //         'tax_query' => array(
                //             array(
                //                 'taxonomy' => 'loai',
                //                 'terms' => $category_id,
                //             )
                //         )
                //     )
                // );
                $query = new WP_Query([
                    'post_type' => 'danh-sach-san-pham',
                    'posts_per_page' => 4,
                    'tax_query' => array(
                        array(
                            'taxonomy' => 'loai',
                            'terms' => $category_id,
                            'orderby'    => 'ID',
                            'order' => 'ASC',
                            'hide_empty' => false
                        )
                    )
                ]);
                echo '<div class="row">';
                if ($query->have_posts()):
                    while ($query->have_posts()): $query->the_post();
                        $title = get_the_title();
                        $term_obj_list = get_the_terms( get_the_ID(), 'khuvuc' );
                        $bedroom = get_field( "bedroom", get_the_ID() );
                        $acreage = get_field( "acreage", get_the_ID() );
                        $direction = get_field( "direction", get_the_ID() );
                        $price = get_field( "price", get_the_ID() );
                        $toilet = get_field( "toilet", get_the_ID() );
                        $gallery = get_field( "gallery", get_the_ID() );
                            ?>
            <div class="col-sm-4 col-md-3">
                <div class="box-item">
                    <div class="box-item__cover">
                        <?php 
                                                if( has_post_thumbnail() ){
                                                    $post_thumbnail_id = get_post_thumbnail_id($post->ID);
                                                    $post_thumbnail_url = wp_get_attachment_image_src($post_thumbnail_id, 'thumb' );
                                            ?>
                        <div class="img">
                            <a href="<?php echo the_permalink(); ?>" title="<?php echo $title; ?>">
                                <img src="<?php echo $post_thumbnail_url['0']; ?>" alt="<?php echo $title; ?>" />
                            </a>
                        </div>

                        <?php
                                                }
                                            ?>

                    </div>
                    <div class="box-item__info">
                        <h3 class="box-item__title">
                            <a href="<?php echo the_permalink(); ?>" class="box-item__link" title="<?php echo $title; ?>">
                                <?php 
                                    echo $title; 
                                    
                                ?>
                            </a>
                        </h3>
                        <div class="box-item__city">
                            <img src="<?php echo get_template_directory_uri() . '/assets/images/pin.svg' ?>" alt="">
                            <?php 
                                foreach($term_obj_list as $item) {
                                    echo '<span>'.$item->name.'</span>';
                                }
                            ?>
                        </div>
                        <p class="box-item__price">
                            <!-- Giá: ~ 8 tr -->
                            <?php 
                                if($price && $price != ''){
                                    echo 'Giá: ' . $price; 
                                }else{
                                    echo 'Giá: Liên hệ'; 
                                }
                                 
                                
                            ?>
                        </p>
                        <div class="box-item__service d-flex flex-row align-items-center">
                            <?php 
                                if($bedroom && $bedroom !=""){
                                    ?>
                            <div type="button" data-toggle="tooltip" data-placement="top" title="Phòng ngủ" class="mr-4">
                                <img src="<?php echo get_template_directory_uri() . '/assets/images/bedroom.svg' ?>" alt="">
                                <span>3</span>
                            </div>
                            <?php
                                }
                                if($toilet && $toilet != ""){
                                    ?>
                            <div data-toggle="tooltip" data-placement="top" title="Số phòng WC" class="mr-4">
                                <img src="<?php echo get_template_directory_uri() . '/assets/images/wc.svg' ?>" alt="">
                                <span>2</span>
                            </div>
                            <?php
                                }
                                if($acreage && $acreage != ""){
                                    ?>
                            <div type="button" data-toggle="tooltip" data-placement="top" title="Diện tích" class="mr-4">
                                <img src="<?php echo get_template_directory_uri() . '/assets/images/acreage.svg' ?>" alt="">
                                <span><?php echo $acreage; ?> m<sup>2</sup></span>
                            </div>
                            <?php
                                }
                                // if($direction && $direction !=''){
                                    ?>
                            <!-- <div class="direction mr-4" type="button" data-toggle="tooltip" data-placement="top" title="Hướng">
                                <img src="<?php //echo get_template_directory_uri() . '/assets/images/resize.svg' ?>" alt="">
                                <span><?php //echo $direction; ?></span>
                            </div> -->
                            <?php
                                // }
                            ?>



                        </div>
                    </div>
                </div>
            </div>
            <?php
                                    endwhile;
                                endif;
                                wp_reset_postdata();
                                echo '</div>';
                // echo '<div class="row">';
                // if ( $getposts->have_posts() ){
				// 	while ( $getposts->have_posts() ) { 
                //         $getposts->the_post();
				// 		// $term_obj_list = get_the_terms( get_the_ID(), 'quocgia' );
				// 		// $count = @COUNT($term_obj_list);
// 		// $term_obj_list = get_the_terms( get_the_ID(), 'quocgia' );
				// 		// $link = get_field( "link", get_the_ID() );
				// 		// $day = get_field( "thoi_gian", get_the_ID() );
				// 		// $volume = get_field( "dung_luong", get_the_ID() );
				// 		// $gia = get_field( "gia", get_the_ID() );
                //         // echo '<div class="col-sm-4 col-md-3">' . get_the_title() . '</div>';
                        
                //     }
                //     }else{
                //     echo '<p>'._e( 'Sorry, no posts matched your criteria.' ).'</p>';
                //     };
                //     echo '</div>';
            ?>
        </div>
    </div>
</section>