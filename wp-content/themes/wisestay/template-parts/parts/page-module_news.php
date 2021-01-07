<?php 
    $title = get_sub_field('title');
    $category_id = get_sub_field('category_id');
    
?>

<section class="news py-5">
    <div class="container">
        <div class="heading">
            <?php 
                if($title && $title !=""){
                    echo '<h2>'.$title.'</h2>';
                }else{
                    echo '<h2>Tin tức</h2>';
                }
            ?>
        </div>
        <div class="mt-4">
            <div class="row">
                <div class="col-lg-9 col-md-9">
                    <div class="news__list">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 left">
                                <?php 
		$cat_id = $category_id;
		if ( $cat_id && $cat_id !='' ) {
			$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
			$limit = 1;
			
            $args = array(
                'paged' => $paged,
                'post_type' => 'post',
                'post_status' => 'publish',
                'update_post_meta_cache' => false, //Display posts, but don't add post meta information to the cache
                'update_post_term_cache' => false, //Display posts, but don't add post term information to the cache
                'cat' => $cat_id,
                'posts_per_page' => $limit,
                'orderby' => 'date',
                'order' => 'DESC'
            ); 	
            $query = my_custom_query($args);
	        $count_post = $query->found_posts;
	        
	        if ($query->have_posts()):
	        	$i = 0;
	        	while ($query->have_posts()): $query->the_post();
	                $title = get_the_title();
	               
	            ?>
                                <div class="item">

                                    <?php 
	            		if( has_post_thumbnail() ){
	                     	$post_thumbnail_id = get_post_thumbnail_id($post->ID);
    						$post_thumbnail_url = wp_get_attachment_image_src($post_thumbnail_id, 'thumb' );
    					?>
                                    <div class="image">
                                        <a href="<?php echo the_permalink(); ?>" title="<?php echo $title; ?>">
                                            <img class="w-100" src="<?php echo $post_thumbnail_url['0']; ?>" alt="<?php echo $title; ?>" />
                                        </a>
                                    </div>

                                    <?php
    					}
	            		?>
                                    <div class="desc">
                                        <div class="title">
                                            <h3>
                                                <a href="<?php echo get_the_permalink(); ?>" title="<?php echo $title; ?>">
                                                    <?php echo $title; ?>
                                                </a>
                                            </h3>
                                        </div>

                                        <?php
								$excerpt = get_the_excerpt();
								if($excerpt != ''){
									$summary = $excerpt;
								}
								else{
									$summary = get_the_content();
								}
							    if (strlen($summary) > 200){
							        $summary = current(explode('::BR::', wordwrap($summary, 200, '::BR::'))) . ' &hellip;';
							    }
								echo '<p>'.$summary.'</p>';
								// echo '<p>'.$summary.' <a class="readmore" title="'.$title.'" href="'.get_the_permalink().'">View More</a></p>';
								?>
                                    </div>
                                </div>
                                <?php
	            $i++;
	            endwhile;
	        endif;
	        wp_reset_postdata();
		}
		?>

                            </div>
                            <div class="col-lg-6 col-md-6 right">

                                <?php 
                                    $cat_id = $category_id;
                                    if ( $cat_id && $cat_id !='' ) {
                                        $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
                                        $limit = 6;
                                        $args = array(
                                            'paged' => $paged,
                                            'post_type' => 'post',
                                            'post_status' => 'publish',
                                            'update_post_meta_cache' => false,
                                            'update_post_term_cache' => false, 
                                            'cat' => $cat_id,
                                            'offset' => 1,
                                            'posts_per_page' => $limit,
                                            'orderby' => 'date',
                                            'order' => 'DESC'
                                        ); 	
                                        $query = my_custom_query($args);
                                        $count_post = $query->found_posts;
                                        
                                        if ($query->have_posts()):
                                            $i = 0;
                                            while ($query->have_posts()): $query->the_post();
                                                $title = get_the_title();
                                                    ?>
                                <div class="item">
                                    <div class="desc">
                                        <div class="title">
                                            <h3>
                                                <a href="<?php echo the_permalink(); ?>" title="<?php echo $title; ?>">
                                                    <?php echo $title; ?>
                                                </a>
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                                <?php
                                            $i++;
                                            endwhile;
                                        endif;
                                        wp_reset_postdata();
                                    }
                                ?>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="ads">
                        <div class="ads-item">
                            <a href="#" title="">
                                <img src="<?php echo get_template_directory_uri() . '/assets/images/ads.jpg' ?>" class="w-100" alt="">
                            </a>
                        </div>
                        <div class="ads-item">
                            <a href="#" title="">
                                <img src="<?php echo get_template_directory_uri() . '/assets/images/ads.jpg' ?>" class="w-100" alt="">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>