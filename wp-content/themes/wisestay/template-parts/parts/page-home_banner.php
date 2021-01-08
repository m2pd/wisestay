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

<section class="gallery py-5">
    <div class="gallery__data">
        <div class="gallery__item">
            <img src="https://placedog.net/400/400/?id=10" alt="gallery">
        </div>
        <div class="gallery__item">
            <img src="https://placedog.net/400/400/?id=11" alt="gallery">
        </div>
        <div class="gallery__item">
            <img src="https://placedog.net/400/400/?id=12" alt="gallery">
        </div>
        <div class="gallery__item">
            <img src="https://placedog.net/400/400/?id=13" alt="gallery">
        </div>
        <div class="gallery__item">
            <img src="https://placedog.net/400/400/?id=14" alt="gallery">
        </div>
        <div class="gallery__item">
            <img src="https://placedog.net/400/400/?id=15" alt="gallery">
        </div>
        <div class="gallery__item">
            <img src="https://placedog.net/400/400/?id=16" alt="gallery">
        </div>
        <div class="gallery__item">
            <img src="https://placedog.net/400/400/?id=17" alt="gallery">
        </div>
        <div class="gallery__item">
            <img src="https://placedog.net/400/400/?id=18" alt="gallery">
        </div>
        <div class="gallery__item">
            <img src="https://placedog.net/400/400/?id=19" alt="gallery">
        </div>
        <div class="gallery__item">
            <img src="https://placedog.net/400/400/?id=20" alt="gallery">
        </div>
        <div class="gallery__item">
            <img src="https://placedog.net/400/400/?id=21" alt="gallery">
        </div>
    </div>
    <a href="#" class="gallery__link">
        #homeiswheretheheartsare
    </a>
</section>

<section class="testimonial py-5">
    <div class="container">
        <div class="heading">
            <h2>Phản hồi</h2>
        </div>
        <div class="testimonial__data">
            <div class="testimonial__container" id="testimonialSlide">
                <div class="testimonial__item">
                    <svg class="testimonial__quote" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="975.036px" height="975.036px" viewBox="0 0 975.036 975.036" style="enable-background: new 0 0 975.036 975.036;" xml:space="preserve">
                        <g>
                            <path d="M925.036,57.197h-304c-27.6,0-50,22.4-50,50v304c0,27.601,22.4,50,50,50h145.5c-1.9,79.601-20.4,143.3-55.4,191.2
                    c-27.6,37.8-69.399,69.1-125.3,93.8c-25.7,11.3-36.8,41.7-24.8,67.101l36,76c11.6,24.399,40.3,35.1,65.1,24.399
                    c66.2-28.6,122.101-64.8,167.7-108.8c55.601-53.7,93.7-114.3,114.3-181.9c20.601-67.6,30.9-159.8,30.9-276.8v-239
                    C975.036,79.598,952.635,57.197,925.036,57.197z" />
                            <path d="M106.036,913.497c65.4-28.5,121-64.699,166.9-108.6c56.1-53.7,94.4-114.1,115-181.2c20.6-67.1,30.899-159.6,30.899-277.5
                    v-239c0-27.6-22.399-50-50-50h-304c-27.6,0-50,22.4-50,50v304c0,27.601,22.4,50,50,50h145.5c-1.9,79.601-20.4,143.3-55.4,191.2
                    c-27.6,37.8-69.4,69.1-125.3,93.8c-25.7,11.3-36.8,41.7-24.8,67.101l35.9,75.8C52.336,913.497,81.236,924.298,106.036,913.497z" />
                        </g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                    </svg>
                    <p class="testimonial__text">
                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eius blanditiis incidunt cumque eveniet officia nulla praesentium, ad voluptatem id odio dignissimos pariatur maxime nihil. Officiis illum maxime in at soluta.
                    </p>
                    <figure class="testimonial__info">
                        <img src="<?php echo get_template_directory_uri() . '/assets/images/panorama.jpg' ?>" alt="" class="testimonial__image">
                        <figcaption class="testimonial__name">M2pd</figcaption>
                    </figure>
                </div>
                <div class="testimonial__item">
                    <svg class="testimonial__quote" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="975.036px" height="975.036px" viewBox="0 0 975.036 975.036" style="enable-background: new 0 0 975.036 975.036;" xml:space="preserve">
                        <g>
                            <path d="M925.036,57.197h-304c-27.6,0-50,22.4-50,50v304c0,27.601,22.4,50,50,50h145.5c-1.9,79.601-20.4,143.3-55.4,191.2
                    c-27.6,37.8-69.399,69.1-125.3,93.8c-25.7,11.3-36.8,41.7-24.8,67.101l36,76c11.6,24.399,40.3,35.1,65.1,24.399
                    c66.2-28.6,122.101-64.8,167.7-108.8c55.601-53.7,93.7-114.3,114.3-181.9c20.601-67.6,30.9-159.8,30.9-276.8v-239
                    C975.036,79.598,952.635,57.197,925.036,57.197z" />
                            <path d="M106.036,913.497c65.4-28.5,121-64.699,166.9-108.6c56.1-53.7,94.4-114.1,115-181.2c20.6-67.1,30.899-159.6,30.899-277.5
                    v-239c0-27.6-22.399-50-50-50h-304c-27.6,0-50,22.4-50,50v304c0,27.601,22.4,50,50,50h145.5c-1.9,79.601-20.4,143.3-55.4,191.2
                    c-27.6,37.8-69.4,69.1-125.3,93.8c-25.7,11.3-36.8,41.7-24.8,67.101l35.9,75.8C52.336,913.497,81.236,924.298,106.036,913.497z" />
                        </g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                    </svg>
                    <p class="testimonial__text">
                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eius blanditiis incidunt cumque eveniet officia nulla praesentium, ad voluptatem id odio dignissimos pariatur maxime nihil. Officiis illum maxime in at soluta.
                    </p>
                    <figure class="testimonial__info">
                        <img src="<?php echo get_template_directory_uri() . '/assets/images/panorama.jpg' ?>" alt="" class="testimonial__image">
                        <figcaption class="testimonial__name">M2pd</figcaption>
                    </figure>
                </div>
                <div class="testimonial__item">
                    <svg class="testimonial__quote" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="975.036px" height="975.036px" viewBox="0 0 975.036 975.036" style="enable-background: new 0 0 975.036 975.036;" xml:space="preserve">
                        <g>
                            <path d="M925.036,57.197h-304c-27.6,0-50,22.4-50,50v304c0,27.601,22.4,50,50,50h145.5c-1.9,79.601-20.4,143.3-55.4,191.2
                    c-27.6,37.8-69.399,69.1-125.3,93.8c-25.7,11.3-36.8,41.7-24.8,67.101l36,76c11.6,24.399,40.3,35.1,65.1,24.399
                    c66.2-28.6,122.101-64.8,167.7-108.8c55.601-53.7,93.7-114.3,114.3-181.9c20.601-67.6,30.9-159.8,30.9-276.8v-239
                    C975.036,79.598,952.635,57.197,925.036,57.197z" />
                            <path d="M106.036,913.497c65.4-28.5,121-64.699,166.9-108.6c56.1-53.7,94.4-114.1,115-181.2c20.6-67.1,30.899-159.6,30.899-277.5
                    v-239c0-27.6-22.399-50-50-50h-304c-27.6,0-50,22.4-50,50v304c0,27.601,22.4,50,50,50h145.5c-1.9,79.601-20.4,143.3-55.4,191.2
                    c-27.6,37.8-69.4,69.1-125.3,93.8c-25.7,11.3-36.8,41.7-24.8,67.101l35.9,75.8C52.336,913.497,81.236,924.298,106.036,913.497z" />
                        </g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                        <g></g>
                    </svg>
                    <p class="testimonial__text">
                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eius blanditiis incidunt cumque eveniet officia nulla praesentium, ad voluptatem id odio dignissimos pariatur maxime nihil. Officiis illum maxime in at soluta.
                    </p>
                    <figure class="testimonial__info">
                        <img src="<?php echo get_template_directory_uri() . '/assets/images/panorama.jpg' ?>" alt="" class="testimonial__image">
                        <figcaption class="testimonial__name">M2pd</figcaption>
                    </figure>
                </div>
            </div>

            <nav class="nav-control">
                <i class="am am-prev">
                    <img src="<?php echo get_template_directory_uri() . '/assets/images/aleft.png' ?>" alt="">
                </i>
                <i class="am am-next">
                    <img src="<?php echo get_template_directory_uri() . '/assets/images/aright.png' ?>" alt="">
                </i>
            </nav>
        </div>
    </div>
</section>