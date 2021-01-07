<?php
$image = get_sub_field('home_banner');
if ($image && $image != '') :
    ?>
    <section id="page-banner" class="banner">
        <div class="container pt-5 mt-5">
            <div class="item">
                <img src="<?php echo $image; ?>" alt="wisestay">
            </div>
        </div>
    </section>
<?php endif; ?>


<section class="explore py-5">
    <div class="container">
        <div class="heading">
            <h2>Khám phá Nha Trang</h2>
        </div>
        <div class="explore__list">
            <div class="row">
                <div class="col-lg-2 col-md-2">
                    <div class="item">
                        <div class="image">
                            <a href="#" title="">
                                <img src="<?php echo get_template_directory_uri() . '/assets/images/panorama.jpg' ?>" alt="" class="w-100">
                            </a>
                        </div>
                        <div class="box-content">
                            <h3>
                                <a href="#" title="">Chỗ nghỉ</a>
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-2">
                    <div class="item">
                        <div class="image">
                            <a href="#" title="">
                                <img src="<?php echo get_template_directory_uri() . '/assets/images/panorama.jpg' ?>" alt="" class="w-100">
                            </a>
                        </div>
                        <div class="box-content">
                            <h3>
                                <a href="#" title="">Bất động sản</a>
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-2">
                    <div class="item">
                        <div class="image">
                            <a href="#" title="">
                                <img src="<?php echo get_template_directory_uri() . '/assets/images/panorama.jpg' ?>" alt="" class="w-100">
                            </a>
                        </div>
                        <div class="box-content">
                            <h3>
                                <a href="#" title="">Di chuyển</a>
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-2">
                    <div class="item">
                        <div class="image">
                            <a href="#" title="">
                                <img src="<?php echo get_template_directory_uri() . '/assets/images/panorama.jpg' ?>" alt="" class="w-100">
                            </a>
                        </div>
                        <div class="box-content">
                            <h3>
                                <a href="#" title="">Khám phá Nha Trang</a>
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-2">
                    <div class="item">
                        <div class="image">
                            <a href="#" title="">
                                <img src="<?php echo get_template_directory_uri() . '/assets/images/panorama.jpg' ?>" alt="" class="w-100">
                            </a>
                        </div>
                        <div class="box-content">
                            <h3>
                                <a href="#" title="">Kinh nghiệm du lịch</a>
                            </h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="brand py-5">
    <div class="container">
        <div class="heading">
            <h2>Thương hiệu</h2>
        </div>
        <div class="brand__data">
            <div class="brand__list">
                <div class="brand__item">
                    <img src="<?php echo get_template_directory_uri() . '/assets/images/brand/Agoda-1-02-02.jpg' ?>" alt="" class="w-100">
                </div>
                <div class="brand__item">
                    <img src="<?php echo get_template_directory_uri() . '/assets/images/brand/gotadi-logo.jpg' ?>" alt="" class="w-100">
                </div>
                <div class="brand__item">
                    <img src="<?php echo get_template_directory_uri() . '/assets/images/brand/booking.jpg' ?>" alt="" class="w-100">
                </div>
                <div class="brand__item">
                    <img src="<?php echo get_template_directory_uri() . '/assets/images/brand/chudu24.jpg' ?>" alt="" class="w-100">
                </div>
                <div class="brand__item">
                    <img src="<?php echo get_template_directory_uri() . '/assets/images/brand/ivivu.png' ?>" alt="" class="w-100">
                </div>
                <div class="brand__item">
                    <img src="<?php echo get_template_directory_uri() . '/assets/images/brand/luxstay.jpg' ?>" alt="" class="w-100">
                </div>

                <div class="brand__item">
                    <img src="<?php echo get_template_directory_uri() . '/assets/images/brand/mytour.jpg' ?>" alt="" class="w-100">
                </div>
                <div class="brand__item">
                    <img src="<?php echo get_template_directory_uri() . '/assets/images/brand/traveloka.jpg' ?>" alt="" class="w-100">
                </div>
                <div class="brand__item">
                    <img src="<?php echo get_template_directory_uri() . '/assets/images/brand/tripi.png' ?>" alt="" class="w-100">
                </div>
                <div class="brand__item">
                    <img src="<?php echo get_template_directory_uri() . '/assets/images/brand/vntrip.jpg' ?>" alt="" class="w-100">
                </div>
                <div class="brand__item">
                    <img src="<?php echo get_template_directory_uri() . '/assets/images/brand/chudu24.jpg' ?>" alt="" class="w-100">
                </div>
                <div class="brand__item">
                    <img src="<?php echo get_template_directory_uri() . '/assets/images/brand/traveloka.jpg' ?>" alt="" class="w-100">
                </div>

            </div>
        </div>
    </div>
</section>

<section class="car-rental py-5">
    <div class="container">
        <div class="heading">
            <h2>Thương hiệu</h2>
        </div>
        <div class="car-rental__data">
            <div class="slick-slider" id="box-slide">
                <div class="box-book">
                    <p class="box-book__title">
                        <i class="fas fa-car"></i>
                        <span>Cho thuê xe của Mũv</span>
                    </p>
                    <ul class="box-book__route fa-ul">
                        <li class="box-book__route-from">
                            <span class="fa-li"><i class="fas fa-circle"></i></span>
                            <span class="route-title">Sài gòn</span>
                        </li>
                        <li class="box-book__route-to">
                            <span class="fa-li"><i class="fas fa-map-marker-alt"></i></span>

                            <span class="route-title">Vũng tàu</span>
                        </li>
                    </ul>
                    <div class="box-book__service">
                        <p class="box-book__price">Từ 95$</p>
                        <p class="box-book__way">1 chiều</p>
                    </div>
                    <a href="#" class="button-now">Đặt bây giờ</a>
                </div>
                <div class="box-book">
                    <p class="box-book__title">
                        <i class="fas fa-car"></i>
                        <span>Cho thuê xe của Mũv</span>
                    </p>
                    <ul class="box-book__route fa-ul">
                        <li class="box-book__route-from">
                            <span class="fa-li"><i class="fas fa-circle"></i></span>
                            <span class="route-title">Sài gòn</span>
                        </li>
                        <li class="box-book__route-to">
                            <span class="fa-li"><i class="fas fa-map-marker-alt"></i></span>

                            <span class="route-title">Vũng tàu</span>
                        </li>
                    </ul>
                    <div class="box-book__service">
                        <p class="box-book__price">Từ 95$</p>
                        <p class="box-book__way">1 chiều</p>
                    </div>
                    <a href="#" class="button-now">Đặt bây giờ</a>
                </div>
                <div class="box-book">
                    <p class="box-book__title">
                        <i class="fas fa-car"></i>
                        <span>Cho thuê xe của Mũv</span>
                    </p>
                    <ul class="box-book__route fa-ul">
                        <li class="box-book__route-from">
                            <span class="fa-li"><i class="fas fa-circle"></i></span>
                            <span class="route-title">Sài gòn</span>
                        </li>
                        <li class="box-book__route-to">
                            <span class="fa-li"><i class="fas fa-map-marker-alt"></i></span>

                            <span class="route-title">Vũng tàu</span>
                        </li>
                    </ul>
                    <div class="box-book__service">
                        <p class="box-book__price">Từ 95$</p>
                        <p class="box-book__way">1 chiều</p>
                    </div>
                    <a href="#" class="button-now">Đặt bây giờ</a>
                </div>
                <div class="box-book">
                    <p class="box-book__title">
                        <i class="fas fa-car"></i>
                        <span>Cho thuê xe của Mũv</span>
                    </p>
                    <ul class="box-book__route fa-ul">
                        <li class="box-book__route-from">
                            <span class="fa-li"><i class="fas fa-circle"></i></span>
                            <span class="route-title">Sài gòn</span>
                        </li>
                        <li class="box-book__route-to">
                            <span class="fa-li"><i class="fas fa-map-marker-alt"></i></span>

                            <span class="route-title">Vũng tàu</span>
                        </li>
                    </ul>
                    <div class="box-book__service">
                        <p class="box-book__price">Từ 95$</p>
                        <p class="box-book__way">1 chiều</p>
                    </div>
                    <a href="#" class="button-now">Đặt bây giờ</a>
                </div>
                <div class="box-book">
                    <p class="box-book__title">
                        <i class="fas fa-car"></i>
                        <span>Cho thuê xe của Mũv</span>
                    </p>
                    <ul class="box-book__route fa-ul">
                        <li class="box-book__route-from">
                            <span class="fa-li"><i class="fas fa-circle"></i></span>
                            <span class="route-title">Sài gòn</span>
                        </li>
                        <li class="box-book__route-to">
                            <span class="fa-li"><i class="fas fa-map-marker-alt"></i></span>

                            <span class="route-title">Vũng tàu</span>
                        </li>
                    </ul>
                    <div class="box-book__service">
                        <p class="box-book__price">Từ 95$</p>
                        <p class="box-book__way">1 chiều</p>
                    </div>
                    <a href="#" class="button-now">Đặt bây giờ</a>
                </div>
                <div class="box-book">
                    <p class="box-book__title">
                        <i class="fas fa-car"></i>
                        <span>Cho thuê xe của Mũv</span>
                    </p>
                    <ul class="box-book__route fa-ul">
                        <li class="box-book__route-from">
                            <span class="fa-li"><i class="fas fa-circle"></i></span>
                            <span class="route-title">Sài gòn</span>
                        </li>
                        <li class="box-book__route-to">
                            <span class="fa-li"><i class="fas fa-map-marker-alt"></i></span>

                            <span class="route-title">Vũng tàu</span>
                        </li>
                    </ul>
                    <div class="box-book__service">
                        <p class="box-book__price">Từ 95$</p>
                        <p class="box-book__way">1 chiều</p>
                    </div>
                    <a href="#" class="button-now">Đặt bây giờ</a>
                </div>
            </div>

            <nav class="nav-control">
                <i class="am am-prev">
                    <img src="<?php echo get_template_directory_uri() . '/assets/images/aright.png' ?>" alt="">
                </i>
                <i class="am am-next">
                    <img src="<?php echo get_template_directory_uri() . '/assets/images/aleft.png' ?>" alt="">
                </i>
            </nav>
        </div>
    </div>
</section>