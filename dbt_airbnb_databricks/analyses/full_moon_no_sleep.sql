with full_moon_reviews AS (
    SELECT
    *
    from {{ ref('mart_fullmoon_reviews')}}
)
SELECT
    is_full_moon,
    review_sentiment,
    count(*) as num_reviews,
FROM full_moon_reviews
Group BY
    is_full_moon,
    review_sentiment
ORDER BY
    is_full_moon,
    review_sentiment