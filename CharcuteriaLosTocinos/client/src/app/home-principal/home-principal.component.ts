import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home-principal',
  templateUrl: './home-principal.component.html',
  styleUrls: ['./home-principal.component.css']
})
export class HomePrincipalComponent implements OnInit {

  constructor() {

  }


  public slides: string[] = ['./assets/img10.jpg', './assets/img18.jpg', './assets/img12.jpg', './assets/img13.jpg']
  i: number;

  showSlide(slides, i) {
    let slide = slides[i];
    return slide;
  }

  getPrev(slides, i) {
    this.i = this.i - 1;
    this.showSlide(slides, i)
  }

  getNext(slides, i) {
    this.i = this.i + 1;
    this.showSlide(slides, i)
  }

  ngOnInit(): void {
    this.i = 1;
  }



}
