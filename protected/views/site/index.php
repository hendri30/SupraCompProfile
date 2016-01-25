<!-- CONTENT INDEX PAGE -->

	<section id="cta" class="wow fadeIn">
		<div class="container">
			<div class="row">
				<div class="col-sm-9">
					<h2><?php echo Yii::t('More than just a Service','More than just a Service'); ?></h2>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
				</div>
				<div class="col-sm-3 text-right">
					<a class="btn btn-danger btn-lg btn-scroll-to" href="#about"><?php echo Yii::t('Lets Check It Out!','Lets Check It Out!'); ?></a>
				</div>
			</div>
		</div>
	</section><!--/#cta-->

	<section id="about">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown">
					<?php foreach($about as $tentang){} ?>
					<?php echo Yii::t('pages_name/'.$tentang->id,$tentang->name); ?>
				</h2>
				<p class="text-center wow fadeInDown">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
			</div>
			<div class="row">
				<div class="col-sm-6 wow fadeInLeft">
					<h3 class="column-title"><?php echo Yii::t('Video Introduction','Video Introduction'); ?></h3>
					<!-- 16:9 aspect ratio -->
					<div class="embed-responsive embed-responsive-16by9">
						<iframe src="https://www.youtube.com/embed/5tSTmwwGT80" frameborder="0" allowfullscreen></iframe>
					</div>
				</div>
				<div class="col-sm-6 wow fadeInRight">
					<h3 class="column-title"><?php echo Yii::t('Line Of Bussines','Line Of Bussines'); ?></h3>
					<?php
					$konten=Yii::t('pages_content/'.$tentang->id,$tentang->content);
					echo substr($konten,0,700);
					?>
					<div>
						<a class="btn btn-danger" href="<?php echo Yii::app()->createUrl('about'); ?>"><?php echo Yii::t('Learn More','Learn More'); ?></a>
					</div>
				</div>
			</div>
		</div>
	</section><!--/#about-->

	<section id="features">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown">
					<?php foreach($features as $fitur){} ?>
					<?php echo Yii::t('pages_name/'.$fitur->id,$fitur->name); ?>
				</h2>
				<p class="text-center wow fadeInDown">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
			</div>
			<div class="row">
				<div class="col-sm-6 wow fadeInLeft">
					<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl.'/images/page/'.$fitur->thumb_image ?>" alt="">
				</div>
				<div class="col-sm-6">
					<div class="media service-box wow fadeInRight">
						<div class="pull-left">
							<?php echo Yii::t('pages_content/'.$fitur->id,$fitur->content); ?>
							<div>
								<a class="btn btn-danger" href="<?php echo Yii::app()->createUrl('features'); ?>"><?php echo Yii::t('Learn More','Learn More'); ?></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="services" >
		<div class="container">
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown">
					<?php foreach ($services as $layanan) {} ?>
					<?php echo Yii::t('pages_name/'.$layanan->id,$layanan->name); ?>
				</h2>
				<p class="text-center wow fadeInDown">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
			</div>
			<div class="row">
				<div class="features">				
					<?php echo Yii::t('pages_content/'.$layanan->id,$layanan->content); ?>
				</div>
			</div><!--/.row-->
		</div><!--/.container-->
	</section><!--/#services-->

	<section id="portfolio">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown"><?php echo Yii::t('Our Partners','Our Partners'); ?></h2>
				<p class="text-center wow fadeInDown">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
			</div>
			<?php /*<div class="text-center">
				<ul class="portfolio-filter">
					<li><a class="active" href="#" data-filter="*">All Works</a></li>
					<li><a href="#" data-filter=".customer">Partners</a></li>
					<li><a href="#" data-filter=".principals">Principal Partners</a></li>
				</ul><!--/#portfolio-filter-->
			</div>*/ ?>
			<div class="portfolio-items">
				<?php $i=1; foreach ($partner as $rekan): ?>
				<div class="portfolio-item customer">
					<div class="portfolio-item-inner">
						<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl.'/images/partner/'.$rekan->file_name; ?>" alt="">
						<div class="portfolio-info">
							<h3><?php echo $rekan->name; ?></h3>
							<a class="preview" href="<?php echo Yii::app()->request->baseUrl.'/images/partner/'.$rekan->file_name; ?>" rel="prettyPhoto"><i class="fa fa-eye"></i></a>
						</div>
					</div>
				</div><!--/.portfolio-item-->
				<?php $i++; endforeach; ?>
			</div>
		</div><!--/.container-->
	</section><!--/#portfolio-->

	<section id="work-process">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown"><?php echo Yii::t('Our Product','Our Product'); ?></h2>
				<p class="text-center wow fadeInDown">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
			</div>
			<div class="row text-center">
				<div class="col-sm-6 col-md-3">
					<div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="100ms">
						<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl; ?>/images/principals/rtt.png" alt="">
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="0ms">
						<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl; ?>/images/principals/almex.png" alt="">
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="0ms">
						<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl; ?>/images/principals/martin-white.png" alt="">
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="0ms">
						<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl; ?>/images/principals/contitech-white.png" alt="">
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="center wow fadeInUp" data-wow-duration="400ms" data-wow-delay="0ms">
						<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl; ?>/images/principals/trelleborg.png" alt="">
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="center wow fadeInUp" data-wow-duration="400ms" data-wow-delay="0ms">
						<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl; ?>/images/principals/lorbrand.png" alt="">
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="0ms">
						<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl; ?>/images/principals/mclanahan.png" alt="">
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="center wow fadeInUp" data-wow-duration="400ms" data-wow-delay="0ms">
						<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl; ?>/images/principals/mlt.png" alt="">
					</div>
				</div>
			</div>
		</div>
	</section><!--/#work-process-->

	<section id="meet-team">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown"><?php echo Yii::t('Meet The Team','Meet The Team'); ?></h2>
				<p class="text-center wow fadeInDown">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
			</div>
			<div class="row">
				<?php $i=1; foreach ($team as $tim): ?>
				<div class="col-sm-6 col-md-3">
					<div class="team-member wow fadeInUp" data-wow-duration="400ms" data-wow-delay="0ms">
						<div class="team-img">
							<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl.'/images/team/'.$tim->file_name; ?>" alt="">
						</div>
						<div class="team-info">
							<h3><?php echo $tim->name; ?></h3>
							<span><?php echo $tim->link; ?></span>
						</div>
						<ul class="social-icons">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
				<?php $i++; endforeach; ?>
			</div>
		</div>
	</section><!--/#meet-team-->

	<section id="blog">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown"><?php echo Yii::t('Latest Blogs','Latest Blogs'); ?></h2>
				<p class="text-center wow fadeInDown">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
			</div>
			<div class="row">
				<?php $i=1; foreach ($news as $berita): ?>
				<?php if($i==1) { ?>
				<div class="col-sm-6">
					<div class="blog-post blog-large wow fadeInLeft" data-wow-duration="300ms" data-wow-delay="0ms">
						<article>
							<header class="entry-header">
								<div class="entry-thumbnail">
									<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl.'/images/news/'.$berita->file_name; ?>" alt="">
								</div>
								<div class="entry-date"><?php echo $berita->date_create; ?></div>
								<h2 class="entry-title"><a href="#"><?php echo $berita->title; ?></a></h2>
							</header>
							<div class="entry-content">
								<p><?php echo Yii::t('news/'.$berita->id,$berita->content); ?></p>
								<a class="btn btn-danger" href="<?php echo Yii::app()->createUrl('news/'.$berita->id) ?>"><?php echo Yii::t('Read More','Read More'); ?></a>
							</div>
							<footer class="entry-meta">
								<span class="entry-author"><i class="fa fa-pencil"></i> <a href="#">Victor</a></span>
								<span class="entry-category"><i class="fa fa-folder-o"></i> <a href="#">Tutorial</a></span>
								<span class="entry-comments"><i class="fa fa-comments-o"></i> <a href="#">15</a></span>
							</footer>
						</article>
					</div>
				</div><!--/.col-sm-6-->
				<?php } if($i>=2) { ?>
				<div class="col-sm-6">
					<div class="blog-post blog-media wow fadeInRight" data-wow-duration="300ms" data-wow-delay="200ms" style="padding:0px 10px 0px 0px;">
						<article class="media clearfix">
							<div class="entry-thumbnail pull-left">
								<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl.'/images/news/'.$berita->file_name; ?>" alt="">
							</div>
							<div class="media-body">
								<header class="entry-header">
									<div class="entry-date"><?php echo $berita->date_create; ?></div>
									<h2 class="entry-title"><a href="#"><?php echo $berita->title; ?></a></h2>
								</header>
								<div class="entry-content">
									<p><?php echo Yii::t('news/'.$berita->id,$berita->content); ?></p>
									<a class="btn btn-danger" href="<?php echo Yii::app()->createUrl('news/'.$berita->id) ?>"><?php echo Yii::t('Read More','Read More'); ?></a>
								</div>
								<footer class="entry-meta">
									<span class="entry-author"><i class="fa fa-pencil"></i> <a href="#">Campbell</a></span>
									<span class="entry-category"><i class="fa fa-folder-o"></i> <a href="#">Tutorial</a></span>
									<span class="entry-comments"><i class="fa fa-comments-o"></i> <a href="#">15</a></span>
								</footer>
							</div>
						</article>
					</div>
				</div>
				<?php } ?>
				<?php $i++; endforeach; ?>
			</div>
		</div>
	</section>

	<section id="get-in-touch">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown"><?php echo Yii::t('Get in Touch','Get in Touch'); ?></h2>
				<p class="text-center wow fadeInDown">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
			</div>
		</div>
	</section><!--/#get-in-touch-->

	<section id="contact">
		<div id="google-map" style="height:650px" data-latitude="-6.1382184" data-longitude="106.8786753"></div>
		<div class="container-wrapper">
			<div class="container">
				<div class="row">
					<div class="col-sm-4 col-sm-offset-8">
						<div class="contact-form">
							<h3><?php echo Yii::t('Contact Info','Contact Info'); ?></h3>
							<address>
								<strong>PT SUPRABAKTI MANDIRI</strong><br>
								<?php echo Yii::t('Address','Address'); ?>: Jl. Danau Sunter Utara Blok A No. 9, Sunter Agung, Daerah Khusus Ibukota Jakarta.<br>
								<?php echo Yii::t('Phone','Phone'); ?>: (021) 65833666
							</address>
							<?php echo $this->renderPartial('contact', array('model'=>$model)); ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section><!--/#bottom-->

<!-- END OF CONTENT INDEX PAGE -->