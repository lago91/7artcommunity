<?php

/**
 * This is the model class for table "fotoperfil".
 *
 * The followings are the available columns in table 'fotoperfil':
 * @property integer $idfotoPerfil
 * @property string $fotoPerfilcol
 * @property integer $status
 * @property integer $usuario_idusuario
 */
class profilePhoto extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'fotoperfil';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('status, usuario_idusuario', 'numerical', 'integerOnly'=>true),
			array('fotoPerfilcol', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idfotoPerfil, fotoPerfilcol, status, usuario_idusuario', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idfotoPerfil' => 'Idfoto Perfil',
			'fotoPerfilcol' => 'Foto Perfilcol',
			'status' => 'Status',
			'usuario_idusuario' => 'Usuario Idusuario',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('idfotoPerfil',$this->idfotoPerfil);
		$criteria->compare('fotoPerfilcol',$this->fotoPerfilcol,true);
		$criteria->compare('status',$this->status);
		$criteria->compare('usuario_idusuario',$this->usuario_idusuario);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return profilePhoto the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
