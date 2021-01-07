<?php 
    $title = get_sub_field('title');
    $form_contact = get_sub_field('form_contact');
?>
<section class="contact py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-10 offset-md-1">
                <div class="row">
                    <div class="col-md-6">
                        <div class="heading">
                            <?php
                                if($title && $title !=''){
                                    echo '<h2>'.$title.'</h2>';
                                }else{
                                    echo '<h2>Liên hệ</h2>';
                                }
                            ?>
                        </div>
                        <div class="contact__form">
                            <?php echo do_shortcode($form_contact) ; ?>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="contact__info">
                            <div class="heading">
                                <h2>Thông tin liên hệ</h2>
                            </div>
                            <h3>Nhà Bè 360</h3>
                            <p>Địa chỉ: Số 17, Đường 17 Phú Mỹ Hưng, Phường Tân Phú, Quận 7, Thành Phố Hồ Chí Minh</p>
                            <p>Số điện thoại: <a href="tel:0918607088">0918607088</a></p>
                            <p>Email:<a href="mailto:chautuan@daiphatgroup.com">chautuan@daiphatgroup.com</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>