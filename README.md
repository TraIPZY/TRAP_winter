

# 🎄 Christmas Snow & Snowball Script (ESX + ox_inventory)

**Author:** TRAPZY
**Dependencies:** ESX, ox_inventory

---

## **Description**

This script brings the Christmas spirit to your server!

* Permanent snow on the map
* Players can pick up **snowballs** from the ground
* Realistic pick-up animation when collecting a snowball
* Works with **ox_inventory** for item management

### **Restrictions**

* Cannot pick up snowballs **inside buildings**
* Cannot pick up snowballs **while in a vehicle**
* Silent if the inventory is full (handled by ox_inventory)

---

## **Features**

* Permanent snow weather across the map (`XMAS`)
* Pick-up animation (`pickup_low`) for immersive RP
* Adds `weapon_snowball` to the player inventory
* No notifications for blocked actions
* Fully compatible with ESX + ox_inventory

---

## **Installation**

1. Place the folder in your server resources, e.g. `resources/[scripts]/trap_christmas`.
2. Add to your **server.cfg**:

```cfg
ensure trap_christmas
```

3. Make sure you have **ESX** and **ox_inventory** installed.

---

## **Usage**

* Go outside (on snow-covered ground) and press **E** to pick up a snowball.
* You must be **on foot** and **outside a building**.
* The snowball will be added to your inventory if you have space.

---

## **Files**

* `fxmanifest.lua` — Resource manifest
* `client.lua` — Client-side script (weather, animation, interaction)
* `server.lua` — Server-side script (add snowball item to inventory)

---

## **Customization**

* You can adjust animation duration in `client.lua` by changing the `Wait()` after `TaskPlayAnim`.
* You can change the snowball item name if needed in `server.lua` (`weapon_snowball`).
* Weather and snow settings can be modified in `client.lua` (`XMAS`).

---

## **License**

MIT License — free to use, modify, and distribute in your projects.




