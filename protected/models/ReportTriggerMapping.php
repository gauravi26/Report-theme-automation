<?php

/**
 * This is the model class for table "report_trigger_mapping".
 *
 * The followings are the available columns in table 'report_trigger_mapping':
 * @property integer $id
 * @property integer $application_forms_id
 * @property integer $report_id
 * @property integer $scipt_id
 * @property string $report_columns
 * @property string $report_row
 * @property string $applied_script
 */
class ReportTriggerMapping extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
        public $columnScripts;

	public function tableName()
	{
		return 'report_trigger_mapping';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('application_forms_id, report_id', 'required'),
			array('application_forms_id, report_id, scipt_id', 'numerical', 'integerOnly'=>true),
			array('report_columns, report_row', 'length', 'max'=>255),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id,columnScripts, application_forms_id, report_id, scipt_id, report_columns, report_row, applied_script', 'safe', 'on'=>'search'),
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
			'id' => 'ID',
			'application_forms_id' => 'Application Forms',
			'report_id' => 'Report',
			'scipt_id' => 'Scipt',
			'report_columns' => 'Report Columns',
			'report_row' => 'Report Row',
			'applied_script' => 'Applied Script',
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

		$criteria->compare('id',$this->id);
		$criteria->compare('application_forms_id',$this->application_forms_id);
		$criteria->compare('report_id',$this->report_id);
		$criteria->compare('scipt_id',$this->scipt_id);
		$criteria->compare('report_columns',$this->report_columns,true);
		$criteria->compare('report_row',$this->report_row,true);
		$criteria->compare('applied_script',$this->applied_script,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return ReportTriggerMapping the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
