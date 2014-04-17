<?php
/* @var $this ProfilePhotoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Profile Photos',
);

$this->menu=array(
	array('label'=>'Create profilePhoto', 'url'=>array('create')),
	array('label'=>'Manage profilePhoto', 'url'=>array('admin')),
);
?>

<h1>Profile Photos</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
