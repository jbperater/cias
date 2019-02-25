<?php if(!defined('BASEPATH')) exit('No direct script access allowed');
require APPPATH . '/libraries/Statistics.php';
/**
 * Class : Login (LoginController)
 * Login class to control to authenticate user credentials and starts user's session.
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
class Forecast extends Statistics
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('login_model');
        $this->load->model('main_model');
        $this->global['notification'] =$this->main_model->getNotification($this->session->userdata('role'));
    }

    /**
     * Index Page for this controller.
     */
    public function index()
    {
        $this->isLoggedIn();
    }

    public function time_series_forecast_multiplicative_model(&$y, $seasons, $forecast_number, &$output) {
        $number_of_inputs = count($y);
        $number_of_outputs = $number_of_inputs + $forecast_number;
        $st = array();
        $tt = array();
        $forecasts = array();
        $this->seasonal_components($y, $seasons, $st);
        $this->trend_components($y, $st, $seasons, $number_of_outputs, $tt);
        if( count($st) >= $seasons ) {
            for( $i = 0; $i < $number_of_outputs; $i++ ) {
                array_push($forecasts, $tt[$i] * $st[ $i % $seasons ] );
            }
        }
        $output = array(
            "seasonal_components" => $st,
            "trend_components" => $tt,
            "forecasts" => $forecasts
        );

        return $forecasts;
    }

    public function forecast(){

        // $y = array(4.8, 4.1, 6.0, 6.5, 5.8, 5.2, 6.8, 7.4, 6.0, 5.6, 7.5, 7.8, 6.3, 5.9, 8.0, 8.4); // original data
        $y=array(43,56,23,12,67,87,34,9,16,40,11,23);
        $forecast_number = 0; // number of future data in $y you want to predict
        $forecasts = array(); // output array, size will be length of $y + $forecast_number
        $seasons = 4;
        $ma = array();

        $out = $this->time_series_forecast_multiplicative_model($y, $seasons, $forecast_number, $forecasts);
        // $this->moving_average($y, $seasons, $ma);
                
        // echo json_encode($forecasts);
        
        $what = json_encode($out);
        $data = (array)json_decode($what);
        // foreach ($koyim as $m ) {
        //    echo $m;
           
        //  }
        $datani['data'] = $data;
        $this->global['name'] =$this->session->userdata('name');
        $this->global['role'] =$this->session->userdata('role');
        $this->global['role_text'] =$this->session->userdata('role_text');
        $this->global['pageTitle'] = 'MEWU : Forecast';
        $this->loadViews("admin/viewForecastStatic", $this->global,$datani, NULL);

    }

    public function lastMonthsData(){

        for ($i = 1; $i <= 12; $i++) {
            $months[] = date("Y-m%", strtotime( date( 'Y-m-01' )." -$i months"));
        }

        // var_dump ($this->db->query('SELECT * FROM tbl_reserve_request WHERE status="approve"')->result());

        $months = $this->db->query('SELECT MONTH(dateActual) as month , COUNT(dateActual) as data FROM tbl_reserve_request WHERE dateActual >= NOW() - INTERVAL 1 YEAR and status="approve" GROUP BY MONTH(dateActual)')->result();
        
        foreach ($months as $m ) {
           echo $m->data;
           $data[]=$m->data;
         }

        

         foreach ($data as $m ) {
           echo $m;
           
         }

    }

    function loadViews($viewName = "", $headerInfo = NULL, $pageInfo = NULL, $footerInfo = NULL){

        $this->load->view('includes/header', $headerInfo);
        $this->load->view($viewName, $pageInfo);
        $this->load->view('includes/footer', $footerInfo);
    }
    
    
}

?>