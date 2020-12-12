import numpy as np
from stats import *

# Boxing and Unboxing uses these distributions for analysis

def gamma_dist(gamma_shape, gamma_scale, size):
    return np.random.gamma(gamma_shape, gamma_scale, size)

def normal_dist(normal_center, normal_std, size):
    return np.random.normal(normal_center, normal_std, size)

class Test:

    def __init__(self):
        pass

    def test(self):
        test, pvalue = self.callback_func(**self.param_dict)
        if self.mode == 'pvalue':
            return pvalue
        elif self.mode == 'test':
            return test

class ChiTest(Test):

    def __init__(self, data, mode='pvalue'):
        super(Test).__init__(self)
        self.data = data
        self.mode = mode
        self.callback_func = chi_test
        self.param_dict = {
            'normalised': self.data / np.sum(np.square(self.data)),
            'success_data': self.data
        }

class LossFunctionComparison:

    def __init__(self, privilege_data, service_data):
        self.input_data = privilege_data
        self.output_data = service_data

    def is_superceeded(self, input_test, output_test):
        return input_test.test() < output_test.test()

