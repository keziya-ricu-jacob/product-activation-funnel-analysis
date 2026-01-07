WITH events AS (
    SELECT
        user_id,
        event_name
    FROM sample_events
),
funnel AS (
    SELECT
        user_id,
        MAX(CASE WHEN event_name = 'signup' THEN 1 ELSE 0 END) AS signup,
        MAX(CASE WHEN event_name = 'first_session' THEN 1 ELSE 0 END) AS first_session,
        MAX(CASE WHEN event_name = 'key_action' THEN 1 ELSE 0 END) AS key_action,
        MAX(CASE WHEN event_name = 'activation' THEN 1 ELSE 0 END) AS activation
    FROM events
    GROUP BY user_id
)
SELECT
    COUNT(*) AS total_users,
    SUM(signup) AS signups,
    SUM(first_session) AS first_sessions,
    SUM(key_action) AS key_actions,
    SUM(activation) AS activations
FROM funnel;
