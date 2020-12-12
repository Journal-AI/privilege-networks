import numpy as np

# Boxing and Unboxing uses these distributions for analysis

def gamma_dist(gamma_shape, gamma_scale, size):
    return np.random.gamma(gamma_shape, gamma_scale, size)

def normal_dist(normal_center, normal_std, size):
    return np.random.normal(normal_center, normal_std, size)

class Test:

    def __init__(self):
        pass

    def test(self):
        pass

class LossFunctionComparison:

    def __init__(self, privilege_data, service_data):
        self.input_data = privilege_data
        self.output_data = service_data

    def is_superceeded(self, input_test, output_test):
        return input_test.test() < output_test.test()

    