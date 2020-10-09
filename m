Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D0C20288B96
	for <lists+devicetree@lfdr.de>; Fri,  9 Oct 2020 16:39:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388910AbgJIOiG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Oct 2020 10:38:06 -0400
Received: from mga17.intel.com ([192.55.52.151]:6795 "EHLO mga17.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2388900AbgJIOiE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 9 Oct 2020 10:38:04 -0400
IronPort-SDR: 9yXcro+ESxJsUwopFk9qAxkN9miopnziE0qEEV3acalMtkMh/t0XKsOPC66ypNCUv7Ano3J+Qi
 iHOjqwO5XR+w==
X-IronPort-AV: E=McAfee;i="6000,8403,9768"; a="145356823"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; 
   d="scan'208";a="145356823"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2020 07:38:03 -0700
IronPort-SDR: d0a0+EWQ5gtfFFW1pHeufLMBtlZlMY3g0lqaEuQ18rT2gvu5/zzX5syuy941igw+z4AtlZYXjS
 2pJSo6cosmPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; 
   d="scan'208";a="419467291"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
  by fmsmga001.fm.intel.com with ESMTP; 09 Oct 2020 07:38:03 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 9 Oct 2020 07:38:02 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 9 Oct 2020 07:38:02 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 9 Oct 2020 07:38:02 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.55) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 9 Oct 2020 07:38:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DNlESGVRzacFbvth+n6nVdBICZGXmkGp4aPF/hEnc8EcJFlnsIQW+P80+mSSjrT2JxNi0027KUdq5iKJqBySMopDuC5GiHsfma15p8y+4nyiVPmBj89YvDgWaiNwQMEeqNrzqMibg9CEooE00re7UMrtYf/obrbJ8Fzvuc1dEL69eIZ34hY0KmmV+iT92xej28D8mM4dNLmbyj5wchLr0SQ6tl4cS9Id2AeIXw9AKMpE7Kr2EhrVJpFeVSq4eMKFCxFjtlPUTG4C26cwK2PfpW7sw8v+Uifp/HK3iWQgQ9XpadCLx1lCZzqL8D9yilVHnFH4WdnCBb2cpI0xidDWBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DllsKjt6dvS6wZpbB5CCqt477IFPmn6LSORJxDWL+cM=;
 b=kX/mRV7NGuJhfQrBrBIkEEMwhHQHrVaRy2f9DoeFRL3Ue3bnRDP3lah+3U8YnM87KsPAVAfdkvkUT1fkReqF3M55NHzAG4WLVcD7A8qEfBzUT06mLwe29buikQnC7vHk/0c00fk1IQzUQ65w1avBVe6qETYVLvz4lX7bWVWRH0vwJZxh6yuq3YhVYB21llIhkW+j4uicb1UIh1pRNMuhemkmji5/DY/OudFDLQsLoY2WU/uOCOHYUbebclwB8cUU3KRrIenLdB/0Vhju5kKOVSfOo5B8iTMm+hZw6aGn7fe9WuTZVxAcIGApSs7VgklrbfV1d3VyKygQTY3lTCAozg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DllsKjt6dvS6wZpbB5CCqt477IFPmn6LSORJxDWL+cM=;
 b=jy3endarTNSQZx9XevLRlh00dNd2kTRJaoh06tmcSFAKADtJyd1hfXpEfG+4FXv5CKF8vycwd0T4eTxZsA+2aaOAxcs2afZDIeqryFp1Rnz/A+6I8O/Ym0X2X6aerAFgEjRbAvvkF2QnGKrL7oguGUDdfAXYUJi7tlJ+sc1iymU=
Received: from BY5PR11MB4182.namprd11.prod.outlook.com (2603:10b6:a03:183::10)
 by BYAPR11MB2806.namprd11.prod.outlook.com (2603:10b6:a02:c7::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.38; Fri, 9 Oct
 2020 14:37:58 +0000
Received: from BY5PR11MB4182.namprd11.prod.outlook.com
 ([fe80::890d:4fb5:9d54:4de5]) by BY5PR11MB4182.namprd11.prod.outlook.com
 ([fe80::890d:4fb5:9d54:4de5%6]) with mapi id 15.20.3455.027; Fri, 9 Oct 2020
 14:37:58 +0000
From:   "Chrisanthus, Anitha" <anitha.chrisanthus@intel.com>
To:     Neil Armstrong <narmstrong@baylibre.com>,
        "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "Vetter, Daniel" <daniel.vetter@intel.com>
CC:     "Dea, Edmund J" <edmund.j.dea@intel.com>,
        "sam@ravnborg.org" <sam@ravnborg.org>
Subject: RE: [PATCH v9 1/5] dt-bindings: display: Add support for Intel
 KeemBay Display
Thread-Topic: [PATCH v9 1/5] dt-bindings: display: Add support for Intel
 KeemBay Display
Thread-Index: AQHWndgiYWw6xeqrr0Kdi1tw4Hng3amO/CuAgABasyA=
Date:   Fri, 9 Oct 2020 14:37:58 +0000
Message-ID: <BY5PR11MB41826EBE4463D81663607EA08C080@BY5PR11MB4182.namprd11.prod.outlook.com>
References: <1602205443-9036-1-git-send-email-anitha.chrisanthus@intel.com>
 <1602205443-9036-2-git-send-email-anitha.chrisanthus@intel.com>
 <dc12f5ea-60bc-8a09-9b93-a4472183adc4@baylibre.com>
In-Reply-To: <dc12f5ea-60bc-8a09-9b93-a4472183adc4@baylibre.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: baylibre.com; dkim=none (message not signed)
 header.d=none;baylibre.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [73.151.242.136]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d6528348-1735-4825-718d-08d86c60eae9
x-ms-traffictypediagnostic: BYAPR11MB2806:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB2806E31DF1803F342C96CC4B8C080@BYAPR11MB2806.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GcdVwAM9VertsdkNUxD5pxEkeCr9gBhFqtBqxyCTLW1z+rMXKJS//FnVH7222p02hveAsOJq9LRPMN6kAxDpgrhmbM6ya7jlC63Ob2zISb4K01/2du5IjIUVqkc7zvfcSJ+xW7Xe1KZsQSMGL0BrpeyGH1iaET6wA8kcUzHV49hDxJn23VBNkEO3qk7+l2yqWX8P2MDQIDq3MphTtCo66awvXUyoOIDpfLlSFjp8urh8VRzozYrigOpdAljSUvIu3yG+e+Iw5uSZApRKMUxPQdCjnxk5IYtD1YqRzJwDuONjEO0tJ2Sqdx1Jeeid3f5uwU5aA/YrIQ9EMM8fk1qRnkj9e7Bp5Km1dhLViQBIIe1jXrHqVVIRUTAuzVLE/8PhpAQECS39vpMQvKvBnU0tEg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB4182.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(136003)(366004)(396003)(39860400002)(346002)(53546011)(478600001)(2906002)(33656002)(86362001)(9686003)(186003)(76116006)(83380400001)(55016002)(4326008)(52536014)(54906003)(6506007)(8676002)(6636002)(83080400001)(71200400001)(7696005)(64756008)(316002)(5660300002)(26005)(66946007)(966005)(110136005)(66476007)(66556008)(66446008)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: aCnsZEd7KoMPWK59CW6/6Vh/omFyNhebGYmPQOiQGv5AxjFoH6s4llUnqo44SGEdFgFp754lwpYDGOZGj2GVhumiF8ruQ1pFLNx0xfIMjmZ4j7Hn1Xwmzmrypee0hcPAR5iEBGJFIcMYoMI0J6JAOxrl9lhSnOo6Y5DEzaXnfJRvrst9qb+sxEvcCWTPAd2egTh0S5Wjvm+ux4w0CVCX9yUtAxf0I+/+Dapt2kv7yxWF+kahuYI1pOeUvls3ZsnH3JUWnz6DSz0gnH/c/ZA8fVt0x/NFcZjv+jRL/oWdqRsggRoQ90MCqIo2eeC/FlKVAz3Ehb8HSPKmysAo7f60wUwpf8m27kgoPQQkA9Ibc97E22Z6FyUQfUL9yRXGNNF2zHBO0/WC+zsumijk14xD6YOMMR7kzA76dxYM2H7H0axwUBDM9yU1HKyiMrsfFt0fFm8/zdBKaRpdw0yXQhincoKxPSC7mEZJofZSpnqGKnPgn0xU5pNv8JKxyiKmh1VvxMQCYSRyGEMYuEWARiiQ2XxmfcGOZJXuNOLd0Wjw7dGeZGjqd1fBWcrbw70kfxm0FHupxQN0Z09CbWCHGSWFKdfMf8R3ZBr86W2R7i9jl6Q+XHs83NdfKEZQNxgbgOFrf6MrRHOfWAX26eJOwrEkKg==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6528348-1735-4825-718d-08d86c60eae9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2020 14:37:58.4424
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qb1qU1PZefLYjceUvx7KNMNSMROM2nha/bNO93s+R/40/f+8CGD8aKf+6VfErBhdSqKV7vPgfEmvBUtL71urqh45jic+pMsOaiZsiMcFjRc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2806
X-OriginatorOrg: intel.com
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmVpbCBBcm1zdHJvbmcg
PG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPg0KPiBTZW50OiBGcmlkYXksIE9jdG9iZXIgOSwgMjAy
MCAyOjEwIEFNDQo+IFRvOiBDaHJpc2FudGh1cywgQW5pdGhhIDxhbml0aGEuY2hyaXNhbnRodXNA
aW50ZWwuY29tPjsgZHJpLQ0KPiBkZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGRldmljZXRy
ZWVAdmdlci5rZXJuZWwub3JnOyBWZXR0ZXIsIERhbmllbA0KPiA8ZGFuaWVsLnZldHRlckBpbnRl
bC5jb20+DQo+IENjOiBEZWEsIEVkbXVuZCBKIDxlZG11bmQuai5kZWFAaW50ZWwuY29tPjsgc2Ft
QHJhdm5ib3JnLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY5IDEvNV0gZHQtYmluZGluZ3M6
IGRpc3BsYXk6IEFkZCBzdXBwb3J0IGZvciBJbnRlbA0KPiBLZWVtQmF5IERpc3BsYXkNCj4gDQo+
IEhpLA0KPiANCj4gT24gMDkvMTAvMjAyMCAwMzowMywgQW5pdGhhIENocmlzYW50aHVzIHdyb3Rl
Og0KPiA+IFRoaXMgcGF0Y2ggYWRkcyBiaW5kaW5ncyBmb3IgSW50ZWwgS2VlbUJheSBEaXNwbGF5
DQo+ID4NCj4gPiB2MjogcmV2aWV3IGNoYW5nZXMgZnJvbSBSb2IgSGVycmluZw0KPiA+DQo+ID4g
U2lnbmVkLW9mZi1ieTogQW5pdGhhIENocmlzYW50aHVzIDxhbml0aGEuY2hyaXNhbnRodXNAaW50
ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAuLi4vYmluZGluZ3MvZGlzcGxheS9pbnRlbCxrZWVtYmF5
LWRpc3BsYXkueWFtbCAgICB8IDk5DQo+ICsrKysrKysrKysrKysrKysrKysrKysNCj4gPiAgMSBm
aWxlIGNoYW5nZWQsIDk5IGluc2VydGlvbnMoKykNCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0DQo+
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2ludGVsLGtlZW1iYXkt
ZGlzcGxheS55YW1sDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2Rpc3BsYXkvaW50ZWwsa2VlbWJheS0NCj4gZGlzcGxheS55YW1sIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvaW50ZWwsa2VlbWJheS0NCj4g
ZGlzcGxheS55YW1sDQo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4gPiBpbmRleCAwMDAwMDAw
Li5hMzg0OTNkDQo+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2ludGVsLGtlZW1iYXktDQo+IGRpc3BsYXkueWFtbA0K
PiA+IEBAIC0wLDAgKzEsOTkgQEANCj4gPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BM
LTIuMC1vbmx5DQo+ID4gKyVZQU1MIDEuMg0KPiA+ICstLS0NCj4gPiArJGlkOiBodHRwOi8vZGV2
aWNldHJlZS5vcmcvc2NoZW1hcy9kaXNwbGF5L2ludGVsLGtlZW1iYXktDQo+IGRpc3BsYXkueWFt
bCMNCj4gPiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3Jl
LnlhbWwjDQo+ID4gKw0KPiA+ICt0aXRsZTogRGV2aWNldHJlZSBiaW5kaW5ncyBmb3IgSW50ZWwg
S2VlbSBCYXkgZGlzcGxheSBjb250cm9sbGVyDQo+ID4gKw0KPiA+ICttYWludGFpbmVyczoNCj4g
PiArICAtIEFuaXRoYSBDaHJpc2FudGh1cyA8YW5pdGhhLmNocmlzYW50aHVzQGludGVsLmNvbT4N
Cj4gPiArICAtIEVkbW9uZCBKIERlYSA8ZWRtdW5kLmouZGVhQGludGVsLmNvbT4NCj4gPiArDQo+
ID4gK3Byb3BlcnRpZXM6DQo+ID4gKyAgY29tcGF0aWJsZToNCj4gPiArICAgIGNvbnN0OiBpbnRl
bCxrbWJfZGlzcGxheQ0KPiA+ICsNCj4gPiArICByZWc6DQo+ID4gKyAgICBpdGVtczoNCj4gPiAr
ICAgICAgLSBkZXNjcmlwdGlvbjogTGNkIHJlZ2lzdGVycyByYW5nZQ0KPiA+ICsgICAgICAtIGRl
c2NyaXB0aW9uOiBNaXBpIHJlZ2lzdGVycyByYW5nZQ0KPiANCj4gTG9va2luZyBhdCB0aGUgcmVn
aXN0ZXJzLCB0aGUgTUlQSSB0cmFuc2NlaXZlciBzZWVtcyB0byBiZSBhIHNlcGFyYXRlIElQLA0K
PiBzYW1lIGZvciBELVBIWSB3aGljaCBzaG91bGQgaGF2ZSBhIHByb3BlciBQSFkgZHJpdmVyIGlu
c3RlYWQgb2YgYmVlaW5nDQo+IGhhbmRsZWQNCj4gaGVyZS4NCk1pcGkgaXMgbm90IGEgc2VwYXJh
dGUgSVAsIGl0IGlzIGFsbCBwYXJ0IG9mIG9uZSBzdWIgc3lzdGVtIGluIHRoZSBJbnRlbCBNb3Zp
ZGl1cyBTb2MuDQo+IA0KPiA+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBNc3NjYW0gcmVnaXN0ZXJz
IHJhbmdlDQo+IA0KPiBNU1NjYW0gaGVyZSBzZWVtcyB0byBiZSBhIGNsb2NrIGFuZCByZXNldCBj
b250cm9sbGVyIGZvciB0aGUgTENEIGFuZCBNSVBJDQo+IElQcywNCj4gdGh1cyBzaG91bGQgYmUg
aGFuZGxlciBvdXQgb2YgRFJNLg0KPiANCj4gPiArDQo+ID4gKyAgcmVnLW5hbWVzOg0KPiA+ICsg
ICAgaXRlbXM6DQo+ID4gKyAgICAgIC0gY29uc3Q6IGxjZA0KPiA+ICsgICAgICAtIGNvbnN0OiBt
aXBpDQo+ID4gKyAgICAgIC0gY29uc3Q6IG1zc2NhbQ0KPiA+ICsNCj4gPiArICBjbG9ja3M6DQo+
ID4gKyAgICBpdGVtczoNCj4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogTENEIGNvbnRyb2xsZXIg
Y2xvY2sNCj4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogTWlwaSBEU0kgY2xvY2sNCj4gPiArICAg
ICAgLSBkZXNjcmlwdGlvbjogTWlwaSBEU0kgZWNvbmZpZyBjbG9jaw0KPiA+ICsgICAgICAtIGRl
c2NyaXB0aW9uOiBNaXBpIERTSSBjb25maWcgY2xvY2sNCj4gPiArICAgICAgLSBkZXNjcmlwdGlv
bjogU3lzdGVtIGNsb2NrIG9yIHBsbDAgY2xvY2sNCj4gPiArDQo+ID4gKyAgY2xvY2stbmFtZXM6
DQo+ID4gKyAgICBpdGVtczoNCj4gPiArICAgICAgLSBjb25zdDogY2xrX2xjZA0KPiA+ICsgICAg
ICAtIGNvbnN0OiBjbGtfbWlwaQ0KPiA+ICsgICAgICAtIGNvbnN0OiBjbGtfbWlwaV9lY2ZnDQo+
ID4gKyAgICAgIC0gY29uc3Q6IGNsa19taXBpX2NmZw0KPiA+ICsgICAgICAtIGNvbnN0OiBjbGtf
cGxsMA0KPiA+ICsNCj4gPiArICBpbnRlcnJ1cHRzOg0KPiA+ICsgICAgbWF4SXRlbXM6IDENCj4g
PiArDQo+ID4gKyAgZW5jb2Rlci1zbGF2ZToNCj4gPiArICAgIGRlc2NyaXB0aW9uOiBicmlkZ2Ug
bm9kZSBlbnRyeSBmb3IgbWlwaSB0byBoZG1pIGNvbnZlcnRlcg0KPiA+ICsNCj4gPiArICBwb3J0
Og0KPiA+ICsgICAgdHlwZTogb2JqZWN0DQo+ID4gKyAgICBkZXNjcmlwdGlvbjogPg0KPiA+ICsg
ICAgICAgICAgUG9ydCBub2RlIHdpdGggb25lIGVuZHBvaW50IGNvbm5lY3RlZCB0byBtaXBpIHRv
IGhkbWkgY29udmVydGVyDQo+IG5vZGUuDQo+ID4gKw0KPiA+ICtyZXF1aXJlZDoNCj4gPiArICAt
IGNvbXBhdGlibGUNCj4gPiArICAtIHJlZw0KPiA+ICsgIC0gcmVnLW5hbWVzDQo+ID4gKyAgLSBj
bG9ja3MNCj4gPiArICAtIGNsb2NrLW5hbWVzDQo+ID4gKyAgLSBpbnRlcnJ1cHRzDQo+ID4gKyAg
LSBlbmNvZGVyLXNsYXZlDQo+ID4gKyAgLSBwb3J0DQo+ID4gKw0KPiA+ICthZGRpdGlvbmFsUHJv
cGVydGllczogZmFsc2UNCj4gPiArDQo+ID4gK2V4YW1wbGVzOg0KPiA+ICsgIC0gfA0KPiA+ICsg
ICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2lycS5oPg0KPiA+
ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMu
aD4NCj4gPiArICAgICNkZWZpbmUgTU9WSVNPQ19LTUJfTVNTX0FVWF9MQ0QNCj4gPiArICAgICNk
ZWZpbmUgTU9WSVNPQ19LTUJfTVNTX0FVWF9NSVBJX1RYMA0KPiA+ICsgICAgI2RlZmluZSBNT1ZJ
U09DX0tNQl9NU1NfQVVYX01JUElfRUNGRw0KPiA+ICsgICAgI2RlZmluZSBNT1ZJU09DX0tNQl9N
U1NfQVVYX01JUElfQ0ZHDQo+ID4gKyAgICAjZGVmaW5lIE1PVklTT0NfS01CX0E1M19QTExfMF9P
VVRfMA0KPiA+ICsgICAgZGlzcGxheUAyMDkwMDAwMCB7DQo+ID4gKyAgICAgIGNvbXBhdGlibGUg
PSAiaW50ZWwsa2VlbWJheS1kaXNwbGF5IjsNCj4gPiArICAgICAgcmVnID0gPDB4MjA5MzAwMDAg
MHgzMDAwPiwNCj4gPiArICAgICAgICAgICAgPDB4MjA5MDAwMDAgMHg0MDAwPiwNCj4gPiArICAg
ICAgICAgICAgPDB4MjA5MTAwMDAgMHgzMD47DQo+ID4gKyAgICAgIHJlZy1uYW1lcyA9ICJsY2Qi
LCAibWlwaSIsICJtc3NjYW0iOw0KPiA+ICsgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMzMg
SVJRX1RZUEVfTEVWRUxfSElHSD47DQo+ID4gKyAgICAgIGNsb2NrcyA9IDwmc2NtaV9jbGsgTU9W
SVNPQ19LTUJfTVNTX0FVWF9MQ0Q+LA0KPiA+ICsgICAgICAgICAgICAgICA8JnNjbWlfY2xrIE1P
VklTT0NfS01CX01TU19BVVhfTUlQSV9UWDA+LA0KPiA+ICsgICAgICAgICAgICAgICA8JnNjbWlf
Y2xrIE1PVklTT0NfS01CX01TU19BVVhfTUlQSV9FQ0ZHPiwNCj4gPiArICAgICAgICAgICAgICAg
PCZzY21pX2NsayBNT1ZJU09DX0tNQl9NU1NfQVVYX01JUElfQ0ZHPiwNCj4gPiArICAgICAgICAg
ICAgICAgPCZzY21pX2NsayBNT1ZJU09DX0tNQl9BNTNfUExMXzBfT1VUXzA+Ow0KPiA+ICsgICAg
ICBjbG9jay1uYW1lcyA9ICJjbGtfbGNkIiwgImNsa19taXBpIiwgImNsa19taXBpX2VjZmciLA0K
PiA+ICsgICAgICAgICAgICAgICAgICAgICJjbGtfbWlwaV9jZmciLCAiY2xrX3BsbDAiOw0KPiA+
ICsNCj4gPiArICAgICAgZW5jb2Rlci1zbGF2ZSA9IDwmYWR2NzUzNT47DQo+ID4gKw0KPiA+ICsg
ICAgICBwb3J0IHsNCj4gPiArICAgICAgICAgICAgZHNpX291dHB1dDogZW5kcG9pbnQgew0KPiA+
ICsgICAgICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZhZHY3NTM1X2lucHV0PjsNCj4g
PiArICAgICAgICAgICAgfTsNCj4gPiArICAgICAgfTsNCj4gPiArICAgIH07DQo+ID4NCj4gDQo+
IEFuaXRoYSwgRGFuaWVsLCB0aGlzIGtlZW1iYXkgZHJpdmVyIHNob3VsZCBiZSBhcmNoaXRlY3R1
cmVkIGxpa2Ugb3RoZXIgQVJNLQ0KPiBsaWtlIGRpc3BsYXkNCj4gY29udHJvbGxlcnMsIHdpdGgg
c2VwYXJhdGUgZHJpdmVycyBmb3IgTUlQSSBEU0kgYnJpZGdlIGFuZCBtc3NjYW0gY2xvY2sgJg0K
PiByZXNldCBjb250cm9sbGVyLg0KDQo+IE5laWwNCg==
