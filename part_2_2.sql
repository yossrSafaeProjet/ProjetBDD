CREATE VIEW subscription_per_plan_per_month AS
SELECT
    EXTRACT(MONTH FROM subscribed_at) AS month,
    subscription_plan,
    SUM(paid) AS total_paid,
    COUNT(*) AS total_subscriptions
FROM
    subscription
GROUP BY

    EXTRACT(MONTH FROM subscribed_at),
    subscription_plan;  

SELECT COUNT(*) AS total_count
FROM subscription
WHERE subscription_plan = 'monthly' AND EXTRACT(MONTH FROM subscribed_at) = 5;
