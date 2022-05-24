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
  Click() { 
 
  }
}
