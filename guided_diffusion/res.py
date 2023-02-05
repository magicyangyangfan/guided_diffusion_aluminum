from PIL import Image
data = np.load('output1/samples_10x64x64x3.npz', allow_pickle=True)
lst = data.files

for item in lst:
    print(item)
    t=0
    for i in data[item]:
        im = Image.fromarray(i)
    #from PIL import Image
   # im = Image.fromarray(A)
        t+=1
        im.save("output1/sample_"+str(t)+"_.png")
        print(data[item].shape) 