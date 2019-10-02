Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DADCAC4936
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2019 10:10:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727578AbfJBIKW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Oct 2019 04:10:22 -0400
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77]:39452 "EHLO
        mx0a-00128a01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726137AbfJBIKV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Oct 2019 04:10:21 -0400
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
        by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id x92885SC027752;
        Wed, 2 Oct 2019 04:09:02 -0400
Received: from nam03-dm3-obe.outbound.protection.outlook.com (mail-dm3nam03lp2059.outbound.protection.outlook.com [104.47.41.59])
        by mx0a-00128a01.pphosted.com with ESMTP id 2va1c949yp-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Wed, 02 Oct 2019 04:09:02 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SE8EMSvE4W3SytNJF0aUG64855+1x+nv9awwMcfEAdlNwmmOAjigEy59yW7GEOe5nTvCkswPBLPNDIlg9DDHBY21iLEZqDnFHJD99SIQzTTnn0NxW+bxwLy++rrHbzurPgJErFl+eZyHJyXaaLs+jv5gTYWrSVj7y6/Q6L6kNuvJBWrdECKHHaNq58qPkrTTXGphPBaEgeTso7W0RfhwadDtBQ4ukfOHcQVQNTAzoAH0TxQDGIdDA1IhRgR9+fRe6b5vCQ4iDZQcURKslhVfvZXKdu0aGdaW8H3tdiN3CvcZmU1BECO71vd2ypIbsiqV7TFmAfjeNdHZLIhl8ocGKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6BCNbydVJNpbFVbh//axpWKleRO/qQT3tTj+Ftwga2c=;
 b=IKOPV/8PPUIhVQ2Pzrr/CkbUMuSKtOcJTieh3Al93onqKzeWJu+xCE+tcgDCJ58dpJ949xTvyFk0wfy2fc6ndGF9pyynS9kZTQs11oIhKFTs7ZbGFUtHALvJ0KLSdWKrTgQcBHbbBXdAp7zMMp+mo8HyQEym8BgAXQIf+6njB5Vz+omURMLAeIJrn413bnfDFoK/BhrJvLBu1xWY1xxWZWqjmjEVHhhMi99lczpsuYhGyBZto10lHWK/bqt55GTDMNFcP+3trWTMSCkaYD8h5YMZVnImVUzzk4QipGXg97TWdl2OtMkFzzthGJe1U9ncr1C53v4BmyCWZMS+0ukXOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6BCNbydVJNpbFVbh//axpWKleRO/qQT3tTj+Ftwga2c=;
 b=VQBE6RUVczemBfGIEJaY3Y9A4iMSB/BCYIaOrjlJyNoPFR+2zFvB46/n7z7vlq537gbId4PTj6T4xiloacc8Lcxxgssm/tnYCJi/lCs+L+5BEIXxO85RdmhxHM1Ej2YmLWtywqBip7wLonUdvPTE9nX/V30xuY1o95ECDHWAszY=
Received: from MN2PR03MB5117.namprd03.prod.outlook.com (52.132.171.137) by
 MN2PR03MB4751.namprd03.prod.outlook.com (20.179.83.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Wed, 2 Oct 2019 08:09:00 +0000
Received: from MN2PR03MB5117.namprd03.prod.outlook.com
 ([fe80::6006:4c13:a8c1:b359]) by MN2PR03MB5117.namprd03.prod.outlook.com
 ([fe80::6006:4c13:a8c1:b359%4]) with mapi id 15.20.2305.023; Wed, 2 Oct 2019
 08:09:00 +0000
From:   "Sa, Nuno" <Nuno.Sa@analog.com>
To:     "broonie@kernel.org" <broonie@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "lars@metafoo.de" <lars@metafoo.de>,
        "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
        "tiwai@suse.com" <tiwai@suse.com>,
        "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "perex@perex.cz" <perex@perex.cz>
Subject: Re: [PATCH 1/2] ASOC: Add ADAU7118 8 Channel PDM-to-I2S/TDM Converter
 driver
Thread-Topic: [PATCH 1/2] ASOC: Add ADAU7118 8 Channel PDM-to-I2S/TDM
 Converter driver
Thread-Index: AQHVdJpKDYg2bk+VvkSIGNv9o2+YhKdD/hYAgABbZACAAq67AA==
Date:   Wed, 2 Oct 2019 08:09:00 +0000
Message-ID: <d3d406312a7b66f7d373b509faaab305adb8af36.camel@analog.com>
References: <20190926071707.17557-1-nuno.sa@analog.com>
         <20190926184318.GF2036@sirena.org.uk>
         <6245f99f37c10dcec0a52344bab4b980f08e07da.camel@analog.com>
         <20190930151132.GA4265@sirena.co.uk>
In-Reply-To: <20190930151132.GA4265@sirena.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d2e1b738-5033-462d-24db-08d7470fc85d
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR03MB4751:
x-microsoft-antispam-prvs: <MN2PR03MB47512FECE0D2B3EC2567A1F4999C0@MN2PR03MB4751.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0178184651
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(396003)(39860400002)(366004)(136003)(346002)(376002)(199004)(189003)(99286004)(2906002)(5660300002)(2351001)(486006)(6512007)(229853002)(6486002)(6436002)(4326008)(86362001)(5640700003)(6246003)(256004)(118296001)(14444005)(8676002)(305945005)(1730700003)(81156014)(81166006)(102836004)(7736002)(6506007)(71200400001)(71190400001)(54906003)(36756003)(76176011)(64756008)(26005)(66476007)(66556008)(66946007)(76116006)(66066001)(8936002)(91956017)(66446008)(2616005)(25786009)(316002)(476003)(11346002)(2501003)(446003)(6116002)(14454004)(3846002)(6916009)(186003)(478600001);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR03MB4751;H:MN2PR03MB5117.namprd03.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pjLSHBJvU50DcMIbkguhK+wDquTQl6OiYfLTuPr8tbq7UW7yJizOxQl/lNj0yZ++OEIZob0xnqlG/lHQJg7aIXRqV/hTx5vpN40a8NbrsA2Ovq9EX2rh6qYuhzmWwN6bYrafb/R24gLAST4g4m4Dkq28JUOCHFZ0rTQoOm7yA65icZR5WITZQYvzLQhphYbW8hh3D2ZE68lOc3td4VCBYssBpIhsyO1Y+cc5tOwtj7HzKQPVT6ALKe5IdKJTgLIo4/ThXlOxptbLNjSwSEa5V18X69FiOoM2beq85rX/45hvlEsP3vlS+PVuzw1cvKwMMVx7Y85Lysuz1c5pCkSZMQ9Yi7D8RnufCOGN0NbAEwVLy7TI42R5L0BxJzAGxffVBj/a8zuDPEfz+Bvu5f7+FU6aq6UFO0GYeDP4T45yqy8=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <9D81B9BF81E81044B19DAE2DB431C1A8@namprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2e1b738-5033-462d-24db-08d7470fc85d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2019 08:09:00.6942
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VF7XqgLQ9tgta5imWgmLGgd7fuHYqXeUmM3bWHptAxRqhJQevMB4XJGlFODmpPfDUubO2Mgd1FZKzowWlnVoLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR03MB4751
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-02_04:2019-10-01,2019-10-02 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 clxscore=1015
 spamscore=0 malwarescore=0 suspectscore=0 phishscore=0 mlxscore=0
 adultscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 mlxlogscore=847 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1910020077
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gTW9uLCAyMDE5LTA5LTMwIGF0IDE2OjExICswMTAwLCBNYXJrIEJyb3duIHdyb3RlOg0KPiAN
Cj4gT24gTW9uLCBTZXAgMzAsIDIwMTkgYXQgMDk6NDQ6MDBBTSArMDAwMCwgU2EsIE51bm8gd3Jv
dGU6DQo+ID4gT24gVGh1LCAyMDE5LTA5LTI2IGF0IDExOjQzIC0wNzAwLCBNYXJrIEJyb3duIHdy
b3RlOg0KPiA+ID4gPiArCWNhc2UgU05EX1NPQ19EQUlGTVRfUklHSFRfSjoNCj4gPiA+ID4gKwkJ
c3QtPnJpZ2h0X2ogPSB0cnVlOw0KPiA+ID4gPiArCQlicmVhazsNCj4gPiA+IERvbid0IHdlIG5l
ZWQgdG8gc2V0IGFueSByZWdpc3RlciB2YWx1ZXMgaGVyZT8NCj4gPiBUaGUgcmVnaXN0ZXIgc2V0
IGlzIGRvbmUgaW4gYWRhdTcxMThfaHdfcGFyYW1zKCkuIEZvciByaWdodA0KPiA+IGp1c3RpZmlj
YXRpb24gdGhlIGRldmljZSBjYW4gZGVsYXkgYmNsY2sgYnkgOCwgMTIgb3IgMTYuIFNvLCBXZQ0K
PiA+IG5lZWQgdG8NCj4gPiBrbm93IHRoZSBkYXRhX3dpZHRoIHRvIGNoZWNrIGlmIHdlIGNhbiBh
cHBseSB0aGUgY29uZmlndXJhdGlvbi4NCj4gDQo+IE9LLg0KPiANCj4gPiA+ID4gKwljYXNlIFNO
RF9TT0NfQklBU19TVEFOREJZOg0KPiA+ID4gPiArCQlpZiAoc25kX3NvY19jb21wb25lbnRfZ2V0
X2JpYXNfbGV2ZWwoY29tcG9uZW50KQ0KPiA+ID4gPiA9PQ0KPiA+ID4gPiArCQkJCQkJCVNORF9T
T0MNCj4gPiA+ID4gX0JJQVNfT0YNCj4gPiA+ID4gRikgew0KPiA+ID4gPiArCQkJaWYgKCFzdC0+
aW92ZGQpDQo+ID4gPiA+ICsJCQkJcmV0dXJuIDA7DQo+ID4gPiBUaGlzIGlzIGJyb2tlbiwgdGhl
IGRldmljZSB3aWxsIGFsd2F5cyByZXF1aXJlIHBvd2VyIHNvIGl0IHNob3VsZA0KPiA+ID4gYWx3
YXlzIGNvbnRyb2wgdGhlIHJlZ3VsYXRvcnMuDQo+ID4gVGhlIHJlYXNvbiB3aHkgSSBtYWRlIHRo
aXMgb3B0aW9uYWwgd2FzIHRvIGxldCB0aGUgdXNlciBhc3N1bWUNCj4gPiB0aGF0LCBpbg0KPiA+
IHNvbWUgY2FzZXMsIHRoZSBzdXBwbHkgY2FuIGJlIGFsd2F5cyBwcmVzZW50IChhbmQgbm90IGNv
bnRyb2xsZWQgYnkNCj4gPiB0aGUNCj4gPiBrZXJuZWwpIGFuZCwgaW4gdGhvc2UgY2FzZXMsIGhl
IHdvdWxkIG5vdCBoYXZlIHRvIGNhcmUgYWJvdXQgZ2l2aW5nDQo+ID4gcmVndWxhdG9ycyBub2Rl
cyBpbiBkZXZpY2V0cmVlLiBGdXJ0aGVybW9yZSwgdGhlIGRyaXZlciB3b3VsZCBub3QNCj4gPiBo
YXZlDQo+IA0KPiBIYXZlIHlvdSB0cmllZCBkb2luZyB0aGF0PyAgTm90aWNlIGhvdyB0aGUgcmVn
dWxhdG9yIEFQSSBzdWJ0aXR1dGVzDQo+IGluIGENCj4gZHVtbXkgcmVndWxhdG9yIGZvciB5b3Ug
YW5kIHRoZSBkcml2ZXIgd29ya3MgZmluZSB3aXRob3V0IGN1c3RvbQ0KPiBjb2RlLg0KDQpPaywg
Z290IGl0LiBMb29raW5nIGF0IGBfcmVndWxhdG9yX2dldGAgSSBjYW4gc2VlIHRoYXQgYSBkdW1t
eQ0KcmVndWxhdG9yIGlzIHByb3ZpZGVkLCB3aGVuIGBOT1JNQUxfR0VUYCBpcyB1c2VkLCBldmVu
IGlmIG9uZSB3YXMgbm90DQpnaXZlbi4gU28gSSB0aGluayBJIGdldCBub3cgdGhlIHVzYWdlIG9m
DQpgZGV2bV9yZWd1bGF0b3JfZ2V0X29wdGlvbmFsYC4gIEFzIHlvdSBzYWlkLCBzdXBwbHkgdm9s
dGFnZXMgYXJlIG5vdA0Kb3B0aW9uYWwsIHRoZSBvcHRpb25hbCBfZ2V0XyBzaG91bGQgYmUgdXNl
ZCBmb3IgdGhpbmdzIHRoYXQgYXJlIHJlYWxseQ0Kb3B0aW9uYWwgbGlrZSBzb21lIHBhcnRzIHRo
YXQgY2FuIHVzZSBleHRlcm5hbCB2cyBpbnRlcm5hbCB2cmVmLg0KDQo+ID4gdG8gY2FyZSBhYm91
dCBlbmFibGluZy9kaXNhYmxpbmcgIHJlZ3VsYXRvcnMuIElzIHRoaXMgbm90IGEgdmFsaWQNCj4g
PiBzY2VuYXJpbz8gT3IgaXMgaXQgdGhhdCwgZm9yIHRoaXMga2luZCBvZiBkZXZpY2VzIGl0IGRv
ZXMgbm90DQo+ID4gcmVhbGx5DQo+IA0KPiBJdCdzIG5vdCBhIHZhbGlkIHNjZW5hcmlvIGluIGRy
aXZlciBjb2RlIC0gdGhlIGRyaXZlciBzaG91bGRuJ3QgYmUNCj4gcmFuZG9tbHkgaWdub3Jpbmcg
ZXJyb3JzIGFuZCBob3BpbmcgdGhlIGVycm9ycyB3ZXJlIGRlbGliZXJhdGUgcmF0aGVyDQo+IHRo
YW4gaW5kaWNpYXRpb25zIG9mIHJlYWwgcHJvYmxlbXMuDQo+IA0KPiA+ID4gPiArc3RhdGljIGlu
dCBhZGF1NzExOF9yZXN1bWUoc3RydWN0IHNuZF9zb2NfY29tcG9uZW50DQo+ID4gPiA+ICpjb21w
b25lbnQpDQo+ID4gPiA+ICt7DQo+ID4gPiA+ICsJcmV0dXJuIHNuZF9zb2NfY29tcG9uZW50X2Zv
cmNlX2JpYXNfbGV2ZWwoY29tcG9uZW50LA0KPiA+ID4gPiArCQkJCQkJICBTTkRfU09DX0JJQVNf
DQo+ID4gPiA+IFNUQU5EQlkpDQo+ID4gPiA+IDsNCj4gPiA+ID4gK30NCj4gPiA+IExldCBEQVBN
IGRvIHRoaXMgZm9yIHlvdSwgdGhlcmUncyBubyBzdWJzdGFudGlhbCBkZWxheXMgb24gcG93ZXIN
Cj4gPiA+IG9uIHNvIHlvdSdyZSBwcm9iYWJseSBiZXN0IGp1c3Qgc2V0dGluZyBpZGxlX2JpYXNf
b2ZmLg0KPiA+IFNvLCB0aGlzIG1lYW5zIGRyb3BwaW5nIHJlc3VtZS9zdXNwZW5kIGFuZCB0byBu
b3Qgc2V0IGlkbGVfYmlhc19vbiwNCj4gPiByaWdodD8NCj4gDQo+IFJpZ2h0LiAgTGlrZSBJIHNh
eSBpdCBsb29rcyBsaWtlIHlvdXIgcG93ZXIgdXAgcGF0aCBpcyBmYXN0IGVub3VnaA0KPiBmb3IN
Cj4gdGhpcy4NCj4gDQo+ID4gPiA+ICtzdGF0aWMgaW50IGFkYXU3MTE4X3JlZ3VsYXRvcl9zZXR1
cChzdHJ1Y3QgYWRhdTcxMThfZGF0YSAqc3QpDQo+ID4gPiA+ICt7DQo+ID4gPiA+ICsJaW50IHJl
dCA9IDA7DQo+ID4gPiA+ICsNCj4gPiA+ID4gKwlzdC0+aW92ZGQgPSBkZXZtX3JlZ3VsYXRvcl9n
ZXRfb3B0aW9uYWwoc3QtPmRldiwNCj4gPiA+ID4gIklPVkREIik7DQo+ID4gPiA+ICsJaWYgKCFJ
U19FUlIoc3QtPmlvdmRkKSkgew0KPiA+ID4gVW5sZXNzIHRoZSBkZXZpY2UgY2FuIG9wZXJhdGUg
d2l0aCBzdXBwbGllcyBwaHlzaWNhbGx5IGFic2VudCBpdA0KPiA+ID4gc2hvdWxkIG5vdCBiZSBy
ZXF1ZXN0aW5nIHJlZ3VsYXRvcnMgYXMgb3B0aW9uYWwsIHRoaXMgYnJlYWtzIHlvdXINCj4gPiA+
IGVycm9yIGhhbmRsaW5nIGVzcGVjaWFsbHkgd2l0aCBwcm9iZSBkZWZlcnJhbCB3aGljaCBpcyBh
IGZhaXJseQ0KPiA+ID4gY29tbW9uIGNhc2UuDQo+ID4gSnVzdCBmb3IgbXkgdW5kZXJzdGFuZGlu
ZyAobW9zdCBsaWtlbHkgSSdtIG1pc3Npbmcgc29tZXRoaW5nDQo+ID4gb2J2aW91cyksDQo+ID4g
d2h5IHdvdWxkIEkgaGF2ZSBpc3N1ZXMgd2l0aCB0aGUgZXJyb3IgaGFuZGxpbmcgaW4gcHJvYmUg
ZGVmZXJyYWw/DQo+IA0KPiBBY3R1YWxseSBpdCBkb2VzIGxvb2sgbGlrZSB5b3UgaGFuZGxlIHRo
aXMgY29ycmVjdGx5IGZ1cnRoZXIgZG93biwNCj4gdGhlDQo+IG5vcm1hbCBwYXR0ZXJuIHdvdWxk
IGhhdmUgYmVlbiB0byBoYXZlIHRoZSBlcnJvciBoYW5kbGluZyBpbnNpZGUgdGhlDQo+IGlmDQo+
IGhlcmUgYW5kIG5vdCBpbmRlbnQgdGhlIHJlc3Qgb2YgdGhlIHN1Y2Nlc3MgcGF0aCBzbyBJIG1p
c3JlYWQgaXQuDQoNCg==
