<?php echo '<?xml version="1.0" encoding="UTF-8"?>'; ?>

<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">

	<url>
		<loc><?php echo CHtml::encode($this->createAbsoluteUrl('index')); ?></loc>
	</url>

<?php foreach ($pages as $model): ?>
	<url>
		<loc><?php echo CHtml::encode($this->createAbsoluteUrl('pages/view',array('id'=>$model->id))); ?></loc>
	</url>
<?php endforeach; ?>

<?php foreach ($news as $model): ?>
	<url>
		<loc><?php echo CHtml::encode($this->createAbsoluteUrl('news/view',array('id'=>$model->id))); ?></loc>
	</url>
<?php endforeach; ?>

	<url>
		<loc><?php echo CHtml::encode($this->createAbsoluteUrl('contacts/create')); ?></loc>
	</url>

</urlset>