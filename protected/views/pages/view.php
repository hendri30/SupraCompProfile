<script src="<?php echo Yii::app()->baseUrl.'/ckeditor/ckeditor.js'; ?>"></script>
	
	<section id="blog" style="margin-bottom:30px;">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown"><?php echo $model->name; ?></h2>
				<p class="text-center wow fadeInDown">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
			</div>
			<div class="row">
				<div class="col-md-12">
					<?php if(!Yii::app()->user->isGuest){ ?>
						<a href="<?php echo Yii::app()->createUrl('pages/admin'); ?>" class="btn btn-primary"><span class="fa fa-cog"></span> Admin</a>
						<a href="<?php echo Yii::app()->createUrl('pages/update/id/'.$model->id); ?>" class="btn btn-primary"><span class="fa fa-edit"></span> Update</a>
						<?php echo CHtml::link('<div class="btn btn-danger"> <span class="fa fa-remove"></span> Delete</div>','#',array('submit'=>array('delete','id'=>$model->id),'confirm' => 'Are you sure you want to delete this item?')); ?>
					<?php } ?>
					<div style="padding-top:20px;">
					<?php $this->widget('booster.widgets.TbAlert', array(
						'fade' => true,
						'closeText' => '&times;',
						'events' => array(),
						'htmlOptions' => array(),
						'userComponentId' => 'user',
						'alerts' => array(
							// success, info, warning, error or danger
							'success' => array('closeText' => '&times;'),
						),
					));	?>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="blog-post blog-large wow fadeInLeft" data-wow-duration="300ms" data-wow-delay="0ms" style="min-height:600px;">
						<article>
							<?php if($model['key']=='Services'){ ?>
								<?php /*<header class="entry-header">
									<div class="entry-thumbnail">
										<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl.'/images/page/'.$model->thumb_image; ?>" alt="">
									</div>
								</header>*/ ?>
								<?php if(!Yii::app()->user->isGuest){ ?>
									<div class="entry-content" id="content" contenteditable="true">
										<?php echo $model->content; ?>
									</div>
								<?php } ?>
								<?php if(Yii::app()->user->isGuest){ ?>
									<div class="entry-content">
										<?php echo $model->content; ?>
									</div>
								<?php } ?>
							<?php } else { ?>
								<?php /*<header class="entry-header">
									<div class="entry-thumbnail">
										<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl.'/images/page/'.$model->thumb_image; ?>" alt="">
									</div>
								</header>*/ ?>
								<?php if(!Yii::app()->user->isGuest){ ?>
									<div class="entry-content">
										<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl.'/images/page/'.$model->thumb_image; ?>" alt="">
										<div id="content" contenteditable="true">
											<?php echo $model->content; ?>
										</div>
									</div>
								<?php } ?>
								<?php if(Yii::app()->user->isGuest){ ?>
									<div class="entry-content">
										<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl.'/images/page/'.$model->thumb_image; ?>" alt="" style="min-width:25%;max-width:35%;float:left;padding-right:20px;">
										<?php echo $model->content; ?>
										<?php if ($model['key']=='About') { ?>
											<h3 style="border-bottom:1px solid #ddd;padding-bottom:10px;padding-top:10px;">Video Intro:</h3>
											<div class="embed-responsive embed-responsive-16by9">
												<iframe src="https://www.youtube.com/embed/5tSTmwwGT80" frameborder="0" allowfullscreen></iframe>
											</div>
										<?php } ?>
									</div>
								<?php } ?>
							<?php } ?>
						</article>
					</div>
				</div>
			</div>
		</div>
	</section>

<script type="text/javascript">
	CKEDITOR.disableAutoInline = false;
	CKEDITOR.config.imageBrowser_listUrl="<?php echo Yii::app()->createUrl('site/images'); ?>";
	var dump_file="<?=Yii::app()->createUrl('pages/Inlinesave',['id'=>$model->id])?>";
</script>