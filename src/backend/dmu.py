from dist import *

class DMU:

    def __init__(self):
        pass

    def value(self):
        pass

class GammaDMUs(DMU):

    def __init__(self, param_dict):
        super(DMU).__init__(self)
        self.param_dict = param_dict

    def value(self):
        return gamma_dist(**self.param_dict)

class NormalDMUs(DMU):

    def __init__(self, param_dict):
        super(DMU).__init__(self)
        self.param_dict = param_dict

    def value(self):
        return normal_dist(**self.param_dict)
