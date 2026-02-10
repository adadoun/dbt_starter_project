select
    order_id as order_id_y,
    user_name  as user_id_y,
    order_status as order_status_y,
    DATETIME(order_date, "Europe/Paris") as order_created_at_x,
    DATETIME(order_approved_date, "Europe/Paris") as order_approved_at_x,
    DATETIME(pickup_date, "Europe/Paris") as picked_up_at_x,
    DATETIME(delivered_date, "Europe/Paris") as delivered_at_x,
    DATETIME(estimated_time_delivery, "Europe/Paris") as estimated_time_delivery_x
from {{ source('sales_database', 'order') }}