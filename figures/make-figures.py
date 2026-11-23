"""Figures for the example poster. All numbers are made up.

Students do not need this script: any PNG or SVG figure works.
Make figures large (e.g. figsize=(12, 7)) with big fonts, and save at 300 dpi.
"""

from pathlib import Path

import matplotlib.pyplot as plt
from matplotlib import font_manager

here = Path(__file__).parent
for f in (here.parent / "fonts").glob("*.ttf"):
    font_manager.fontManager.addfont(f)
plt.rcParams.update({"font.family": "Fira Sans", "font.size": 24,
                     "axes.spines.top": False, "axes.spines.right": False})
red, green, gray = "#BA0C2F", "#215732", "#9A9A9A"

# Cost to serve one client per year, by channel.
fig, ax = plt.subplots(figsize=(12, 7))
channels = ["Human advisor", "Hybrid", "Robo-advisor"]
costs = [1450, 620, 140]
bars = ax.bar(channels, costs, color=[gray, green, red], width=0.6)
ax.bar_label(bars, labels=[f"${c:,}" for c in costs], padding=6)
ax.set_ylabel("Cost per client per year ($)")
ax.set_ylim(0, 1700)
fig.tight_layout()
fig.savefig(here / "cost-per-client.png", dpi=300)

# Assets under management, three adoption scenarios.
fig, ax = plt.subplots(figsize=(12, 7))
years = list(range(2027, 2033))
for label, growth, color in [("High adoption", 0.55, red),
                             ("Base case", 0.35, green),
                             ("Low adoption", 0.15, gray)]:
    aum = [40 * (1 + growth) ** i for i in range(len(years))]
    ax.plot(years, aum, color=color, lw=5, marker="o", ms=10)
    ax.annotate(label, (years[-1], aum[-1]), xytext=(10, 0),
                textcoords="offset points", va="center", color=color)
ax.set_ylabel("Assets on platform ($ millions)")
ax.set_xlim(2026.6, 2034.2)
fig.tight_layout()
fig.savefig(here / "aum-scenarios.png", dpi=300)
