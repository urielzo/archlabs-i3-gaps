def get_mgr_concatenation_plan(mgr, indexers): ...

class JoinUnit:
    block = ...
    indexers = ...
    shape = ...
    def __init__(self, block, shape, indexers = ...) -> None: ...
    def needs_filling(self): ...
    def dtype(self): ...
    def is_na(self): ...
    def get_reindexed_values(self, empty_dtype, upcasted_na): ...

def concatenate_join_units(join_units, concat_axis, copy): ...
def is_uniform_join_units(join_units): ...
def combine_concat_plans(plans, concat_axis): ...