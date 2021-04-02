import os
import numpy as np

class Tensor():
    def __init__(self, arg):
        if(len(arg)==0):
            assert Exception("argument not valid")
        else:
            self.data = np.array(arg, copy=True)
            self.shape = self.data.shape
    
    def __str__(self):
        '''
            Returns a string representation of Tensor
        '''
        # we use numpy.array2string because numpy.ndarray.tostring() function is actually converting array to bytes.
        return np.array2string(self.data)

    def __add__(self, other):
        return Tensor(self.data + other.data)
    
    def __sub__(self, other):
        return Tensor(self.data - other.data)