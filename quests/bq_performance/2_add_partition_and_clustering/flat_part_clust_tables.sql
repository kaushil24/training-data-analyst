
create table tpcds_2t_flat_part_clust.customer_address(
    ca_address_sk             int64               NOT NULL,
    ca_address_id             string              NOT NULL,
    ca_street_number          string                      ,
    ca_street_name            string                      ,
    ca_street_type            string                      ,
    ca_suite_number           string                      ,
    ca_city                   string                      ,
    ca_county                 string                      ,
    ca_state                  string                      ,
    ca_zip                    string                      ,
    ca_country                string                      ,
    ca_gmt_offset             numeric                     ,
    ca_location_type          string 					  ,
	empty_date                date                        )
	PARTITION BY empty_date
	CLUSTER BY ca_address_sk;


create table tpcds_2t_flat_part_clust.customer_demographics(
    cd_demo_sk                int64               NOT NULL,
    cd_gender                 string                       ,
    cd_marital_status         string                       ,
    cd_education_status       string                      ,
    cd_purchase_estimate      int64                       ,
    cd_credit_rating          string                      ,
    cd_dep_count              int64                       ,
    cd_dep_employed_count     int64                       ,
    cd_dep_college_count      int64                       
);

create table tpcds_2t_flat_part_clust.date_dim(
    d_date_sk                 int64               NOT NULL,
    d_date_id                 string              NOT NULL,
    d_date                    date                          ,
    d_month_seq               int64                       ,
    d_week_seq                int64                       ,
    d_quarter_seq             int64                       ,
    d_year                    int64                       ,
    d_dow                     int64                       ,
    d_moy                     int64                       ,
    d_dom                     int64                       ,
    d_qoy                     int64                       ,
    d_fy_year                 int64                       ,
    d_fy_quarter_seq          int64                       ,
    d_fy_week_seq             int64                       ,
    d_day_name                string                       ,
    d_quarter_name            string                       ,
    d_holiday                 string                       ,
    d_weekend                 string                       ,
    d_following_holiday       string                       ,
    d_first_dom               int64                       ,
    d_last_dom                int64                       ,
    d_same_day_ly             int64                       ,
    d_same_day_lq             int64                       ,
    d_current_day             string                       ,
    d_current_week            string                       ,
    d_current_month           string                       ,
    d_current_quarter         string                       ,
    d_current_year            string                       ,
	empty_date                date                         )
	PARTITION BY empty_date                                   
	CLUSTER BY d_date_sk; 


create table tpcds_2t_flat_part_clust.warehouse(
    w_warehouse_sk            int64               NOT NULL,
    w_warehouse_id            string              NOT NULL,
    w_warehouse_name          string                   ,
    w_warehouse_sq_ft         int64                       ,
    w_street_number           string                      ,
    w_street_name             string                   ,
    w_street_type             string                      ,
    w_suite_number            string                      ,
    w_city                    string                   ,
    w_county                  string                   ,
    w_state                   string                       ,
    w_zip                     string                      ,
    w_country                 string                   ,
    w_gmt_offset              numeric                  
);

create table tpcds_2t_flat_part_clust.ship_mode(
    sm_ship_mode_sk           int64               NOT NULL,
    sm_ship_mode_id           string              NOT NULL,
    sm_type                   string                      ,
    sm_code                   string                      ,
    sm_carrier                string                      ,
    sm_contract               string
);

create table tpcds_2t_flat_part_clust.time_dim(
    t_time_sk                 int64               NOT NULL,
    t_time_id                 string              NOT NULL,
    t_time                    int64                       ,
    t_hour                    int64                       ,
    t_minute                  int64                       ,
    t_second                  int64                       ,
    t_am_pm                   string                       ,
    t_shift                   string                      ,
    t_sub_shift               string                      ,
    t_meal_time               string                      
);

create table tpcds_2t_flat_part_clust.reason(
    r_reason_sk               int64               NOT NULL,
    r_reason_id               string              NOT NULL,
    r_reason_desc             string                     
);

create table tpcds_2t_flat_part_clust.income_band(
    ib_income_band_sk         int64               NOT NULL,
    ib_lower_bound            int64                       ,
    ib_upper_bound            int64                       
);

create table tpcds_2t_flat_part_clust.item(
    i_item_sk                 int64               NOT NULL,
    i_item_id                 string              NOT NULL,
    i_rec_start_date          date                          ,
    i_rec_end_date            date                          ,
    i_item_desc               string                  ,
    i_current_price           numeric                  ,
    i_wholesale_cost          numeric                  ,
    i_brand_id                int64                       ,
    i_brand                   string                      ,
    i_class_id                int64                       ,
    i_class                   string                      ,
    i_category_id             int64                       ,
    i_category                string                      ,
    i_manufact_id             int64                       ,
    i_manufact                string                      ,
    i_size                    string                      ,
    i_formulation             string                      ,
    i_color                   string                      ,
    i_units                   string                      ,
    i_container               string                      ,
    i_manager_id              int64                       ,
    i_product_name            string                      
);

create table tpcds_2t_flat_part_clust.store(
    s_store_sk                int64               NOT NULL,
    s_store_id                string              NOT NULL,
    s_rec_start_date          date                          ,
    s_rec_end_date            date                          ,
    s_closed_date_sk          int64                       ,
    s_store_name              string                   ,
    s_number_employees        int64                       ,
    s_floor_space             int64                       ,
    s_hours                   string                      ,
    s_manager                 string                   ,
    s_market_id               int64                       ,
    s_geography_class         string                  ,
    s_market_desc             string                  ,
    s_market_manager          string                   ,
    s_division_id             int64                       ,
    s_division_name           string                   ,
    s_company_id              int64                       ,
    s_company_name            string                   ,
    s_street_number           string                   ,
    s_street_name             string                   ,
    s_street_type             string                      ,
    s_suite_number            string                      ,
    s_city                    string                   ,
    s_county                  string                   ,
    s_state                   string                       ,
    s_zip                     string                      ,
    s_country                 string                   ,
    s_gmt_offset              numeric                  ,
    s_tax_precentage          numeric                  
);

create table tpcds_2t_flat_part_clust.call_center(
    cc_call_center_sk         int64               NOT NULL,
    cc_call_center_id         string              NOT NULL,
    cc_rec_start_date         date                          ,
    cc_rec_end_date           date                          ,
    cc_closed_date_sk         int64                       ,
    cc_open_date_sk           int64                       ,
    cc_name                   string                   ,
    cc_class                  string                   ,
    cc_employees              int64                       ,
    cc_sq_ft                  int64                       ,
    cc_hours                  string                      ,
    cc_manager                string                   ,
    cc_mkt_id                 int64                       ,
    cc_mkt_class              string                     ,
    cc_mkt_desc               string                  ,
    cc_market_manager         string                   ,
    cc_division               int64                       ,
    cc_division_name          string                   ,
    cc_company                int64                       ,
    cc_company_name           string                      ,
    cc_street_number          string                      ,
    cc_street_name            string                   ,
    cc_street_type            string                      ,
    cc_suite_number           string                      ,
    cc_city                   string                   ,
    cc_county                 string                   ,
    cc_state                  string                       ,
    cc_zip                    string                      ,
    cc_country                string                   ,
    cc_gmt_offset             numeric                  ,
    cc_tax_percentage         numeric                 
);

create table tpcds_2t_flat_part_clust.customer(
    c_customer_sk             int64               NOT NULL,
    c_customer_id             string              NOT NULL,
    c_current_cdemo_sk        int64                       ,
    c_current_hdemo_sk        int64                       ,
    c_current_addr_sk         int64                       ,
    c_first_shipto_date_sk    int64                       ,
    c_first_sales_date_sk     int64                       ,
    c_salutation              string                      ,
    c_first_name              string                      ,
    c_last_name               string                      ,
    c_preferred_cust_flag     string                       ,
    c_birth_day               int64                       ,
    c_birth_month             int64                       ,
    c_birth_year              int64                       ,
    c_birth_country           string                  ,
    c_login                   string                      ,
    c_email_address           string                      ,
    c_last_review_date_sk     int64                       
);

create table tpcds_2t_flat_part_clust.web_site(
    web_site_sk               int64               NOT NULL,
    web_site_id               string              NOT NULL,
    web_rec_start_date        date                          ,
    web_rec_end_date          date                          ,
    web_name                  string                   ,
    web_open_date_sk          int64                       ,
    web_close_date_sk         int64                       ,
    web_class                 string                   ,
    web_manager               string                   ,
    web_mkt_id                int64                       ,
    web_mkt_class             string                   ,
    web_mkt_desc              string                  ,
    web_market_manager        string                   ,
    web_company_id            int64                       ,
    web_company_name          string                      ,
    web_street_number         string                      ,
    web_street_name           string                   ,
    web_street_type           string                      ,
    web_suite_number          string                      ,
    web_city                  string                   ,
    web_county                string                   ,
    web_state                 string                       ,
    web_zip                   string                      ,
    web_country               string                   ,
    web_gmt_offset            numeric                  ,
    web_tax_percentage        numeric                  
);

create table tpcds_2t_flat_part_clust.store_returns(
    sr_returned_date_sk       int64                       ,
    sr_return_time_sk         int64                       ,
    sr_item_sk                int64               NOT NULL,
    sr_customer_sk            int64                       ,
    sr_cdemo_sk               int64                       ,
    sr_hdemo_sk               int64                       ,
    sr_addr_sk                int64                       ,
    sr_store_sk               int64                       ,
    sr_reason_sk              int64                       ,
    sr_ticket_number          int64               NOT NULL,
    sr_return_quantity        int64                       ,
    sr_return_amt             numeric                 ,
    sr_return_tax             numeric                  ,
    sr_return_amt_inc_tax     numeric                  ,
    sr_fee                    numeric                  ,
    sr_return_ship_cost       numeric                  ,
    sr_refunded_cash          numeric                  ,
    sr_reversed_charge        numeric                  ,
    sr_store_credit           numeric                 ,
    sr_net_loss               numeric                  
);

create table tpcds_2t_flat_part_clust.household_demographics(
    hd_demo_sk                int64               NOT NULL,
    hd_income_band_sk         int64                       ,
    hd_buy_potential          string                      ,
    hd_dep_count              int64                       ,
    hd_vehicle_count          int64                       
);

create table tpcds_2t_flat_part_clust.web_page(
    wp_web_page_sk            int64               NOT NULL,
    wp_web_page_id            string              NOT NULL,
    wp_rec_start_date         date                          ,
    wp_rec_end_date           date                          ,
    wp_creation_date_sk       int64                       ,
    wp_access_date_sk         int64                       ,
    wp_autogen_flag           string                       ,
    wp_customer_sk            int64                       ,
    wp_url                    string                  ,
    wp_type                   string                      ,
    wp_char_count             int64                       ,
    wp_link_count             int64                       ,
    wp_image_count            int64                       ,
    wp_max_ad_count           int64                       
);

create table tpcds_2t_flat_part_clust.promotion(
    p_promo_sk                int64               NOT NULL,
    p_promo_id                string              NOT NULL,
    p_start_date_sk           int64                       ,
    p_end_date_sk             int64                       ,
    p_item_sk                 int64                       ,
    p_cost                    numeric                ,
    p_response_target         int64                       ,
    p_promo_name              string                      ,
    p_channel_dmail           string                       ,
    p_channel_email           string                       ,
    p_channel_catalog         string                       ,
    p_channel_tv              string                       ,
    p_channel_radio           string                       ,
    p_channel_press           string                       ,
    p_channel_event           string                       ,
    p_channel_demo            string                       ,
    p_channel_details         string                  ,
    p_purpose                 string                      ,
    p_discount_active         string                       
);

create table tpcds_2t_flat_part_clust.catalog_page(
    cp_catalog_page_sk        int64               NOT NULL,
    cp_catalog_page_id        string              NOT NULL,
    cp_start_date_sk          int64                       ,
    cp_end_date_sk            int64                       ,
    cp_department             string                  ,
    cp_catalog_number         int64                       ,
    cp_catalog_page_number    int64                       ,
    cp_description            string                  ,
    cp_type                   string                  
);

create table tpcds_2t_flat_part_clust.inventory(
    inv_date_sk               int64               NOT NULL,
    inv_item_sk               int64               NOT NULL,
    inv_warehouse_sk          int64               NOT NULL,
    inv_quantity_on_hand      int64                       
);

create table tpcds_2t_flat_part_clust.catalog_returns(
    cr_returned_date_sk       int64                       ,
    cr_returned_time_sk       int64                       ,
    cr_item_sk                int64               NOT NULL,
    cr_refunded_customer_sk   int64                       ,
    cr_refunded_cdemo_sk      int64                       ,
    cr_refunded_hdemo_sk      int64                       ,
    cr_refunded_addr_sk       int64                       ,
    cr_returning_customer_sk  int64                       ,
    cr_returning_cdemo_sk     int64                       ,
    cr_returning_hdemo_sk     int64                       ,
    cr_returning_addr_sk      int64                       ,
    cr_call_center_sk         int64                       ,
    cr_catalog_page_sk        int64                       ,
    cr_ship_mode_sk           int64                       ,
    cr_warehouse_sk           int64                       ,
    cr_reason_sk              int64                       ,
    cr_order_number           int64               NOT NULL,
    cr_return_quantity        int64                       ,
    cr_return_amount          numeric                  ,
    cr_return_tax             numeric                  ,
    cr_return_amt_inc_tax     numeric                  ,
    cr_fee                    numeric                  ,
    cr_return_ship_cost       numeric                  ,
    cr_refunded_cash          numeric                  ,
    cr_reversed_charge        numeric                  ,
    cr_store_credit           numeric                  ,
    cr_net_loss               numeric                  
);

create table tpcds_2t_flat_part_clust.web_returns(
    wr_returned_date_sk       int64                       ,
    wr_returned_time_sk       int64                       ,
    wr_item_sk                int64               NOT NULL,
    wr_refunded_customer_sk   int64                       ,
    wr_refunded_cdemo_sk      int64                       ,
    wr_refunded_hdemo_sk      int64                       ,
    wr_refunded_addr_sk       int64                       ,
    wr_returning_customer_sk  int64                       ,
    wr_returning_cdemo_sk     int64                       ,
    wr_returning_hdemo_sk     int64                       ,
    wr_returning_addr_sk      int64                       ,
    wr_web_page_sk            int64                       ,
    wr_reason_sk              int64                       ,
    wr_order_number           int64               NOT NULL,
    wr_return_quantity        int64                       ,
    wr_return_amt             numeric                  ,
    wr_return_tax             numeric                 ,
    wr_return_amt_inc_tax     numeric                  ,
    wr_fee                    numeric                  ,
    wr_return_ship_cost       numeric                  ,
    wr_refunded_cash          numeric                  ,
    wr_reversed_charge        numeric                  ,
    wr_account_credit         numeric                 ,
    wr_net_loss               numeric                  
);

create table tpcds_2t_flat_part_clust.web_sales(
    ws_sold_date_sk           int64                       ,
    ws_sold_time_sk           int64                       ,
    ws_ship_date_sk           int64                       ,
    ws_item_sk                int64               NOT NULL,
    ws_bill_customer_sk       int64                       ,
    ws_bill_cdemo_sk          int64                       ,
    ws_bill_hdemo_sk          int64                       ,
    ws_bill_addr_sk           int64                       ,
    ws_ship_customer_sk       int64                       ,
    ws_ship_cdemo_sk          int64                       ,
    ws_ship_hdemo_sk          int64                       ,
    ws_ship_addr_sk           int64                       ,
    ws_web_page_sk            int64                       ,
    ws_web_site_sk            int64                       ,
    ws_ship_mode_sk           int64                       ,
    ws_warehouse_sk           int64                       ,
    ws_promo_sk               int64                       ,
    ws_order_number           int64               NOT NULL,
    ws_quantity               int64                       ,
    ws_wholesale_cost         numeric                  ,
    ws_list_price             numeric                  ,
    ws_sales_price            numeric                  ,
    ws_ext_discount_amt       numeric                  ,
    ws_ext_sales_price        numeric                  ,
    ws_ext_wholesale_cost     numeric                  ,
    ws_ext_list_price         numeric                  ,
    ws_ext_tax                numeric                  ,
    ws_coupon_amt             numeric                  ,
    ws_ext_ship_cost          numeric                  ,
    ws_net_paid               numeric                  ,
    ws_net_paid_inc_tax       numeric                  ,
    ws_net_paid_inc_ship      numeric                  ,
    ws_net_paid_inc_ship_tax  numeric                 ,
    ws_net_profit             numeric                  
);

create table tpcds_2t_flat_part_clust.catalog_sales(
    cs_sold_date_sk           int64                       ,
    cs_sold_time_sk           int64                       ,
    cs_ship_date_sk           int64                       ,
    cs_bill_customer_sk       int64                       ,
    cs_bill_cdemo_sk          int64                       ,
    cs_bill_hdemo_sk          int64                       ,
    cs_bill_addr_sk           int64                       ,
    cs_ship_customer_sk       int64                       ,
    cs_ship_cdemo_sk          int64                       ,
    cs_ship_hdemo_sk          int64                       ,
    cs_ship_addr_sk           int64                       ,
    cs_call_center_sk         int64                       ,
    cs_catalog_page_sk        int64                       ,
    cs_ship_mode_sk           int64                       ,
    cs_warehouse_sk           int64                       ,
    cs_item_sk                int64               NOT NULL,
    cs_promo_sk               int64                       ,
    cs_order_number           int64               NOT NULL,
    cs_quantity               int64                       ,
    cs_wholesale_cost         numeric                  ,
    cs_list_price             numeric                  ,
    cs_sales_price            numeric                  ,
    cs_ext_discount_amt       numeric                 ,
    cs_ext_sales_price        numeric                  ,
    cs_ext_wholesale_cost     numeric                 ,
    cs_ext_list_price         numeric                  ,
    cs_ext_tax                numeric                  ,
    cs_coupon_amt             numeric                  ,
    cs_ext_ship_cost          numeric                  ,
    cs_net_paid               numeric                  ,
    cs_net_paid_inc_tax       numeric                 ,
    cs_net_paid_inc_ship      numeric                 ,
    cs_net_paid_inc_ship_tax  numeric                  ,
    cs_net_profit             numeric                  
);

create table tpcds_2t_flat_part_clust.store_sales(
    ss_sold_date_sk           int64                       ,
    ss_sold_time_sk           int64                       ,
    ss_item_sk                int64               NOT NULL,
    ss_customer_sk            int64                       ,
    ss_cdemo_sk               int64                       ,
    ss_hdemo_sk               int64                       ,
    ss_addr_sk                int64                       ,
    ss_store_sk               int64                       ,
    ss_promo_sk               int64                       ,
    ss_ticket_number          int64               NOT NULL,
    ss_quantity               int64                       ,
    ss_wholesale_cost         numeric                  ,
    ss_list_price             numeric                  ,
    ss_sales_price            numeric                  ,
    ss_ext_discount_amt       numeric                  ,
    ss_ext_sales_price        numeric                  ,
    ss_ext_wholesale_cost     numeric                  ,
    ss_ext_list_price         numeric                  ,
    ss_ext_tax                numeric                  ,
    ss_coupon_amt             numeric                  ,
    ss_net_paid               numeric                  ,
    ss_net_paid_inc_tax       numeric                  ,
    ss_net_profit             numeric                  
)