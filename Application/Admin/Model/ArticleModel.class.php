<?php 
namespace Admin\Model;
use Think\Model\RelationModel;
class ArticleModel extends RelationModel {
	protected $tableName='article';
	protected $_link=array(
		'attr'=>array(
			'mapping_type'=>self::MANY_TO_MANY,
			'mapping_name'=>'attr',
			'foreign_key'=>'bid',
			'relation_foreign_key'=>'aid',
			'relation_table'=>'one_article_attr',
		),
		'classify'=>array(
			'mapping_type'=>self::BELONGS_TO,
			'foreign_key'=>'cid',
			'mapping_fields'=>'name',
			'as_fields'=>'name:classify',
		),
		
	);
	public function getArticles($type=0) {	
		$field=array('del');
		$where=array('del'=>$type);
		return $this->field($field,true)->where($where)->relation(true)->select();
	}
}
?>