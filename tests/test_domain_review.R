source("R/domain_review.R")

item <- list(signal=50, slack=38, drag=8, confidence=78)
stopifnot(domain_review_score(item) == 192)
stopifnot(domain_review_lane(item) == "ship")
