import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Lead } from '../interfaces/lead';

@Injectable({
  providedIn: 'root'
})
export class ApiService {
  
private api:string='http:/localhost/leads'
  constructor(private http:HttpClient) { }

  getLeads() {
    return this.http.get<Lead[]>(this.api+"?read=1");
  }

  addLead(data:Lead):Observable<any>{
    return this.http.post(this.api+"?insert=1",data);
  } 
}
