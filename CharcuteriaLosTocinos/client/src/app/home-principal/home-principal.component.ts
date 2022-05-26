import { Component, Input, OnInit } from '@angular/core';

@Component({
  selector: 'app-home-principal',
  templateUrl: './home-principal.component.html',
  styleUrls: ['./home-principal.component.css']
})
export class HomePrincipalComponent implements OnInit {

  @Input() name: string;

  imageObject = [{
    image: './assets/img10.jpg',
    thumbImage: './assets/img10.jpg'
}, {
    image: './assets/img18.jpg',
    thumbImage: './assets/img18.jpg'
}, {
    image: './assets/img12.jpg',
    thumbImage: './assets/img12.jpg',
},{
    image: './assets/img13.jpg',
    thumbImage: './assets/img13.jpg',
    title: 'Hummingbirds are amazing creatures'
}, {
    image: 'https://sanjayv.github.io/ng-image-slider/contents/assets/img/slider/1.jpg',
    thumbImage: 'https://sanjayv.github.io/ng-image-slider/contents/assets/img/slider/1.jpg'
}, {
    image: 'https://sanjayv.github.io/ng-image-slider/contents/assets/img/slider/2.jpg',
    thumbImage: 'https://sanjayv.github.io/ng-image-slider/contents/assets/img/slider/2.jpg',
    title: 'Example two with title.'
}];

  constructor() {

  }


  // public slides: string[] = ['./assets/img10.jpg', './assets/img18.jpg', './assets/img12.jpg', './assets/img13.jpg']
  // i: number;

  // showSlide(slides, i) {
  //   let slide = slides[i];
  //   return slide;
  // }

  // getPrev(slides, i) {
  //   this.i = this.i - 1;
  //   this.showSlide(slides, i)
  // }

  // getNext(slides, i) {
  //   this.i = this.i + 1;
  //   this.showSlide(slides, i)
  // }

  ngOnInit(): void {
    // this.i = 1;
  }



}
