Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E4A62CE6F3
	for <lists+devicetree@lfdr.de>; Fri,  4 Dec 2020 05:10:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726360AbgLDEKb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Dec 2020 23:10:31 -0500
Received: from mga11.intel.com ([192.55.52.93]:25884 "EHLO mga11.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726038AbgLDEKb (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 3 Dec 2020 23:10:31 -0500
IronPort-SDR: 7JXuduQQCk7hUfMcT53JVoVDxmeF6+uHI1xf7VWGutPzock87f1m7kU7xR7KB4khk5X4sS9eYK
 g1lAJffqNnfA==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="169819356"
X-IronPort-AV: E=Sophos;i="5.78,391,1599548400"; 
   d="scan'208";a="169819356"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Dec 2020 20:09:48 -0800
IronPort-SDR: PVFtRrtS7k9yRaMJEXEAY9KnGmqBUADfs/gs8Blu4eJRiLWPIyHY/945TmXW6paOXw3V65KvBP
 OfDTIhHdOx2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,391,1599548400"; 
   d="scan'208";a="368688011"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by fmsmga002.fm.intel.com with ESMTP; 03 Dec 2020 20:09:48 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 3 Dec 2020 20:09:48 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 3 Dec 2020 20:09:48 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 3 Dec 2020 20:09:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RP5cuRkkrxr/jZfMNs9XkmPpnzoTjQ61p8cXnd68RYCKHw0OPa9K4esMLroVAtgjNkyx8tMc6PF910Id6yC/eqqWWsWPXc4OBjTp8z1rcN8v0CyxzZX6+D9QMaUzMGgM89Kvgl+krqJ8jfdsB0YfTdU6YdkPl/TgQREVi6tMkOQe3PU+jMiC331Xj80hA31niNBKUDS+s4u9UQZceABO7LJVKnmTWhU1I9t+KaEIQSAJ373Ba25vh5Qy0utJCNKXutrG7M2cGWs3CcrNh0N/vUhRTGOT8Ij9H117Y0f46QkX6ZS48b+Do/FsjEwx8NakF6LtzX0WwmQL1xQNhzMdsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E8OiMD8Dhm90dwKfjUCXHuoTCEZJtW9ssiluv5QEUjw=;
 b=AVpfvEz0/HyFx592Vh61oo1l+H9F+G81d9kBHmBRJMVexLbOLKeDTEIrOPcg9OJfCVuaXEeCWPIXXT22VgMmlX8wtFf2ylYzuEG7PQnuS+wZDjBohnUSX46JDS+Tz8XGhZhxw2hazoOOy2bw/zwtlcmGW5qUAuqNST1lQMSQhv+1l3S+4JqDXZPmdvtdkriuI79rcqdl9d+TiS5Lk2mYD97tgWZtjCjYZX7AksiYXWBkkwzSS0LG2+RVF7p7xA93/CtL0M5zHuNz1JQQ2Mb2P03WkUV/vzGfW0ffO17jt531ekUBgnN9ZVIBBNmx6ab0TPXmXahlDcTuU/iQlGan+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E8OiMD8Dhm90dwKfjUCXHuoTCEZJtW9ssiluv5QEUjw=;
 b=OTji0SrJ4iXzUTyJIBbkz8hfqSi/tf4WJaoVhjrbCYYY9fDzAbjDSieckAIM2x8Nr3xpitrCyYxJIhVFO4FXkCyVc5hw5frhMjUQTWSc299tyedmH7fiFyaPbxA7sQ32sWFZIgAkQyvuJUURhMp0TC3WtMw2gtUxXI8M4n9IDk4=
Received: from DM6PR11MB4250.namprd11.prod.outlook.com (2603:10b6:5:1df::18)
 by DM6PR11MB2635.namprd11.prod.outlook.com (2603:10b6:5:c5::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.18; Fri, 4 Dec
 2020 04:09:47 +0000
Received: from DM6PR11MB4250.namprd11.prod.outlook.com
 ([fe80::b90d:d053:9de6:e5ef]) by DM6PR11MB4250.namprd11.prod.outlook.com
 ([fe80::b90d:d053:9de6:e5ef%4]) with mapi id 15.20.3632.021; Fri, 4 Dec 2020
 04:09:47 +0000
From:   "Ayyathurai, Vijayakannan" <vijayakannan.ayyathurai@intel.com>
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        "tglx@linutronix.de" <tglx@linutronix.de>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "andriy.shevchenko@linux.intel.com" 
        <andriy.shevchenko@linux.intel.com>,
        "mgross@linux.intel.com" <mgross@linux.intel.com>,
        "Wan Mohamad, Wan Ahmad Zainie" 
        <wan.ahmad.zainie.wan.mohamad@intel.com>,
        "Raja Subramanian, Lakshmi Bai" 
        <lakshmi.bai.raja.subramanian@intel.com>
Subject: RE: [PATCH v1 2/2] clocksource: Add Intel Keem Bay Timer Support
Thread-Topic: [PATCH v1 2/2] clocksource: Add Intel Keem Bay Timer Support
Thread-Index: AQHWw8trFNda2NFazkOPZscVb3Q9mqnlt2YAgACmBpA=
Date:   Fri, 4 Dec 2020 04:09:47 +0000
Message-ID: <DM6PR11MB42509AD34ADD26A867A88849FBF10@DM6PR11MB4250.namprd11.prod.outlook.com>
References: <cover.1606377035.git.vijayakannan.ayyathurai@intel.com>
 <cf19c720505c5388ae1b73398a65ee8a5f447c38.1606377035.git.vijayakannan.ayyathurai@intel.com>
 <9b271b05-963e-57bb-af9d-1b7910514c16@linaro.org>
In-Reply-To: <9b271b05-963e-57bb-af9d-1b7910514c16@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [42.106.176.240]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7aad4872-8ad0-4758-625c-08d8980a7075
x-ms-traffictypediagnostic: DM6PR11MB2635:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB263515BF74CE2A0D42335EA5FBF10@DM6PR11MB2635.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: amf6QkiEay7s4KDj4Poah/lrkuHNTuHbo2AwmnqHHY9/Vw618EGOx3+4B5GTmMy2nNhnJDQRyHC2KNpyo/LqZyGXMFeyH8Ehc8rBepDq+qByy1GU3oM1/YQ0swbQwxoHetkPXDpkxFLtSq1hwTB013bw2r1ASBz45SLvHZPNigxn5Q0+LdvKJZhG8LVEI7GiaJ2T6mkrwrQh/I9lfTxY/TZg5bnsNiQolocfpaS1uq8QnQWgFRC+DP7l87rxeDG22Mim3OiBy+swFIFhtwwmOmu7txb0CJUAs6zOS6aWvfWM1N5ocIYJc++UJatNjmyX
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4250.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(396003)(136003)(346002)(366004)(376002)(66556008)(64756008)(478600001)(110136005)(66446008)(8676002)(66946007)(66476007)(54906003)(7696005)(2906002)(52536014)(4326008)(33656002)(26005)(55016002)(6506007)(5660300002)(9686003)(316002)(8936002)(186003)(86362001)(76116006)(71200400001)(83380400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?utf-8?B?aktwK1A4cHVaNzlpclJqLytrdkdjWEg0WEs5TW1obkcyUVRHYWpCak9scm8y?=
 =?utf-8?B?U2JESExJS3BDQ0t2bllleExMQ1RPSFg4aDRKdkZpZUE0NTlZa1FhOTg0QSt1?=
 =?utf-8?B?T0JNS0dzSE9xRklNMjdNbGx5TmF6dE1rOUhtcUNCNnpQTVNWdlA5N2tJaTgz?=
 =?utf-8?B?c2FDOTRSOTZnTlBPNEM5RkxxbExsOUJrZkVXRzN2SHVwNEE2SjNFQWFHVGNE?=
 =?utf-8?B?bHFqSzVXQisrRjlramxiUGlYNzlwZ1dRMmhLSVc1TmU4Qnkrbk01V2MvYS91?=
 =?utf-8?B?eDZSd20rSStGWmhSR0pOc0NadWlRampJZEFsUTBEUHNJdC8yeE5QZHBDM2hE?=
 =?utf-8?B?MDlnMk1aMVNBK3FkUGJTd01EMlNGcnMzL012ZStnaGZpK3RmZDY1OWo2ZjNv?=
 =?utf-8?B?NVBHRVp5L2RzSVdXeFpoL05FdWxwUzhwcG5jUzhMV05sZndQS0h1dFlRK1c2?=
 =?utf-8?B?MnBRTERBZGpBSHJNRlBFUDFuUVRHQ3FwUFlGdTY4YzFwK01HMGZZK2pLQ2tn?=
 =?utf-8?B?WUtNck90ejk2TnB4WnRydVAxVDBQVHltc0dNNEphRWFLWHh2Y3o3V1p2eTJv?=
 =?utf-8?B?MjVYVGV1OW4yYVJDS3ovZUhzcHY1ZlBzUllhQUk1MVlXTndVVDBKU3R5dW8x?=
 =?utf-8?B?QWwxZ3BaMFZNVngxU3pydlhkSWlJNFgzQU9SbmFVZEJKSVZ5RWZtNE5BdFd4?=
 =?utf-8?B?bVVnejhvb2dsYjZISmVUWExWaktBbHBEakRPMlVsaVRwVElNb25Xd2VSTDRF?=
 =?utf-8?B?TE15UEJGVnUwQVRGR3dVYWtoY1l3TnZGTHV6eTNTU2x1TGVVRmZ5RXdBRldy?=
 =?utf-8?B?VWJjUU9YazZGRzJaTGMvYkM5QURpK2luSzUvai9MSGJodm9ic0Z3UlFFa3Ni?=
 =?utf-8?B?bUo2T3lBWTBCYkZ5bnh4V001WkI4MVNmV0FTV1grcEdSYVlBL3dpMndHc2w5?=
 =?utf-8?B?T1REMFZITC8rUEdCTTIyV2xYVHZzRXdYWnpwQ20rMDdERmhHd1huNmRkbmVX?=
 =?utf-8?B?RXVQUXBvamFWMGx0QkswazRzU1VUSmYrR3BpUDArMWVIOTB3SWFGZE5MVXR4?=
 =?utf-8?B?YytkZlI5a29QKzdMSzBpTlV0OU5VaUdBNTlac3VqYWhHTGZiUUNqMWVXMGFN?=
 =?utf-8?B?dTlaUmhxcjVqWG1zV0FMNEdqb0dVMzQ4aHpGQW9KOG96K2d1NXpJZVZDK2w4?=
 =?utf-8?B?MDdrdUVGVm10Z3NQVnpabkRtcVp5S3J6dEZabktKZ0Y4cGhmWitPV2F1K1E4?=
 =?utf-8?B?Q3ZmMWdWUmhaYkgzTnlIdkpJeEVHZS9sUzA5TnFTNG1RYkVwOGYyZFl1azkv?=
 =?utf-8?Q?XwMdqOeVC2HIg=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4250.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7aad4872-8ad0-4758-625c-08d8980a7075
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2020 04:09:47.5911
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UjYs0Jn9eHD+sA4Uo8lzdKQr/05/uGQF1cgZjKsrLweBRoHaBnS7v6p1rEhVMAzC4HImlAghfkPVm5hTh33C/eGr0Km3G815cXnsClngV1vHMVNi8QUPe5a19ozKIHvS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2635
X-OriginatorOrg: intel.com
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SGkgRGFuaWVsLA0KVGhhbmtzIGZvciByZXZpZXdpbmcgdGhpcyBwYXRjaC4NCg0KPiBGcm9tOiBE
YW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4NCj4gPg0KPiA+ICsrKyBi
L2RyaXZlcnMvY2xvY2tzb3VyY2UvS2NvbmZpZw0KPiA+IEBAIC03MzgsNCArNzM4LDE0IEBAIGNv
bmZpZyBNSUNST0NISVBfUElUNjRCDQo+ID4gIAkgIG1vZGVzIGFuZCBoaWdoIHJlc29sdXRpb24u
IEl0IGlzIHVzZWQgYXMgYSBjbG9ja3NvdXJjZQ0KPiA+ICAJICBhbmQgYSBjbG9ja2V2ZW50Lg0K
PiA+DQo+ID4gK2NvbmZpZyBLRUVNQkFZX1RJTUVSDQo+ID4gKwlib29sICJJbnRlbCBLZWVtIEJh
eSB0aW1lciBkcml2ZXIiDQo+ID4gKwlkZXBlbmRzIG9uIEFSQ0hfS0VFTUJBWSB8fCAoQVJNNjQg
JiYgQ09NUElMRV9URVNUKQ0KPiANCj4gVGhlIHRpbWVyIGRyaXZlcnMgc3Vic3lzdGVtIHdhbnRz
IHNpbGVudCBvcHRpb25zIGFuZCBsZXQgdGhlIHBsYXRmb3JtIHRvDQo+IHNlbGVjdCB0aGUgdGlt
ZXIuDQo+IA0KPiBQbGVhc2Ugc2VsZWN0IHRoZSB0aW1lciBpbiBhcmNoL2FybTY0L0tjb25maWcu
cGxhdGZvcm1zIGluIHRoZQ0KPiBBUkNIX0tFRU1CQVkgc2VjdGlvbi4NCj4gDQo+IFNvIGl0IHdv
dWxkIGNvbWU6DQo+IA0KPiBjb25maWcgS0VFTUJBWV9USU1FUg0KPiAJYm9vbCAiYmxhIGJsYSIg
aWYgQ09NUElMRV9URVNUDQo+IA0KDQpPay4gSSB3aWxsIGNoZWNrIHRoYXQgYW5kIHVwZGF0ZSBp
biBuZXh0IHZlcnNpb24uDQoNCj4gDQo+IA0KPiA+ICsJc2VsZWN0IFRJTUVSX09GDQo+ID4gKwlo
ZWxwDQo+ID4gKwkgIFRoaXMgb3B0aW9uIGVuYWJsZXMgdGhlIHN1cHBvcnQgZm9yIHRoZSBJbnRl
bCBLZWVtIEJheSBnZW5lcmFsDQo+ID4gKwkgIHB1cnBvc2UgdGltZXIgYW5kIGZyZWUgcnVubmlu
ZyBjb3VudGVyIGRyaXZlci4gRWFjaCB0aW1lciBjYW4NCj4gPiArCSAgZ2VuZXJhdGUgYW4gaW5k
aXZpZHVhbCBpbnRlcnJ1cHQgYW5kIHRoZSA2NCBiaXQgY291bnRlciBjYW4gYWxzbw0KPiA+ICsJ
ICBiZSB1c2VkIGFzIG9uZSBvZiB0aGUgY2xvY2sgc291cmNlLg0KPiA+ICsNCj4gDQo+IFsgLi4u
IF0NCj4gDQo+ID4gK3N0YXRpYyBzdHJ1Y3QgdGltZXJfb2Yga2VlbWJheV9jZV90byA9IHsNCj4g
PiArCS5mbGFncwk9IFRJTUVSX09GX0lSUSB8IFRJTUVSX09GX0JBU0UgfCBUSU1FUl9PRl9DTE9D
SywNCj4gPiArCS5jbGtldnQgPSB7DQo+ID4gKwkJLm5hbWUJCQk9ICJrZWVtYmF5X3RpbWVyIiwN
Cj4gPiArCQkuZmVhdHVyZXMJCT0gQ0xPQ0tfRVZUX0ZFQVRfUEVSSU9ESUMgfA0KPiA+ICsJCQkJ
CSAgQ0xPQ0tfRVZUX0ZFQVRfT05FU0hPVCwNCj4gDQo+IE1heSBiZSBjb25zaWRlciBDTE9DS19F
VlRfRkVBVF9EWU5JUlEgPw0KPiANCj4gc2VlIGNvbW1pdCBkMjM0OGZiNmZkYzZkNjcNCj4gDQoN
ClN1cmUuIEkgd2lsbCBhZGQgaXQgaW4gdGhlIG5leHQgdmVyc2lvbi4NCg0KPiBPdGhlciB0aGFu
IHRoYXQsIExHVE0NCj4gDQo+IFRoYW5rcw0KPiANCj4gICAtLSBEYW5pZWwNCj4gDQoNClRoYW5r
cywNClZpamF5DQo=
