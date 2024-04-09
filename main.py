import torch
import utils
from ultralytics import YOLO
model = YOLO('/Users/doa_ai/Developer/fall-detect/FALL-DETECTION/yolov8n.yaml').load('/Users/doa_ai/Developer/fall-detect/FALL-DETECTION/yolov8n.pt')  
results = model.train(data="data.yaml", epochs=50, imgsz = 640)