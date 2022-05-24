import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators, FormBuilder } from '@angular/forms';
import { ProductService } from '../services/product.service';
import { Product } from '../shared/models/product.model';
import { ApiService } from '../services/api.service'; 

@Component({
  selector: 'app-panel-admin',
  templateUrl: './panel-admin.component.html',
  styleUrls: ['./panel-admin.component.scss']
})
export class PanelAdminComponent implements OnInit {

  fullName = '';
  email = '';
  password = '';
  confirmPassword = '';
  errorMessage = '';
  constructor(
    private _api: ApiService,
  ) {}

  ngOnInit(): void {
  }

  onSubmit() { 
    this.errorMessage = '';

}


}