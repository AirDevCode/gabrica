import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';

import { ApiService } from 'src/app/services/api.service';

@Component({
  selector: 'app-landing',
  templateUrl: './landing.component.html',
  styleUrls: ['./landing.component.scss']
})
export class LandingComponent implements OnInit {

  public formSended:boolean = false;
  landingForm:FormGroup;

  constructor( 
    public form:FormBuilder, 
    private leadService:ApiService
    ) {
    this.landingForm = this.form.group({
      name: ['', Validators.compose([
        Validators.required,
        Validators.pattern('^(?=.*[a-zA-Z])[a-zA-Z0-9]+$')
      ])],
      nit: ['', Validators.required],
      place: ['', Validators.pattern('^(?=.*[a-zA-Z])[a-zA-Z0-9]+$')],
      team: ['', Validators.pattern('^(?=.*[a-zA-Z])[a-zA-Z0-9]+$')],
      city: ['', Validators.pattern('^(?=.*[a-zA-Z])[a-zA-Z0-9]+$')],
      promotor: ['', Validators.pattern('^(?=.*[a-zA-Z])[a-zA-Z0-9]+$')],
      rtc: [''],
      captain: ['', Validators.pattern('^(?=.*[a-zA-Z])[a-zA-Z0-9]+$')],
      checked: ['', Validators.required],
      siteDate: ['']
    })

   }

  ngOnInit(): void {
  }

  getAllLeads() {
    this.leadService.getLeads()
    .subscribe(leads => {
      console.log(leads);
    });
  }

  get controls() {
    return this.landingForm.controls;
  }

  send() {
    this.formSended = true;
    this.getAllLeads();
    this.leadService.addLead(this.landingForm.value).subscribe(); 
  }

}
