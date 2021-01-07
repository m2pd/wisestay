<header id="header">
    <nav class="navbar navbar-expand-lg py-0 fixed-top">
        <div class="container">
            <a class="navbar-brand" href="<?php echo home_url(); ?>">
                <?php //bloginfo('name'); ?>
                <?php 
                    // if(logo_white() && logo_white() !=""){
                    //     echo '<img src="'.logo_white().'" alt="logo" class="logo-white">';
                    // }
                    if(global_logo() && global_logo() !=""){
                        echo '<img src="'.global_logo().'" alt="logo" class="logo">';
                    }
                ?>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <?php
                wp_nav_menu( array(
                    'theme_location'  => 'main-menu',
                    'depth'           => 3,
                    'container'       => 'div',
                    'container_id'    => 'main-menu',
                    'container_class' => 'collapse navbar-collapse',
                    'menu_class'      => 'nav navbar-nav ml-auto',
                    'fallback_cb'     => 'WP_Bootstrap_Navwalker::fallback',
                    'walker'          => new WP_Bootstrap_Navwalker()
                ) );
            ?>
        </div>
    </nav>

</header>