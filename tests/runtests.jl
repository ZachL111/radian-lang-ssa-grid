include("../src/Policy.jl")
using .Policy

signal_case_1 = Signal(67, 105, 8, 6, 12)
@assert score(signal_case_1) == 205
@assert classify(signal_case_1) == "accept"
signal_case_2 = Signal(73, 91, 22, 13, 13)
@assert score(signal_case_2) == 128
@assert classify(signal_case_2) == "review"
signal_case_3 = Signal(70, 71, 10, 9, 4)
@assert score(signal_case_3) == 136
@assert classify(signal_case_3) == "review"
