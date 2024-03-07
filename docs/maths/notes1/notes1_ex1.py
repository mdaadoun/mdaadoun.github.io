import matplotlib.pyplot as plt
import numpy as np

# Create a single vector
V = np.array([-2,3])

# Create the plot
fig, ax = plt.subplots()

# Add the vector V to the plot
ax.quiver(0, 0, V[0], V[1], angles='xy', scale_units='xy', scale=1, color='r')
ax.plot(3, -2, 'ro')

# Set the x-limits and y-limits of the plot
ax.set_xlim([-4, 4])
ax.set_ylim([-4, 4])

# Show the plot along with the grid
plt.grid()
plt.axhline(0, color="b", alpha=0.5)
plt.axvline(0, color="b", alpha=0.5)
plt.show()
