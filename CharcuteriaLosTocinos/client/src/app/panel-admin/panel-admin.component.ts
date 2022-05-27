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

  
  name:Text;
  imgProd:Text;
  desc:Text;
  price:number;
  cantidad:number;
  category:Text;
  categoryId:number;

  idProd2:Number;
  name2:Text;
  imgProd2:Text;
  desc2:Text;
  price2:number;
  cantidad2:number;
  category2:Text;
  categoryId2:number;

  idProd3:Number;

  errorMessage = '';

  constructor(
    private _api: ApiService,
    private _auth: AuthService,
    private _prod: ProductService,
  ) {}

  ngOnInit(): void {
  }

  onSubmitPost() { 
    this._prod.createProduct({
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

onSubmitUpdate() { 
  this._prod.updateProduct({
    idProd2: this.idProd2,
    name2: this.name2,
    imgProd2: this.imgProd2,
    desc2: this.desc2,
    price2: this.price2,
    cantidad2: this.cantidad2,
    category2: this.category2,
    categoryId2: this.categoryId2,
  }).subscribe(
    (res) => {
      console.log(res);
    },
    (err) => {
      this.errorMessage = err.error.message;
    }
  );
}


onSubmitDelete(){
  this._prod.dropProduct({
    idProd3: this.idProd3,
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