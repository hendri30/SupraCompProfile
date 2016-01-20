<!-- CONTENT INDEX PAGE -->

	<section id="cta" class="wow fadeIn">
		<div class="container">
			<div class="row">
				<div class="col-sm-9">
					<h2>More than just a Service</h2>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
				</div>
				<div class="col-sm-3 text-right">
					<a class="btn btn-danger btn-lg btn-scroll-to" href="#about">Lets Check It Out!</a>
				</div>
			</div>
		</div>
	</section><!--/#cta-->

	<section id="about">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown">
					<?php foreach($about as $tentang){} ?>
					<?php echo $tentang->name; ?>
				</h2>
				<p class="text-center wow fadeInDown">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
			</div>
			<div class="row">
				<div class="col-sm-6 wow fadeInLeft">
					<h3 class="column-title">Video Intro</h3>
					<!-- 16:9 aspect ratio -->
					<div class="embed-responsive embed-responsive-16by9">
						<iframe src="https://www.youtube.com/embed/5tSTmwwGT80" frameborder="0" allowfullscreen></iframe>
					</div>
				</div>
				<div class="col-sm-6 wow fadeInRight">
					<h3 class="column-title">Line Of Bussines</h3>
					<?php echo substr($tentang->content, 0,700); ?>
					<p><a class="btn btn-danger" href="<?php echo Yii::app()->createUrl('about'); ?>">Learn More</a></p>
				</div>
			</div>
		</div>
	</section><!--/#about-->

	<section id="features">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown">
					<?php foreach($features as $fitur){} ?>
					<?php echo $fitur->name; ?>
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
							<?php echo $fitur->content; ?>
							<a class="btn btn-danger" href="<?php echo Yii::app()->createUrl('features'); ?>">Learn More</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="services" >
		<div class="container">
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown">OUR SERVICES</h2>
				<p class="text-center wow fadeInDown">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
			</div>
			<div class="row">
				<div class="features">
					<?php /*
					<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms">
						<div class="media service-box">
							<div class="pull-left">
								<img class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/maintenance.jpg" alt="" style="max-height:120px;">
							</div>
							<div class="media-body">
								<h4 class="media-heading">Conveyor Maintenance</h4>
								<p>Conveyor Maintenance has been then key service provided by Suprabakti Mandiri for many years. Starting as the provider of belt splicing to total conveyor maintenance services.</p>
							</div>
						</div>
					</div><!--/.col-md-6-->
					<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">
						<div class="media service-box">
							<div class="pull-left">
								<img class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/overland.jpg" alt="" style="max-height:120px;">
							</div>
							<div class="media-body">
								<h4 class="media-heading">Overland Belt Installation &amp; Belt Change Out</h4>
								<p>For more than 25 years, Suprabakti Mandiri have been providing conveyor belt splicing services in Indonesia, establishing high quality and service standart, educating the industries about proper belt splicing.</p>
							</div>
						</div>
					</div><!--/.col-md-6-->
					<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="200ms">
						<div class="media service-box">
							<div class="pull-left">
								<img class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/lagging.jpg" alt="" style="max-height:120px;">
							</div>
							<div class="media-body">
								<h4 class="media-heading">Pulley Lagging</h4>
								<p>Remagrip CK - ceramic lagging provide excellent grip between pulley and belt. REMAGRIP CK-X is extremely resilient, durable, highly, flexible, and self cleaning. </p>
							</div>
						</div>
					</div><!--/.col-md-6-->
					<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="300ms">
						<div class="media service-box">
							<div class="pull-left">
								<img class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/beltrepair.jpg" alt="" style="max-height:120px;">
							</div>
							<div class="media-body">
								<h4 class="media-heading">Belt Repair</h4>
								<p>The 26Km overland conveyor steel cord belt suffer from longitudinal rip. The mine approved Suprabakti Mandiri to use Rema Tip Top cold repair method. Rema Tip Top Repair strip 150mm and 220mm with SC-2000 are used to repair the belt.</p>
							</div>
						</div>
					</div><!--/.col-md-6-->
					<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="400ms">
						<div class="media service-box">
							<div class="pull-left">
								<img class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/beltclamp.jpg" alt="" style="max-height:120px;">
							</div>
							<div class="media-body">
								<h4 class="media-heading">Belt Clamp</h4>
								<p>The Sure Grip belt clamp can apply postive pressure in excesss of 6 tones directly to the surface of any belt width while having a pulling ability in excess of 10 tonnes and when linked in tandem can exceed 16 tonnes.</p>
							</div>
						</div>
					</div><!--/.col-md-6-->
					<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">
						<div class="media service-box">
							<div class="pull-left">
								<img class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/surfaceprotection.jpg" alt="" style="max-height:120px;">
							</div>
							<div class="media-body">
								<h4 class="media-heading">Surface Protection</h4>
								<p>Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater</p>
							</div>
						</div>
					</div><!--/.col-md-6-->
					*/ ?>
					<?php /*
					<?php foreach($services as $layanan): ?>
					<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms">
						<div class="media service-box">
							<div class="pull-left">
								<img class="img-circle img-thumbnail" src="<?php echo Yii::app()->request->baseUrl.'/images/page/'.$layanan->thumb_image; ?>" alt="" style="max-height:120px;">
							</div>
							<div class="media-body">
								<h4 class="media-heading"><?php echo $layanan->name; ?></h4>
								<p><?php echo $layanan->content; ?></p>
							</div>
						</div>
					</div><!--/.col-md-6-->
					<?php endforeach; ?>
					*/ ?>
					<?php foreach ($services as $layanan) {} ?>
					<?php echo $layanan->content; ?>
				</div>
			</div><!--/.row-->
		</div><!--/.container-->
	</section><!--/#services-->

	<section id="portfolio">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown">Our Partners</h2>
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
				<h2 class="section-title text-center wow fadeInDown">Our Product</h2>
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
				<h2 class="section-title text-center wow fadeInDown">Meet The Team</h2>
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
							<span>Position</span>
						</div>
						<p>Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater</p>
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
				<h2 class="section-title text-center wow fadeInDown">Latest Blogs</h2>
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
									<span class="post-format post-format-video"><i class="fa fa-film"></i></span>
								</div>
								<div class="entry-date"><?php echo $berita->date_create; ?></div>
								<h2 class="entry-title"><a href="#"><?php echo $berita->title; ?></a></h2>
							</header>
							<div class="entry-content">
								<P><?php echo $berita->content; ?></P>
								<a class="btn btn-danger" href="<?php echo Yii::app()->createUrl('news/'.$berita->id) ?>">Read More</a>
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
					<div class="blog-post blog-media wow fadeInRight" data-wow-duration="300ms" data-wow-delay="100ms">
						<article class="media clearfix">
							<div class="entry-thumbnail pull-left">
								<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl.'/images/news/'.$berita->file_name; ?>" alt="">
								<span class="post-format post-format-gallery"><i class="fa fa-image"></i></span>
							</div>
							<div class="media-body">
								<header class="entry-header">
									<div class="entry-date"><?php echo $berita->date_create; ?></div>
									<h2 class="entry-title"><a href="#"><?php echo $berita->title; ?></a></h2>
								</header>
								<div class="entry-content">
									<P><?php echo $berita->content; ?></P>
									<a class="btn btn-danger" href="<?php echo Yii::app()->createUrl('news/'.$berita->id) ?>">Read More</a>
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
				<h2 class="section-title text-center wow fadeInDown">Get in Touch</h2>
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
							<h3>Contact Info</h3>
							<address>
								<strong>PT SUPRABAKTI MANDIRI</strong><br>
								Address: <br>
								Phone: 
							</address>
							<?php echo $this->renderPartial('contact', array('model'=>$model)); ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section><!--/#bottom-->

<!-- END OF CONTENT INDEX PAGE -->