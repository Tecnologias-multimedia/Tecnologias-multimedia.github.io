# Can you provide a python implementation of an echo cancellation using LMS?

import numpy as np
import matplotlib.pyplot as plt

# LMS Algorithm for Echo Cancellation

class LMSFilter:
    def __init__(self, filter_length, step_size):
        self.filter_length = filter_length  # Number of filter coefficients (adaptive filter length)
        self.step_size = step_size  # Step size (learning rate)
        self.w = np.zeros(filter_length)  # Filter coefficients initialized to zero

    def filter(self, x):
        """Apply the filter to the input signal and return the output."""
        return np.dot(self.w, x)

    def update(self, x, error):
        """Update the filter coefficients using the LMS algorithm."""
        self.w += 2 * self.step_size * error * x

def lms_echo_cancellation(microphone_signal, far_end_signal, filter_length, step_size):
    """Perform echo cancellation using LMS algorithm.

    Args:
        microphone_signal (numpy array): Signal received by the microphone (containing echo).
        far_end_signal (numpy array): Far-end signal (played by the loudspeaker).
        filter_length (int): Length of the adaptive filter.
        step_size (float): Step size for the LMS algorithm.

    Returns:
        (numpy array): The estimated near-end signal (echo-canceled signal).
        (numpy array): The error signal over time.
    """
    # Initialize the LMS adaptive filter
    lms = LMSFilter(filter_length, step_size)
    
    # Prepare output arrays
    num_samples = len(microphone_signal)
    echo_canceled_signal = np.zeros(num_samples)  # Echo-canceled signal
    error_signal = np.zeros(num_samples)  # Error signal for monitoring

    # Buffer for past values of far-end signal
    far_end_buffer = np.zeros(filter_length)

    # Adaptive filtering process
    for n in range(num_samples):
        # Shift the buffer and add the current far-end signal sample
        far_end_buffer[1:] = far_end_buffer[:-1]
        far_end_buffer[0] = far_end_signal[n]

        # Estimate the echo using the adaptive filter
        echo_estimate = lms.filter(far_end_buffer)

        # Calculate the error (near-end signal estimate)
        error = microphone_signal[n] - echo_estimate

        # Store the error (echo-canceled signal)
        echo_canceled_signal[n] = error
        error_signal[n] = error

        # Update filter coefficients
        lms.update(far_end_buffer, error)

    return echo_canceled_signal, error_signal

# Generate simulated signals for testing

# Parameters
num_samples = 1000
filter_length = 32  # Number of filter coefficients
step_size = 0.01  # Learning rate

# Generate a far-end signal (simulating a voice signal, played on loudspeaker)
np.random.seed(0)
far_end_signal = np.sin(0.02 * np.pi * np.arange(num_samples))  # Simulated sine wave as far-end signal

# Generate a near-end signal (simulating the near-end speaker)
near_end_signal = 0.5 * np.sin(0.05 * np.pi * np.arange(num_samples))  # Simulated sine wave as near-end signal

# Simulate the echo by convolving the far-end signal with a room impulse response
impulse_response = np.random.randn(filter_length) * 0.1  # Simulated echo path
echo_signal = np.convolve(far_end_signal, impulse_response, mode='full')[:num_samples]

# Microphone signal is the sum of the near-end signal and the echo
microphone_signal = near_end_signal + echo_signal

# Perform echo cancellation using LMS
echo_canceled_signal, error_signal = lms_echo_cancellation(microphone_signal, far_end_signal, filter_length, step_size)

# Plot the results
plt.figure(figsize=(12, 8))

plt.subplot(3, 1, 1)
plt.title('Far-End Signal (Played on Loudspeaker)')
plt.plot(far_end_signal, label='Far-End Signal')
plt.legend()

plt.subplot(3, 1, 2)
plt.title('Microphone Signal (Near-End + Echo)')
plt.plot(microphone_signal, label='Microphone Signal')
plt.plot(near_end_signal, label='Near-End Signal', linestyle='--')
plt.legend()

plt.subplot(3, 1, 3)
plt.title('Echo-Canceled Signal (Near-End Signal)')
plt.plot(echo_canceled_signal, label='Echo-Canceled Signal')
plt.plot(near_end_signal, label='True Near-End Signal', linestyle='--')
plt.legend()

plt.tight_layout()
plt.show()
