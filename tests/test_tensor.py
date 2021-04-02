from candle import Tensor
import numpy as np


class TestTensor:

    def test_add(self):
        a = Tensor(np.random.rand(4,6))
        b = Tensor(np.random.rand(4,6))
        assert True
        