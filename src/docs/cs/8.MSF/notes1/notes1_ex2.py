import matplotlib.pyplot as plt
import numpy as np

fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')

v1 = np.array([2, 1, 3])
# v2 = np.array([-2, 1, 4])

#VECTOR 1
ax.quiver(0, 0, 0, v1[0], v1[1], v1[2], color='r', arrow_length_ratio=0.1)
#VECTOR 2
# ax.quiver(0, 0, 0, v2[0], v2[1], v2[2], color='b', arrow_length_ratio=0.1)

ax.set_xlim([-3, 3])
ax.set_ylim([-3, 3])
ax.set_zlim([-3, 3])

ax.plot3D([-3, 3], [0, 0], [0, 0], color='b', alpha=0.3)
ax.plot3D([0, 0], [-3, 3], [0, 0], color='r', alpha=0.3)
ax.plot3D([0, 0], [0, 0], [-3, 3], color='g', alpha=0.3)

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
plt.title('3D Vector Plot')

plt.show()