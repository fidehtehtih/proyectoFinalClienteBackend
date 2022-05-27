import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Products, Product } from '../shared/models/product.model';
import { environment } from '../../environments/environment';
import { ApiService } from './api.service';

@Injectable({
  providedIn: 'root',
})
export class ProductService {
  private url = environment.apiUrl;

  constructor(private http: HttpClient, private _api: ApiService) {}

  getAllProducts(limitOfResults = 9, page): Observable<Products> {
    return this.http.get<Products>(this.url + 'products', {
      params: {
        limit: limitOfResults.toString(),
        page: page,
      },
    });
  }

  getSingleProduct(id: Number): Observable<any> {
    console.log(id);
    return this._api.getTypeRequest('products/' + id);
  }



  createProduct(pruduct: any): Observable<any> {
    return this._api.postTypeRequest('productadmin/create', {

      name: pruduct.name,
      imgProd: pruduct.imgProd,
      desc: pruduct.desc,
      price: pruduct.price,
      cantidad: pruduct.cantidad,
      category: pruduct.category,
      categoryId: pruduct.categoryId
    });
  }

  updateProduct(pruduct: any): Observable<any> {
    return this._api.putTypeRequest('productadmin/update', {
      idProd2: pruduct.idProd2,
      name2: pruduct.name2,
      imgProd2: pruduct.imgProd2,
      desc2: pruduct.desc2,
      price2: pruduct.price2,
      cantidad2: pruduct.cantidad2,
      category2: pruduct.category2,
      categoryId2: pruduct.categoryId2
    });
  }

  dropProduct(pruduct: any): Observable<any> {
    return this._api.dropTypeRequest('productadmin/drop', {
      idProd3: pruduct.idProd3
    });
  }
  
  
}
