import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators, FormBuilder } from '@angular/forms';
import { ProductService } from '../services/product.service';
import { Product } from '../shared/models/product.model';
import { ApiService } from '../services/api.service'; 
import { AuthService } from '../services/auth.service';


@Component({
  selector: 'app-panel-admin',
  templateUrl: './panel-admin.component.html',
  styleUrls: ['./panel-admin.component.scss']
})
export class PanelAdminComponent implements OnInit {

  id = '';
  name = '';
  image = '';
  description = '';
  price = '';
  quantity = '';
  category = '';
  categoryId = '';

  constructor(
    private _api: ApiService,
    private _auth: AuthService,
  ) {}

  ngOnInit(): void {
  }

  onSubmit() { 

    this._auth.createProduct({
      id: this.id,
      name: this.name,
      image: this.image,
      description: this.description,
      price: this.price,
      quantity: this.quantity,
      category: this.category,
      categoryId: this.categoryId,
    })
}


}