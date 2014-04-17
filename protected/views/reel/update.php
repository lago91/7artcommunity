<?php
/* @var $this ReelController */
/* @var $model Reel */

$this->breadcrumbs=array(
	'Reels'=>array('index'),
	$model->idreel=>array('view','id'=>$model->idreel),
	'Update',
);

$this->menu=array(
	array('label'=>'List Reel', 'url'=>array('index')),
	array('label'=>'Create Reel', 'url'=>array('create')),
	array('label'=>'View Reel', 'url'=>array('view', 'id'=>$model->idreel)),
	array('label'=>'Manage Reel', 'url'=>array('admin')),
);
?>

<h1>Update Reel <?php echo $model->idreel; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>