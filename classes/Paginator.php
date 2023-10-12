<?php

/**
 * Paginator
 * 
 * Data for selecting a page of records
 */

class Paginator {

  public $limit; // Number of records to return - integer
  public $offset; // Number of records to skip before the page - integer
  public $previous; // Previous page number
  public $next; // Next page number
  public $total_records;

/**
 * Constructor
 * 
 * @param integer $page Page number
 * @param integer $record_per_page Number of records per page
 * 
 * @return void
 */

  public function __construct($page, $records_per_page, $total_records) {

    $this -> limit = $records_per_page;

    $page = filter_var($page, FILTER_VALIDATE_INT,[
      'options' => [
        'default' => 1,
        'min_range' => 1
      ]
    ] );

    if ($page > 1) {
      $this -> previous = $page - 1;
    }

    $total_pages = ceil($total_records / $records_per_page);
    
    if ($page < $total_pages) {
      $this -> next = $page + 1;
    }
    
    $this -> offset = $records_per_page * ($page - 1);

  }

}