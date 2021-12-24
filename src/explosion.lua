explosionConsts = {
	storeX = 316,
	storeY = 150,
	clrIndex = 0
}

function createExplosion()
  return {
		active = false,
		x = explosionConsts.storeX,
		y = explosionConsts.storeY,
		ani = {
			delayCounter = 0,
			currentCounter = 1,
			currentFrame = explosionAni.sprites[1]
		},
		enable = function (self, x, y)
			self.active = true
			self.x = x
			self.y = y
			self.ani.delayCounter = 0
			self.ani.currentCounter = 1
			self.ani.currentFrame = explosionAni.sprites[1]
		end,
		disable = function (self)
			self.active = false
			self.x = explosionConsts.storeX
			self.y = explosionConsts.storeY
		end,
    draw = function (self)
      if self.active == true then
        spr(
          self.ani.currentFrame,
          self.x,
          self.y,
          explosionConsts.clrIndex)
      end
    end,
    update = function (self)
      if self.active == true then
        animateOneshot(self, explosionAni)
      end
    end
	}
end