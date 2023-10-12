import matplotlib.pyplot as plt

# Data for the first plot
x1 = [1, 2, 3, 4, 5]
y1 = [2, 4, 1, 3, 5]

# Data for the second plot
x2 = [1, 2, 3, 4, 5]
y2 = [5, 3, 1, 4, 2]

# Create a figure with two subplots side by side
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

# Plot the first dataset and set a label for the legend
ax1.plot(x1, y1, marker='o', linestyle='-', label='Plot 1')

# Plot the second dataset and set a label for the legend
ax2.plot(x2, y2, marker='s', linestyle='--', label='Plot 2')

# Add labels and a title for the first plot
ax1.set_xlabel('X-axis')
ax1.set_ylabel('Y-axis')
ax1.set_title('Plot 1')

# Add labels and a title for the second plot
ax2.set_xlabel('X-axis')
ax2.set_ylabel('Y-axis')
ax2.set_title('Plot 2')

# Combine the legends from both plots
lines1, labels1 = ax1.get_legend_handles_labels()
lines2, labels2 = ax2.get_legend_handles_labels()
lines = lines1 + lines2
labels = labels1 + labels2

# Place the legend in the upper middle
ax1.legend(lines, labels, loc='upper center', bbox_to_anchor=(0.5, 1.15))

# Adjust the spacing between subplots
plt.tight_layout()

# Show the plot
plt.show()
