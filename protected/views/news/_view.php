<div class="col-sm-4">
	<div class="blog-post blog-large wow fadeInLeft" data-wow-duration="300ms" data-wow-delay="0ms" style="background-color:#f7f7f7;">
		<article>
			<header class="entry-header">
				<div class="entry-thumbnail">
					<img class="img-responsive" src="<?php echo Yii::app()->request->baseUrl.'/images/news/'.$data->file_name; ?>" alt="">
				</div>
				<div class="entry-date"><?php echo $data->date_create; ?></div>
				<h2 class="entry-title"><a href="#"><?php echo $data->title; ?></a></h2>
			</header>
			<div class="entry-content">
				<P>
					<?php echo substr($data->content, 0,100); ?>
				</P>
				<a class="btn btn-danger" href="<?php echo Yii::app()->createUrl('news/view',['id'=>$data->id]) ?>"><?php echo Yii::t('Read More','Read More'); ?></a>
			</div>
			<footer class="entry-meta">
				<span class="entry-author"><i class="fa fa-pencil"></i> <a href="#">Victor</a></span>
				<span class="entry-category"><i class="fa fa-folder-o"></i> <a href="#">Tutorial</a></span>
				<span class="entry-comments"><i class="fa fa-comments-o"></i> <a href="#">15</a></span>
			</footer>
		</article>
	</div>
</div><!--/.col-sm-4-->

<?php /*
<?php echo CHtml::link(CHtml::encode($data->id),array('view','id'=>$data->id)); ?>
<br />

<?php echo CHtml::encode($data->title); ?>
<br />

<?php echo CHtml::encode($data->file_name); ?>
<br />

<?php echo CHtml::encode($data->content); ?>
<br />

<?php echo CHtml::encode($data->date_create); ?>
<br />

<?php echo CHtml::encode($data->date_update); ?>
<br />

<?php echo CHtml::encode($data->meta_tags); ?>
<br />
		
<?php echo CHtml::encode($data->meta_desc); ?>
<br />
*/ ?>