<script src="<?php echo Yii::app()->baseUrl.'/ckeditor/ckeditor.js'; ?>"></script>

	<section id="blog" style="margin-bottom:30px;">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown">News</h2>
				<p class="text-center wow fadeInDown">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
			</div>
			<div class="row">
				<div class="col-md-12">
					<?php if(!Yii::app()->user->isGuest){ ?>
						<a href="<?php echo Yii::app()->createUrl('news/update&id='.$model->id); ?>" class="btn btn-primary"><span class="fa fa-edit"></span> Update</a>
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
					<div class="blog-post blog-large wow fadeInLeft" data-wow-duration="300ms" data-wow-delay="0ms">
						<article>
							<header class="entry-header">
								<div class="entry-thumbnail">
									<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl; ?>/images/news/<?php echo $model->file_name; ?>" alt="">
									<span class="post-format post-format-video"><i class="fa fa-film"></i></span>
								</div>
								<div class="entry-date"><?php echo $model->date_create; ?></div>
								<?php if(!Yii::app()->user->isGuest){ ?>
								<h2 class="entry-title" id="title" contenteditable="true"><?php echo $model->title; ?></h2>
								<?php } ?>
							</header>
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
							<footer class="entry-meta">
								<span class="entry-author"><i class="fa fa-pencil"></i> <a href="#">Victor</a></span>
								<span class="entry-category"><i class="fa fa-folder-o"></i> <a href="#">Tutorial</a></span>
								<span class="entry-comments"><i class="fa fa-comments-o"></i> <a href="#">15</a></span>
							</footer>
						</article>
					</div>
				</div>
			</div>
		</div>
	</section>

<?php /*$this->widget('booster.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'title',
		'file_name',
		'content',
		'date_create',
		'date_update',
		'meta_tags',
		'meta_desc',
	),
));*/ ?>
<script>var dump_file="<?=Yii::app()->createUrl('news/Inlinesave',['id'=>$model->id])?>";</script>
<script>
	// Turn off automatic editor creation first.
	CKEDITOR.disableAutoInline = false;
	CKEDITOR.inlineAll(
		{
			extraPlugins:'inlinesave',
			toolbar:[
				{name:'own1', items:['Inlinesave']},
				//{name:'clipboard', items:['Copy','Cut','Paste']},
			],
		}
	);

</script>