<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <!--=============== FAVICON ===============-->
   <link rel="shortcut icon" href="{{ asset('frontend/img/favicon.png') }}" type="image/x-icon">

   <!--=============== REMIXICONS ===============-->
   <link href="https://cdn.jsdelivr.net/npm/remixicon@3.2.0/fonts/remixicon.css" rel="stylesheet">

   <!--=============== SWIPER CSS ===============-->
   <link rel="stylesheet" href="{{ asset('frontend/assets/css/swiper-bundle.min.css') }}">

   <!--=============== CSS ===============-->
   <link rel="stylesheet" href="{{ asset('frontend/assets/css/styles.css') }}">>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">

   <title>Lumina Shop</title>

   <style>

   </style>
</head>

<body>
   <!--==================== HEADER ====================-->
   <header class="header" id="header">
      <nav class="nav container">
         <a href="#" class="nav__logo">
            Lu<span>mina</span>
         </a>

         <div class="nav__menu" id="nav-menu">
            <ul class="nav__list">
               <li class="nav__item">
                  <a href="#home" class="nav__link active-link">Home</a>
               </li>

               <li class="nav__item">
                  <a href="#popular" class="nav__link">Popular</a>
               </li>

               <li class="nav__item">
                  <a href="#choose" class="nav__link">Choose</a>
               </li>

               <li class="nav__item">
                  <a href="#products" class="nav__link">Products</a>
               </li>

               <li class="nav__item">
                  <a href="product_more.html" class="nav__link">Product Search</a>
               </li>

               <li class="nav__item">
                  <div class="profile">
                        <div class="user">
                           <h3>Aslan Asilon</h3>
                           <p style="font-weight:bold; color:white;">@aslan</p>
                        </div>
                        <div class="img-box">
                           <img src="{{ asset('frontend/assets/img/man4.png') }}" alt="some user image">
                        </div>
                  </div>
                  <div class="menu">
                        <ul>
                           <li><a href="#"><i class="ph-bold ph-user"></i>&nbsp;Profile</a></li>
                           <li><a href="#"><i class="ph-bold ph-envelope-simple"></i>&nbsp;Inbox</a></li>
                           <li><a href="#"><i class="ph-bold ph-gear-six"></i>&nbsp;Settings</a></li>
                           <li><a href="#"><i class="ph-bold ph-question"></i>&nbsp;Help</a></li>
                           <li><a href="#"><i class="ph-bold ph-sign-out"></i>&nbsp;Sign Out</a></li>
                        </ul>
                  </div>
               </li>

            </ul>

            <!-- Close button -->
            <div class="nav__close" id="nav-close">
               <i class="ri-close-line"></i>
            </div>
         </div>

         <div class="nav__buttons">
            <!-- Theme change button -->
            <i class="ri-moon-line change-theme" id="theme-button"></i>

            <!-- Toggle button -->
            <div class="nav__toggle" id="nav-toggle">
               <i class="ri-menu-line"></i>
            </div>

            <a href="cart.html">
                  <div class="d-flex align-items-center" style="display:flex; color:white;">
                     3 <span class="fas fa-shopping-cart"></span> 
                  </div>
            </a>

         </div>
      </nav>
   </header>

   <!--==================== MAIN ====================-->
   <main class="main">
      <!--==================== HOME ====================-->
      <section class="home section" id="home">
         <div class="home__bg"></div>

         <div class="home__container container grid">
            <div class="home__content grid">
               <div class="home__data">
                  <h3 class="home__subtitle">
                     The best light bulbs
                  </h3>

                  <h1 class="home__title">
                     Unique Light <br>
                     For You Home
                  </h1>

                  <div class="home__buttons">
                     <a href="#" class="button">
                        Discover Now
                     </a>

                     <a href="#" class="button__link">
                        <i class="ri-play-circle-line"></i> Watch Video
                     </a>
                  </div>
               </div>

               <div class="home__info">

               <div>
               <h3 class="home__info-title" id="premiumProductCount">
                  0<span>+</span>
               </h3>
               <span class="home__info-subtitle">
                  Premium <br> Product
               </span>
               </div>

               <div>
                  <h3 class="home__info-title" id="happyCustomerCount">
                     0<span>+</span>
                  </h3>
                  <span class="home__info-subtitle">
                     Happy <br> Customer
                  </span>
               </div>

               <div>
                  <h3 class="home__info-title" id="awardWinningCount">
                     0<span>+</span>
                  </h3>
                  <span class="home__info-subtitle">
                     Awards <br> Winning
                  </span>
               </div>
               </div>
            </div>

            <div class="home__image">
               <div class="home__blob"  >
                  <img  src=" {{ asset('assets/img/home-lamp.png') }} " alt="home image" class="home__img">
                  <h1 class="home__blob-title">
                     
                  </h1>
               </div>

               <div class="home__shadow"></div>
            </div>
         </div>
      </section>

      <!--==================== POPULAR ====================-->
      <section class="popular section" id="popular">
         <div class="popular__container container">
            <div class="popular__data" id="zoom-out" >
               <h2 class="section__title">Popular Product</h2>

               <p class="popular__description split">
                  Find our best products faster and get the
                  quality lights we have for you.
               </p>
            </div>

            <div class="popular__content grid swiper">
               <div class="swiper-wrapper">
                  <article class="popular__card swiper-slide">
                     <div class="popular__blob">
                        <img src="{{ asset('frontend/assets/img/modern-lamp.png') }}" alt="popular image" class="popular__img">
                     </div>

                     <h3 class="popular__name">Modern Light</h3>
                     <span class="popular__subtitle">Hanging Light</span>
                     <h3 class="popular__price">
                        <a class="price_">1.140.000</a> 
                        <p class="price_before"><span class="price_sign">Rp</span> 900.000</p>
                        <p class="popular__icons">
                           <i class="ri-bookmark-line"></i>
                           <i class="ri-heart-line"></i>
                           <i class="ri-share-line"></i>
                           <a class="popular_det" href="product_detail.html">
                              <i class="ri-eye-line"></i>
                           </a>
                           <i class="ri-message-2-line"></i>
                        </p>
                        <p class="popular__starts">
                           <i class="ri-star-fill"></i>
                           <i class="ri-star-fill"></i>
                           <i class="ri-star-fill"></i>
                           <i class="ri-star-fill"></i>
                           <i class="ri-star-half-line"></i>
                        </p>
                     </h3>

                     <button class="popular__button">
                        <i class="ri-shopping-cart-2-line"></i>
                     </button>
                  </article>

                  <article class="popular__card swiper-slide">
                     <div class="popular__blob">
                        <img src="{{ asset('frontend/assets/img/industrial-lamp.png') }}" alt="popular image" class="popular__img">
                     </div>

                     <h3 class="popular__name">Industrial Light</h3>
                     <span class="popular__subtitle">Hanging Light</span>
                     <h3 class="popular__price">
                        <a class="price_">2.000.000</a> 
                        <p><span class="price_sign">Rp</span> 900.000</p>
                        <p class="popular__icons">
                           <i class="ri-bookmark-line"></i>
                           <i class="ri-heart-line"></i>
                           <i class="ri-share-line"></i>
                           <a class="popular_det" href="product_detail.html">
                              <i class="ri-eye-line"></i>
                           </a>
                           <i class="ri-message-2-line"></i>
                        </p>
                        <p class="popular__starts">
                           <i class="ri-star-fill"></i>
                           <i class="ri-star-fill"></i>
                           <i class="ri-star-fill"></i>
                           <i class="ri-star-fill"></i>
                           <i class="ri-star-half-line"></i>
                        </p>
                     </h3>

                     <button class="popular__button">
                        <i class="ri-shopping-cart-2-line"></i>
                     </button>
                  </article>

                  <article class="popular__card swiper-slide">
                     <div class="popular__blob">
                        <img src="{{ asset('frontend/assets/img/superbolw-lamp.png') }}" alt="popular image" class="popular__img">
                     </div>

                     <h3 class="popular__name">Superbolw Light</h3>
                     <span class="popular__subtitle">Hanging Light</span>
                     <h3 class="popular__price">
                        <a class="price_">1.080.000</a> 
                        <p><span class="price_sign">Rp</span> 900.000</p>
                        <p class="popular__icons">
                           <i class="ri-bookmark-line"></i>
                           <i class="ri-heart-line"></i>
                           <i class="ri-share-line"></i>
                           <a class="popular_det" href="product_detail.html">
                              <i class="ri-eye-line"></i>
                           </a>
                           <i class="ri-message-2-line"></i>
                        </p>
                        <p class="popular__starts">
                           <i class="ri-star-fill"></i>
                           <i class="ri-star-fill"></i>
                           <i class="ri-star-fill"></i>
                           <i class="ri-star-fill"></i>
                           <i class="ri-star-half-line"></i>
                        </p>
                     </h3>

                     <button class="popular__button">
                        <i class="ri-shopping-cart-2-line"></i>
                     </button>
                  </article>

                  <article class="popular__card swiper-slide">
                     <div class="popular__blob">
                        <img src="{{ asset('frontend/assets/img/ultrawide-lamp.png') }}" alt="popular image" class="popular__img">
                     </div>

                     <h3 class="popular__name">Ultrawide Light</h3>
                     <span class="popular__subtitle">Hanging Light</span>
                     <h3 class="popular__price">
                        <a class="price_">160.000</a> 
                        <p><span class="price_sign">Rp</span> 900.000</p>

                        <p class="popular__icons">
                           <i class="ri-bookmark-line"></i>
                           <i class="ri-heart-line"></i>
                           <i class="ri-share-line"></i>
                           <a class="popular_det" href="product_detail.html">
                              <i class="ri-eye-line"></i>
                           </a>
                           <i class="ri-message-2-line"></i>
                        </p>
                        <p class="popular__starts">
                           <i class="ri-star-fill"></i>
                           <i class="ri-star-fill"></i>
                           <i class="ri-star-fill"></i>
                           <i class="ri-star-fill"></i>
                           <i class="ri-star-half-line"></i>
                        </p>
                     </h3>

                     <button class="popular__button">
                        <i class="ri-shopping-cart-2-line"></i>
                     </button>
                  </article>

                  <article class="popular__card swiper-slide">
                     <div class="popular__blob">
                        <img src="{{ asset('frontend/assets/img/roundness-light.png') }}" alt="popular image" class="popular__img">
                     </div>

                     <h3 class="popular__name">Roundness Light</h3>
                     <span class="popular__subtitle">Hanging Light</span>
                     <h3 class="popular__price">
                        <a class="price_">170.000</a> 
                        <p><span class="price_sign">Rp</span> 900.000</p>
                        <p class="popular__icons">
                           <i class="ri-bookmark-line"></i>
                           <i class="ri-heart-line"></i>
                           <i class="ri-share-line"></i>
                           <a class="popular_det" href="product_detail.html">
                              <i class="ri-eye-line"></i>
                           </a>
                           <i class="ri-message-2-line"></i>
                        </p>
                        <p class="popular__starts">
                           <i class="ri-star-fill"></i>
                           <i class="ri-star-fill"></i>
                           <i class="ri-star-fill"></i>
                           <i class="ri-star-fill"></i>
                           <i class="ri-star-half-line"></i>
                        </p>

                     </h3>

                     <button class="popular__button">
                        <i class="ri-shopping-cart-2-line"></i>
                     </button>
                  </article>
               </div>

               <!-- Navigation buttons -->
               <div class="swiper-button-prev">
                  <i class="ri-arrow-left-s-line"></i>
               </div>

               <div class="swiper-button-next">
                  <i class="ri-arrow-right-s-line"></i>
               </div>
            </div>
         </div>
      </section>

      <!--==================== CHOOSE ====================-->
      <section class="choose section" id="choose">
         <div class="choose__container container grid">
            <div class="choose__image">
               <div class="choose__blob">
                  <img src="{{ asset('frontend/assets/img/choose-lamp.png') }}" alt="choose image" class="choose__img">
                  <h1 class="choose__blob-title"></h1>
               </div>

               <div class="choose__shadow"></div>
            </div>

            <div class="choose__content">
               <div class="choose__data">
                  <h2 class="section__title">Why Choose Us</h2>

                  <p class="choose__description">
                     Our products have won numerous awards
                     and we can guarantee the unlimited
                     quality of our products.
                  </p>
               </div>

               <div class="choose__faq">
                  <div class="choose__faq-item">
                     <div class="choose__faq-header">
                        <div class="choose__faq-icon">
                           <i class="ri-add-line"></i>
                        </div>
                        <h3 class="choose__faq-title">Frequently New Design</h3>
                     </div>

                     <div class="choose__faq-content">
                        <p class="choose__faq-description">
                           We make new designs every year,
                           fashion designs, trending and of
                           the best quality.
                        </p>
                     </div>
                  </div>

                  <div class="choose__faq-item">
                     <div class="choose__faq-header">
                        <div class="choose__faq-icon">
                           <i class="ri-add-line"></i>
                        </div>
                        <h3 class="choose__faq-title">Original Production</h3>
                     </div>

                     <div class="choose__faq-content">
                        <p class="choose__faq-description">
                           We are the industrial chain of
                           quality lighting products and offer
                           the most advantageous price.
                        </p>
                     </div>
                  </div>

                  <div class="choose__faq-item">
                     <div class="choose__faq-header">
                        <div class="choose__faq-icon">
                           <i class="ri-add-line"></i>
                        </div>
                        <h3 class="choose__faq-title">Production With Large Stock</h3>
                     </div>

                     <div class="choose__faq-content">
                        <p class="choose__faq-description">
                           You will not be left without the lamp
                           you chose, we have a large stock
                           possible in all models.
                        </p>
                     </div>
                  </div>

                  <div class="choose__faq-item">
                     <div class="choose__faq-header">
                        <div class="choose__faq-icon">
                           <i class="ri-add-line"></i>
                        </div>
                        <h3 class="choose__faq-title">Professional Quality Control</h3>
                     </div>

                     <div class="choose__faq-content">
                        <p class="choose__faq-description">
                           Our quality control does everything
                           possible to send you the best
                           possible product for your home.
                        </p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>

      <!--==================== FEATURES ====================-->
      <section class="features section">
         <div class="features__container container grid">
            <div class="features__image">
               <div class="features__blob">
                  <img src="{{ asset('frontend/assets/img/features-lamp.png') }}" alt="features image" class="features__img">
                  <h1 class="features__blob-title"></h1>
               </div>

               <div class="features__shadow"></div>
            </div>

            <div class="features__content">
               <div class="features__data">
                  <h2 class="section__title">Latest Features</h2>

                  <p class="features__description">
                     We always provide the latest and best
                     features for your customer, don't worry, we
                     provide the latest technology for you.
                  </p>
               </div>

               <div class="features__info">
                  <div class="features__info-card">
                     <h3 class="features__info-title">
                        Voltage <br> Settings
                     </h3>
                  </div>

                  <div class="features__info-card">
                     <h3 class="features__info-title">
                        Application <br> Control
                     </h3>
                  </div>

                  <div class="features__info-card">
                     <h3 class="features__info-title">
                        Voice <br> Control
                     </h3>
                  </div>

                  <div class="features__info-card">
                     <h3 class="features__info-title">
                        Schedule <br> Settings
                     </h3>
                  </div>
               </div>
            </div>
         </div>
      </section>

      <!--==================== PRODUCTS ====================-->
      <section class="products section" id="products">
         <div class="products__container container grid">
            <div class="products__data">
               <h2 class="section__title">Our Product</h2>

               <p class="products__description">
                  Discover all our unique products that
                  are suitable for your home.
               </p>
            </div>

            <div class="products__content grid">
               <article class="products__card">
                  <div class="products__blob">
                     <img src="{{ asset('frontend/assets/img/modern-lamp.png') }}" alt="products image" class="products__img">
                  </div>

                  <h3 class="products__name">Modern Light</h3>
                  <span class="products__subtitle">Hanging Light</span>
                  <h3 class="products__price">
                     <a class="price_">140.000</a> 
                     <p><span class="price_sign">Rp</span> 900.000</p>
                     <p class="products__icons">
                        <i class="ri-bookmark-line"></i>
                        <i class="ri-heart-line"></i>
                        <i class="ri-share-line"></i>
                        <a class="products_det" href="product_detail.html">
                           <i class="ri-eye-line"></i>
                        </a>
                        <i class="ri-message-2-line"></i>
                     </p>
                     <p class="products__starts">
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-half-line"></i>
                     </p>
                  </h3>

                  <button class="products__button">
                        <i class="ri-shopping-cart-2-line"></i>
                  </button>
               </article>

               <article class="products__card">
                  <div class="products__blob">
                     <img src="{{ asset('frontend/assets/img/industrial-lamp.png') }}" alt="products image" class="products__img">
                  </div>

                  <h3 class="products__name">Industrial Light</h3>
                  <span class="products__subtitle">Hanging Light</span>
                  <h3 class="products__price">
                     <a class="price_">200.000</a> 
                     <p><span class="price_sign">Rp</span> 900.000</p>
                     <p class="products__icons">
                        <i class="ri-bookmark-line"></i>
                        <i class="ri-heart-line"></i>
                        <i class="ri-share-line"></i>
                        <a class="products_det" href="product_detail.html">
                           <i class="ri-eye-line"></i>
                        </a>
                        <i class="ri-message-2-line"></i>
                     </p>
                     <p class="products__starts">
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-half-line"></i>
                     </p>
                  </h3>

                  <button class="products__button">
                        <i class="ri-shopping-cart-2-line"></i>
                  </button>
               </article>

               <article class="products__card">
                  <div class="products__blob">
                     <img src="{{ asset('frontend/assets/img/superbolw-lamp.png') }}" alt="products image" class="products__img">
                  </div>

                  <h3 class="products__name">Superbolw Light</h3>
                  <span class="products__subtitle">Hanging Light</span>
                  <h3 class="products__price">
                     <a class="price_">180.000</a> 
                     <p><span class="price_sign">Rp</span> 900.000</p>
                     <p class="products__icons">
                        <i class="ri-bookmark-line"></i>
                        <i class="ri-heart-line"></i>
                        <i class="ri-share-line"></i>
                        <a class="popular_det" href="product_detail.html">
                           <i class="ri-eye-line"></i>
                        </a>
                        <i class="ri-message-2-line"></i>
                     </p>
                     <p class="products__starts">
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-half-line"></i>
                     </p>
                  </h3>

                  <button class="products__button">
                        <i class="ri-shopping-cart-2-line"></i>
                  </button>
               </article>

               <article class="products__card">
                  <div class="products__blob">
                     <img src="{{ asset('frontend/assets/img/ultrawide-lamp.png') }}" alt="products image" class="products__img">
                  </div>

                  <h3 class="products__name">Ultrawide Light</h3>
                  <span class="products__subtitle">Hanging Light</span>
                  <h3 class="products__price">
                     <a class="price_">160.000</a> 
                     <p><span class="price_sign">Rp</span> 900.000</p>
                  </h3>

                  <button class="products__button">
                        <i class="ri-shopping-cart-2-line"></i>
                  </button>
               </article>

               <article class="products__card">
                  <div class="products__blob">
                     <img src="{{ asset('frontend/assets/img/roundness-light.png') }}" alt="products image" class="products__img">
                  </div>

                  <h3 class="products__name">Roundness Light</h3>
                  <span class="products__subtitle">Hanging Light</span>
                  <h3 class="products__price">
                     <a class="price_">170.000</a> 
                     <p><span class="price_sign">Rp</span> 900.000</p>
                     <p class="products__icons">
                        <i class="ri-bookmark-line"></i>
                        <i class="ri-heart-line"></i>
                        <i class="ri-share-line"></i>
                        <i class="ri-eye-line"></i>
                        <i class="ri-message-2-line"></i>
                     </p>
                     <p class="products__starts">
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-half-line"></i>
                     </p>
                  </h3>

                  <button class="products__button">
                        <i class="ri-shopping-cart-2-line"></i>
                  </button>
               </article>

               <article class="products__card">
                  <div class="products__blob">
                     <img src="{{ asset('frontend/assets/img/stickness-light.png') }}" alt="products image" class="products__img">
                  </div>

                  <h3 class="products__name">Stickness Light</h3>
                  <span class="products__subtitle">Hanging Light</span>
                  <h3 class="products__price">
                     <a class="price_">280.000</a> 
                     <p><span class="price_sign">Rp</span> 900.000</p>
                     <p class="products__icons">
                        <i class="ri-bookmark-line"></i>
                        <i class="ri-heart-line"></i>
                        <i class="ri-share-line"></i>
                        <a class="popular_det" href="product_detail.html">
                           <i class="ri-eye-line"></i>
                        </a>
                        <i class="ri-message-2-line"></i>
                     </p>
                     <p class="products__starts">
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-half-line"></i>
                     </p>
                  </h3>

                  <button class="products__button">
                        <i class="ri-shopping-cart-2-line"></i>
                  </button>
               </article>

               <article class="products__card">
                  <div class="products__blob">
                     <img src="{{ asset('frontend/assets/img/superjet-light.png') }}" alt="products image" class="products__img">
                  </div>

                  <h3 class="products__name">Superjet Light</h3>
                  <span class="products__subtitle">Hanging Light</span>
                  <h3 class="products__price">
                     <a class="price_">150.000</a> 
                     <p><span class="price_sign">Rp</span> 900.000</p>
                     <p class="products__icons">
                        <i class="ri-bookmark-line"></i>
                        <i class="ri-heart-line"></i>
                        <i class="ri-share-line"></i>
                        <a class="popular_det" href="product_detail.html">
                           <i class="ri-eye-line"></i>
                        </a>
                        <i class="ri-message-2-line"></i>
                     </p>
                     <p class="products__starts">
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-half-line"></i>
                     </p>
                  </h3>

                  <button class="products__button">
                        <i class="ri-shopping-cart-2-line"></i>
                  </button>
               </article>

               <article class="products__card">
                  <div class="products__blob">
                     <img src="{{ asset('frontend/assets/img/nakedness-lamp.png') }}" alt="products image" class="products__img">
                  </div>

                  <h3 class="products__name">Nakedness Light</h3>
                  <span class="products__subtitle">Hanging Light</span>
                  <h3 class="products__price">
                     <a class="price_">100.000</a> 
                     <p><span class="price_sign">Rp</span> 900.000</p>
                     <p class="products__icons">
                        <i class="ri-bookmark-line"></i>
                        <i class="ri-heart-line"></i>
                        <i class="ri-share-line"></i>
                        <a class="popular_det" href="product_detail.html">
                           <i class="ri-eye-line"></i>
                        </a>
                        <i class="ri-message-2-line"></i>
                     </p>
                     <p class="products__starts">
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-fill"></i>
                        <i class="ri-star-half-line"></i>
                     </p>
                  </h3>

                  <button class="products__button">
                        <i class="ri-shopping-cart-2-line"></i>
                  </button>
               </article>
            </div>
         </div>
      </section>

      <!--==================== JOIN ====================-->
      <section class="join section">
         <div class="join__container container grid">
            <div class="join__bg grid">
               <div class="join__image">
                  <div class="join__blob">
                     <img src="{{ asset('frontend/assets/img/join-lamp.png') }}" alt="join image" class="join__img">
                     <h1 class="join__blob-title">LIGHT</h1>
                  </div>

                  <div class="join__shadow"></div>
               </div>

               <div class="join__content grid">
                  <div class="join__data">
                     <h2 class="section__title">Get Started</h2>

                     <p class="join__description">
                        Do not miss it, join us and get <br>
                        interesting discounts with us.
                     </p>
                  </div>

                  <form action="" class="join__form">
                     <input type="email" placeholder="Enter your email" class="join__input">

                     <button class="button join__button">
                        Join Now
                     </button>
                  </form>
               </div>
            </div>
         </div>
      </section>
   </main>

   <!--==================== FOOTER ====================-->
   <footer class="footer">
      <div class="footer__container container grid">
         <div class="footer__content grid">
            <div>
               <a href="#" class="footer__logo">
                  Lu<span>mina</span>
               </a>

               <div class="footer__description">
                  We have a vision to make <br>
                  lighting evenly distributed to all <br>
                  parts of the earth.
               </div>
            </div>

            <div class="footer__data grid">
               <div>
                  <h3 class="footer__title">About</h3>

                  <ul class="footer__links">
                     <li>
                        <a href="#" class="footer__link">About Us</a>
                     </li>

                     <li>
                        <a href="#" class="footer__link">Features</a>
                     </li>

                     <li>
                        <a href="#" class="footer__link">News & Blog</a>
                     </li>
                  </ul>
               </div>

               <div>
                  <h3 class="footer__title">Movement</h3>

                  <ul class="footer__links">
                     <li>
                        <a href="#" class="footer__link">What Lumina</a>
                     </li>

                     <li>
                        <a href="#" class="footer__link">Support Us</a>
                     </li>
                  </ul>
               </div>

               <div>
                  <h3 class="footer__title">Company</h3>

                  <ul class="footer__links">
                     <li>
                        <a href="#" class="footer__link">Why Sunlight</a>
                     </li>

                     <li>
                        <a href="#" class="footer__link">Capital</a>
                     </li>

                     <li>
                        <a href="#" class="footer__link">Security</a>
                     </li>
                  </ul>
               </div>

               <div>
                  <h3 class="footer__title">Follow Us</h3>

                  <div class="footer__social">
                     <a href="https://www.facebook.com/" target="_blank" class="footer__social-link">
                        <i class="ri-facebook-circle-line"></i>
                     </a>

                     <a href="https://www.instagram.com/" target="_blank" class="footer__social-link">
                        <i class="ri-instagram-line"></i>
                     </a>

                     <a href="https://twitter.com/" target="_blank" class="footer__social-link">
                        <i class="ri-twitter-line"></i>
                     </a>
                  </div>
               </div>
            </div>
         </div>

         <div class="footer__group">
            <div class="footer__terms">
               <a href="#">Terms & Agreements</a>
               <a href="#">Privacy Policy</a>
            </div>

            <span class="footer__copy">
               &#169; Copyright Lumina. All rights reserved
            </span>
         </div>
      </div>
   </footer>

   <!--========== SCROLL UP ==========-->
   <a href="#" class="scrollup" id="scroll-up">
      <i class="ri-arrow-up-line"></i>
   </a>

   <!--=============== SCROLLREVEAL ===============-->
   <script src="{{ asset('frontend/assets/js/scrollreveal.min.js') }}"></script>

   <!--=============== SWIPER JS ===============-->
   <script src="{{ asset('frontend/assets/js/swiper-bundle.min.js') }}"></script>

   <!--=============== MAIN JS ===============-->
   <script src="{{ asset('frontend/assets/js/main.js') }}"></script>

<script>
  function countTo(target, end, duration) {
    const element = document.getElementById(target);
    const start = 0;
    const range = end - start;
    const increment = end > start ? 1 : -1;
    const stepTime = Math.abs(Math.floor(duration / range));

    let current = start;

    const interval = setInterval(() => {
      current += increment;
      element.textContent = current + "+";

      if ((increment > 0 && current >= end) || (increment < 0 && current <= end)) {
        clearInterval(interval);
      }
    }, stepTime);
  }

  window.onload = function () {
    countTo("premiumProductCount", 210, 100); // 2000 milliseconds (2 seconds) duration
    countTo("happyCustomerCount", 9500, 1000); // 2000 milliseconds (2 seconds) duration
    countTo("awardWinningCount", 9500, 100); // 2000 milliseconds (2 seconds) duration
  };
</script>


<!-- ==================================  GSAP -->

  <!-- Ionicons Usage -->
  <script src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
  <!-- GSAP CDN -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.10.4/gsap.min.js"></script>
  <!-- ScrollMagic CDN -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.7/ScrollMagic.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.7/plugins/debug.addIndicators.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.7/plugins/animation.gsap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/TextPlugin.min.js" integrity="sha512-xAxjKW1J/R4TFytv43xvQ7jFTrJlBzsDOH/Aw0fFc2nvarQkE3d08lTicjzUsZJYDoHYDCpwsUUqOJXh34A1sw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/ScrollTrigger.min.js" integrity="sha512-onMTRKJBKz8M1TnqqDuGBlowlH0ohFzMXYRNebz+yOcc5TQr/zAKsthzhuv0hiyUKEiQEQXEynnXCvNTOk50dg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/ScrollToPlugin.min.js" integrity="sha512-1PKqXBz2ju2JcAerHKL0ldg0PT/1vr3LghYAtc59+9xy8e19QEtaNUyt1gprouyWnpOPqNJjL4gXMRMEpHYyLQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/PixiPlugin.min.js" integrity="sha512-n5YlUC0L2bmI5Bt2yZKgnLlJpgPQCeaE2KKgBfgAJ53c6h4MeZA96Vs5QKND27owYmIIfOsYGF2BPM3VW3CN3w==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/Observer.min.js" integrity="sha512-pLJlXRr/H5t+k+Tjc+Qe0Z6u6psPak7rvYBdsZ0Z+kG84jn/zifMNTQBZKZlwZC1z23bifGoQWzGnI0eWBJKPQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/MotionPathPlugin.min.js" integrity="sha512-lhK7xTsFM6DPXOtQQyPe+NmpoFEheKDHjM/5QzpFRiE1KySgtBfEzYz4XowvB+CAWcBLBGWinhh41uNaOtrSZA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/EaselPlugin.min.js" integrity="sha512-i5d9zswMBppmXShWCFABEr9WqUMmD55mQ1u7PA7eXqdtd+HAD8Pe76SwWwkXRH7d3t9Xqv3fWi3jhlvNsKYDQQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/Draggable.min.js" integrity="sha512-G7Wpe/pbg+zjyyM9HgQY6kacLAy+580lmA8DUXmZtioTI5FkaCRoLOaCLoeblrZABs7KZFD03cfSV9j7nmwxfw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/CustomEase.min.js" integrity="sha512-4a56NRIrhn/ePBdSSNfwsmL+eZt/uCXEb7s+3B8tg/tDiywDMKb5u2QCdhsYQtEkUMPGE5GUVbZYqgKeRzJ7yQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/CSSRulePlugin.min.js" integrity="sha512-IxxYrSNXnt/RJlxNX40+7BQL88FLqvdpVpuV9AuvpNH/NFP0L8xA8WLxWTXx6PYExB5R/ktQisp6tIrnLn8xvw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
  const { innerHeight } = window;

   gsap.from('#zoom-out h2',{
      scale:10,stager:0.10, duration: 1,
      scrollTrigger : {
         trigger: "#zoom-out h2",
         pin:false,
         end:`+=${innerHeight * 0.7}`,
         scrub:5
      }
   });

   gsap.to('#zoom-in h2',{
      scale:5,stager:0.10, duration: 1,
      scrollTrigger : {
         trigger: "#zoom-in h2",
         pin:false,
         end:`+=${innerHeight * 0.7}`,
         scrub:5
      }
   }); 

</script>

<script>
   import gsap  from "gsap-trial";
   import { SplitText } from "gsap-trial/SplitText";
   import { ScrollTrigger } from "gsap-trial/ScrollTrigger";

   gsap.registerPlugin(SplitText);

   let mySplitText = new SplitText(".split",{type:"chars"})

   let chars = mySplitText.chars 

   gsap.from(chars, {
      yPercent:130;,
      stagger:0.05
   })

</script>

<!-- ================================== END GSAP -->


</body>

</html>

