include("../src/DomainReview.jl")
using .DomainReview

item = ReviewItem(80, 36, 21, 63)
@assert score(item) == 196
@assert lane(item) == "ship"
