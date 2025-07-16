Modo de Uso
+++++++++++



Rode o notebook ``loadingModel.ipynb``. na seguinte ordem:

1. **Load packages**
    Carregar as bibliotecas:
    ::
        # Load libraries 
        from keras.models import load_model # !pip install keras
        import matplotlib.pyplot as plt #pip install matplotlib
        import numpy as np  #pip install numpy
        import pickle
        import random
        import cv2 #!pip install opencv

2. **Load dataset**
    Carregar o dataset:
    ::
        # Load Dataset 
        with open('dataset/dataset.pkl','rb') as f:
            data = pickle.load(f)

        (xt,yt),(xv,yv),(teste,label) = data
        del xt
        del yt
        del xv
        del yv
        teste = teste.astype('uint8')
        teste = np.array([image.reshape((128, 128, 3)) for image in teste])


3. **Load model**
    Carregar o modelo:
    ::
        # Load Dataset 
        with open('dataset/dataset.pkl','rb') as f:
            data = pickle.load(f)

        (xt,yt),(xv,yv),(teste,label) = data
        del xt
        del yt
        del xv
        del yv
        teste = teste.astype('uint8')
        teste = np.array([image.reshape((128, 128, 3)) for image in teste])

1. **Make predictions with images from the dataset**
    Fazer previsões com imagens do conjunto de teste do dataset
    ::
        # Visualizar  as imagens
        img_nr = random.randint(0, teste.shape[0])

        plt.imshow(teste[img_nr].reshape(128,128,3))
        plt.show()

        classes = {0:'linear', 1: 'quadrática', 2:'cúbica', 3:'exponencial', 4:'logarítmica',
                            5:'raíz', 6:'seno', 7:'cosseno', 8:'tangente', 9:'cotangente'}

        print('Previsão do modelo:', classes[np.argmax(predictions[img_nr])])
        print('Resposta esperada:' , classes[np.argmax(label[img_nr])])

.. caution:: 
    Só rode esta célula caso tenha baixado o dataset através do comando ``./setup.sh`` na seção de :doc:`/Options/instalation`.


5. **Make predictions with images from the internet**
    Fazer previsões com imagens da internet e outras desenhadas manualmente
    ::
        # Visualizar  as imagens
        img_url= "demo_imgs/func0.png" # substitua aqui o caminho correto para a imagem
        imagem = cv2.imread(img_url)
        imagem = cv2.resize(imagem,(128,128), interpolation = cv2.INTER_AREA)
        discover = np.argmax(GF_Model.predict(imagem.reshape(1,128,128,3)))

        plt.imshow(imagem)
        plt.show()

        classes = {0:'linear', 1: 'quadrática', 2:'cúbica', 3:'exponencial', 4:'logarítmica',
                            5:'raíz', 6:'seno', 7:'cosseno', 8:'tangente', 9:'cotangente'}

        print('É uma função ', classes[discover])

.. image:: images/func0.png
    :alt: Imagem de uma funcao exponencial
    :width: 400px


>>> É uma função  exponencial