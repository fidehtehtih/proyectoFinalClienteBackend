import { Component, OnInit } from '@angular/core';
import { AuthService } from '../services/auth.service';
import { CartService } from '../services/cart.service';

@Component({
  selector: 'app-checkout',
  templateUrl: './checkout.component.html',
  styleUrls: ['./checkout.component.css'],
})
export class CheckoutComponent implements OnInit {
  currentUser: any;
  currentStep = 1;
  cardNumber: string;
  cardName: string;
  cardExpiry: string;
  cardCode: string;
  cartData: any;
  products: any;
  loading = false;
  successMessage = '';
  orderId;

  constructor(private _auth: AuthService, private _cart: CartService) {
    this._auth.user.subscribe((user) => {
      if (user) {
        
        this.currentUser = user;
        this.currentUser.user_id = user.user_id;
        this.billingAddress[0].value = user.user_id;
        this.billingAddress[2].value = user.email;
      }
    });

    this._cart.cartDataObs$.subscribe((cartData) => {
      this.cartData = cartData;
    });
  }

  ngOnInit(): void {}

  submitCheckout() {
    this.loading = true;
    setTimeout(() => {
      this._cart
        .submitCheckout(1,this.billingAddress[1].value ,this.cartData)
        .subscribe(
          (res: any) => {
            console.log(res);
            this.loading = false;
            this.orderId = res.orderId;
            this.products = res.products;
            this.currentStep = 4;
            this._cart.clearCart();
          },
          (err) => {
            console.log(err);
            console.log(this.billingAddress[0].value);
            console.log(    this.billingAddress[1].value);
            this.loading = false;
          }
        );
    }, 750);
  }

  getProgressPrecent() {
    return (this.currentStep / 4) * 100;
  }

  submitBilling(): void {
    this.nextStep();
  }

  canBillingSubmit(): boolean {
    return this.billingAddress.filter((field) => field.value.length > 0)
      .length !== 7
      ? true
      : false;
  }

  submitPayment(): void {
    this.nextStep();
  }

  canPaymentSubmit(): boolean {
    return this.cardNumber && this.cardName && this.cardExpiry && this.cardCode
      ? true
      : false;
  }

  nextStep(): void {
    this.currentStep += 1;
    localStorage.setItem('checkoutStep', this.currentStep.toString());
  }

  prevStep(): void {
    if (this.currentStep > 1) {
      this.currentStep -= 1;
      localStorage.setItem('checkoutStep', this.currentStep.toString());
    }
  }

  billingAddress = [
    // {
    //   name: 'ID',
    //   placeholder: 'ID',
    //   type: 'number',
    //   value: '',
    // },
    {
      name: 'Usuario',
      placeholder: 'Usuario',
      type: 'text',
      value: '',
    },
    {
      name: 'Email',
      placeholder: 'Introduce tu email',
      type: 'email',
      value: '',
    },
    {
      name: 'Dirección',
      placeholder: 'Introduce tu dirección',
      type: 'text',
      value: '',
    },
    {
      name: 'Ciudad',
      placeholder: 'Introduce tu ciudad',
      type: 'text',
      value: '',
    },
    {
      name: 'País',
      placeholder: 'Introduce tu país',
      type: 'text',
      value: '',
    },
    {
      name: 'DNI',
      placeholder: 'Introduce tu DNI',
      type: 'text',
      value: '',
    },
    {
      name: 'Teléfono',
      placeholder: 'Introduce tu teléfono',
      type: 'text',
      value: '',
    },
  ];
}
