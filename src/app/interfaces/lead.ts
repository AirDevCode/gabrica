export interface Lead {
  name:string;
  nit:string;
  place?:string;
  team?:string;
  city?:string;
  promotor?:string;
  rtc?:number;
  captain?:string;
  terms?: boolean;
  date?:string;
}