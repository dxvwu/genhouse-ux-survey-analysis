/* ============================================================
   GENHOUSE UX SURVEY ANALYSIS — SQL QUERIES
   Dataset: Early-Career UX Designer Survey Responses
   ============================================================ */


/* ============================================================
   1. BASIC SURVEY COUNTS
   ============================================================ */

-- Total number of survey responses
SELECT COUNT(*) AS total_responses
FROM ux_survey_responses;


-- Responses by design level
SELECT design_level,
       COUNT(*) AS response_count
FROM ux_survey_responses
GROUP BY design_level
ORDER BY response_count DESC;


-- Responses by UX experience length
SELECT ux_experience_years,
       COUNT(*) AS response_count
FROM ux_survey_responses
GROUP BY ux_experience_years
ORDER BY response_count DESC;


/* ============================================================
   2. PORTFOLIO CONFIDENCE ANALYSIS
   ============================================================ */

-- Average portfolio confidence overall
SELECT AVG(portfolio_confidence_score) AS avg_portfolio_confidence
FROM ux_survey_responses;


-- Portfolio confidence by design level
SELECT design_level,
       AVG(portfolio_confidence_score) AS avg_confidence
FROM ux_survey_responses
GROUP BY design_level
ORDER BY avg_confidence ASC;


-- Portfolio confidence by real-world experience
SELECT real_world_experience,
       AVG(portfolio_confidence_score) AS avg_confidence
FROM ux_survey_responses
GROUP BY real_world_experience
ORDER BY avg_confidence ASC;


/* ============================================================
   3. CAREER PAIN POINTS & JOB SEARCH BLOCKERS
   ============================================================ */

-- Biggest career challenges
SELECT biggest_challenge,
       COUNT(*) AS challenge_count
FROM ux_survey_responses
GROUP BY biggest_challenge
ORDER BY challenge_count DESC;


-- Top blockers preventing UX job applications
SELECT application_blocker,
       COUNT(*) AS blocker_count
FROM ux_survey_responses
GROUP BY application_blocker
ORDER BY blocker_count DESC;


-- Difficulty standing out on portfolio platforms
SELECT standout_difficulty,
       COUNT(*) AS count
FROM ux_survey_responses
GROUP BY standout_difficulty
ORDER BY standout_difficulty DESC;


/* ============================================================
   4. NGO PROJECT DEMAND & CLIENT READINESS
   ============================================================ */

-- Interest in working with NGOs
SELECT ngo_interest,
       COUNT(*) AS interest_count
FROM ux_survey_responses
GROUP BY ngo_interest
ORDER BY interest_count DESC;


-- NGO interest by real-world experience level
SELECT real_world_experience,
       ngo_interest,
       COUNT(*) AS count
FROM ux_survey_responses
GROUP BY real_world_experience, ngo_interest
ORDER BY count DESC;


-- Comfort working with real clients (average score)
SELECT AVG(client_comfort_score) AS avg_client_comfort
FROM ux_survey_responses;


-- Client comfort by design level
SELECT design_level,
       AVG(client_comfort_score) AS avg_client_comfort
FROM ux_survey_responses
GROUP BY design_level
ORDER BY avg_client_comfort ASC;


/* ============================================================
   5. SUBSCRIPTION & PRICING INSIGHTS
   ============================================================ */

-- Would users pay for a mentored UX project platform?
SELECT subscription_interest,
       COUNT(*) AS count
FROM ux_survey_responses
GROUP BY subscription_interest
ORDER BY count DESC;


-- Pricing preference among interested users (Yes or Maybe)
SELECT price_range,
       COUNT(*) AS user_count
FROM ux_survey_responses
WHERE subscription_interest IN ('Yes', 'Maybe')
GROUP BY price_range
ORDER BY user_count DESC;


-- Most valuable features users want (multi-select field)
SELECT top_features,
       COUNT(*) AS count
FROM ux_survey_responses
GROUP BY top_features
ORDER BY count DESC;


/* ============================================================
   6. MENTORSHIP INSIGHTS
   ============================================================ */

-- Mentorship experience breakdown
SELECT mentorship_type,
       COUNT(*) AS count
FROM ux_survey_responses
GROUP BY mentorship_type
ORDER BY count DESC;


-- Average mentorship value score overall
SELECT AVG(mentorship_value_score) AS avg_mentorship_value
FROM ux_survey_responses;


-- Mentorship value by mentorship type
SELECT mentorship_type,
       AVG(mentorship_value_score) AS avg_value
FROM ux_survey_responses
GROUP BY mentorship_type
ORDER BY avg_value DESC;


/* ============================================================
   7. PLATFORM SATISFACTION & FEEDBACK CULTURE
   ============================================================ */

-- Satisfaction with Behance/Dribbble/portfolio platforms
SELECT AVG(platform_satisfaction) AS avg_platform_satisfaction
FROM ux_survey_responses;


-- Do platforms help designers grow?
SELECT platform_growth_help,
       COUNT(*) AS count
FROM ux_survey_responses
GROUP BY platform_growth_help
ORDER BY count DESC;


-- How often designers receive useful feedback
SELECT feedback_usefulness,
       COUNT(*) AS count
FROM ux_survey_responses
GROUP BY feedback_usefulness
ORDER BY count DESC;


-- Do platforms favor senior designers?
SELECT senior_bias,
       COUNT(*) AS count
FROM ux_survey_responses
GROUP BY senior_bias
ORDER BY count DESC;


/* ============================================================
   8. CAREER ACTIVITY METRICS
   ============================================================ */

-- Hours spent improving UX skills per week
SELECT hours_per_week,
       COUNT(*) AS count
FROM ux_survey_responses
GROUP BY hours_per_week
ORDER BY count DESC;


-- Portfolio update frequency
SELECT portfolio_update_frequency,
       COUNT(*) AS count
FROM ux_survey_responses
GROUP BY portfolio_update_frequency
ORDER BY count DESC;


-- Job application frequency
SELECT application_frequency,
       COUNT(*) AS count
FROM ux_survey_responses
GROUP BY application_frequency
ORDER BY count DESC;


-- Interview count distribution
SELECT interview_count,
       COUNT(*) AS count
FROM ux_survey_responses
GROUP BY interview_count
ORDER BY count DESC;


/* ============================================================
   9. RETENTION + RECOMMENDATION POTENTIAL
   ============================================================ */

-- What would make users stay subscribed long-term?
SELECT retention_reason,
       COUNT(*) AS count
FROM ux_survey_responses
GROUP BY retention_reason
ORDER BY count DESC;


-- Recommendation likelihood if confidence improves
SELECT recommend_if_confident,
       COUNT(*) AS count
FROM ux_survey_responses
GROUP BY recommend_if_confident
ORDER BY count DESC;


-- Recommendation likelihood if interviews improve
SELECT recommend_if_interviews,
       COUNT(*) AS count
FROM ux_survey_responses
GROUP BY recommend_if_interviews
ORDER BY count DESC;


/* ============================================================
   END OF GENHOUSE UX SURVEY ANALYSIS
   ============================================================ */
