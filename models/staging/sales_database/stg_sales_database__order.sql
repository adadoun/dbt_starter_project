select
    order_id as order_id_y,
    user_name as user_id as user_id_y,
    order_status as order_status_y,
    DATETIME(order_date, "Europe/Paris") AS order_created_at as order_created_at_y,
    DATETIME(order_approved_date, "Europe/Paris") AS order_approved_at as order_approved_at_y,
    DATETIME(pickup_date, "Europe/Paris") AS picked_up_at as picked_up_at_y,
    DATETIME(delivered_date, "Europe/Paris") AS delivered_at as delivered_at_y,
    DATETIME(estimated_time_delivery, "Europe/Paris") AS estimated_time_delivery as estimated_time_delivery_y
from {{ source('sales_database', 'order') }}