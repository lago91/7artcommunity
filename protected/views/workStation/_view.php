<?php
/* @var $this WorkStationController */
/* @var $data workStation */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idlugarTrabajo')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idlugarTrabajo), array('view', 'id'=>$data->idlugarTrabajo)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('lugarTrabajo')); ?>:</b>
	<?php echo CHtml::encode($data->lugarTrabajo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('status')); ?>:</b>
	<?php echo CHtml::encode($data->status); ?>
	<br />


</div>