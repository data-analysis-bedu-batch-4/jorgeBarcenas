a = ("Pikachu" , 100) 
b = ("Casa", 2000000)
c = ("celular", 15000)

#print('-' * 70)
#print('Producto', ' ' * 27, '|Precio')
#print('-' * 70)
#print(a[0], ' ' * (35 - len(a[0])), '|', a[1])
#print(b[0], ' ' * (35 - len(b[0])), '|', b[1])
#print(c[0], ' ' * (35 - len(c[0])), '|', c[1])
#print(' ' * (36 - len('total')), 'Total|', a[1] + b[1] + c[1] )
#print()


total = 0
descuento = 0
productos = [ {"nombre":"Pikachu" ,"precio" :100, "descuento":15}, {"nombre":"Casa", "precio":2000000,"descuento":15000}, {"nombre":"celular", "precio": 15000,"descuento":1000}] 

print("-"*80)
print("{:40}|{:15}|{:15}".format("PRODUCTO", "PRECIO", "DESCUENTO"))
print("-"*80)
for i in range(len(productos)):
    print("{:40}|{:15.2f}|{:15.2f}".format(productos[i]["nombre"], productos[i]["precio"], productos[i]["descuento"] ))
    total += productos[i]["precio"]
    descuento +=  productos[i]["descuento"]
print("-"*80)
print("{:>40}|{:15.2f}     - {:10.2f} = {:10.2f}".format("Total", total, descuento, total - descuento ))


