

# 🎄 Christmas Snow & Snowball Script (ESX + ox_inventory)

**Author:** TRAPZY
**Dependencies:** ESX, ox_inventory
**License:** MIT

Bring the Christmas spirit to your FiveM server with snow and interactive snowballs!

---

## ✨ Description

* Permanent snow on the map
* Players can pick up **snowballs** from the ground
* Realistic pick-up animation when collecting a snowball
* Works with **ox_inventory** for item management

### ⚠️ Restrictions

* Cannot pick up snowballs **inside buildings**
* Cannot pick up snowballs **while in a vehicle**
* Silent if the inventory is full (handled by ox_inventory)

---

## 🎁 Features

* Permanent snow weather across the map (`XMAS`)
* Pick-up animation (`pickup_low`) for immersive RP
* Adds `weapon_snowball` to the player inventory
* No notifications for blocked actions
* Fully compatible with ESX + ox_inventory

---

## 🗂️ Installation

1. Place the folder in your server resources, e.g., `resources/[scripts]/trap_christmas`.
2. Add the following to your **server.cfg**:

```cfg
ensure trap_christmas
```

3. Make sure you have **ESX** and **ox_inventory** installed.

---

## 🎮 Usage

* Go outside (on snow-covered ground) and press **E** to pick up a snowball.
* You must be **on foot** and **outside a building**.
* The snowball will be added to your inventory if you have space.

---

## 📂 Files

* `fxmanifest.lua` — Resource manifest
* `client.lua` — Client-side script (weather, animation, interaction)
* `server.lua` — Server-side script (add snowball item to inventory)

---

## ⚙️ Customization

* Adjust animation duration in `client.lua` by modifying the `Wait()` after `TaskPlayAnim`.
* Change the snowball item name if needed in `server.lua` (`weapon_snowball`).
* Modify weather and snow settings in `client.lua` (`XMAS`).

---

## 💬 Support / Script Creation

For support or custom script creation, join our Discord:
[https://discord.gg/rjjU2y93X7](https://discord.gg/rjjU2y93X7)

---

