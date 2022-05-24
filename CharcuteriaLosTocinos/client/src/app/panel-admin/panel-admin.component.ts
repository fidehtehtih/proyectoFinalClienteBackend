import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators, FormBuilder } from '@angular/forms';
import { ProductService } from '../services/product.service';
import { Product } from '../shared/models/product.model';
@Component({
  selector: 'app-panel-admin',
  templateUrl: './panel-admin.component.html',
  styleUrls: ['./panel-admin.component.scss']
})
export class PanelAdminComponent implements OnInit {

  product:Product;

  MyNewForm = new FormGroup({
    id: new FormControl(''),
    nombre: new FormControl(''),
    imagen: new FormControl(''),
    description: new FormControl(''),
    precio: new FormControl(''),
    cantidad: new FormControl(''),
    categoria: new FormControl(''),
    categoriaId: new FormControl(''),
    
  });

  constructor() { }

  ngOnInit(): void {
  }
  Click(datos) { 
    console.log(datos); 


    this.product.id = datos.id;
    this.product.name = datos.nombre;
    this.product.image = datos.imagen;
    this.product.description = datos.description;
    this.product.price = datos.precio;
    this.product.quantity = datos.cantidad;
    this.product.images = datos.categoria;
    this.product.category = datos.categoriaId;
  }
}
