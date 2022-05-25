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

  prodId;
  name:Text;
  imgProd:Text;
  desc:Text;
  price:number;
  cantidad:number;
  category:Text;
  categoryId:number;


  errorMessage = '';

  constructor(
    private _api: ApiService,
    private _auth: AuthService,
    private _prod: ProductService,
  ) {}

  ngOnInit(): void {
  }

  onSubmit() { 

    this._prod.createProduct({
      // prodId: this.prodId,
      name: this.name,
      imgProd: this.imgProd,
      desc: this.desc,
      price: this.price,
      cantidad: this.cantidad,
      category: this.category,
      categoryId: this.categoryId,
    }).subscribe(
      (res) => {
        console.log(res);

      },
      (err) => {
        this.errorMessage = err.error.message;

      }
    );
}


}