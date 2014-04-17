<?php
/* @var $this ReelController */
/* @var $data Reel */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idreel')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idreel), array('view', 'id'=>$data->idreel)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('reel')); ?>:</b>
	<?php echo CHtml::encode($data->reel); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('status')); ?>:</b>
	<?php echo CHtml::encode($data->status); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('usuario_idusuario')); ?>:</b>
	<?php echo CHtml::encode($data->usuario_idusuario); ?>
	<br />


</div>