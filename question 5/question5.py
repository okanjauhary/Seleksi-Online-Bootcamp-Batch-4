class Pola():

	def __init__(self, char):
		self.__char = char

	def getPattern(self):
		for row in range(6):
			for col in range(12):
				if(self.isDPattern(row, col)):
					print(self.__char, end="")
				elif(self.isWPattern(row, col)):
					print(self.__char, end="")
				else:
					print(end="  ")
			print()

	def isDPattern(self, row, col):
		if(col < 4 and ((col == 0) or ((col == 1 and (row == 0 or row == 5)) or (col==2 and (row == 1 or row == 4)) or (col==3 and (row ==2 or row ==3))))):
			return True
		else:
			return False

	def isWPattern(self, row, col):
		if((col==5) or (col == 11) or (col==8 and(row==2 or row==3)) or (row==3 and (col==7 or col==9)) or (row==4 and (col==6 or col==10))):
			return True
		else:
			return False



pola = Pola("DW")

pola.getPattern()