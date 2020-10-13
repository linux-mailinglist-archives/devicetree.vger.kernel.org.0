Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17F3628C5A1
	for <lists+devicetree@lfdr.de>; Tue, 13 Oct 2020 02:24:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726803AbgJMAYt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Oct 2020 20:24:49 -0400
Received: from mga09.intel.com ([134.134.136.24]:51546 "EHLO mga09.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726564AbgJMAYs (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 12 Oct 2020 20:24:48 -0400
IronPort-SDR: bF6cDWz0JKoL8PyD/XsPvR3o6PBlTP9RO6hdv6hRZK3GIWZK2AzdWQhPEzvYNvTnboHQLVf4ws
 v6hxQYq/6cNA==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="165935188"
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; 
   d="scan'208";a="165935188"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Oct 2020 17:24:47 -0700
IronPort-SDR: b/rjLi74jCcqz7O0qd5yxSMxshS2dYUGcrFtUXTx8Nio2bKbt14s2LZCDUmf+mMo5M98p5sZeK
 vTvJAPFLGXgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; 
   d="scan'208";a="299437193"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by fmsmga008.fm.intel.com with ESMTP; 12 Oct 2020 17:24:46 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 17:24:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 12 Oct 2020 17:24:46 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 12 Oct 2020 17:24:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R6ocL3KHeXGxTdQ192tU/A2P4bMZTpeSvLN8u5b/hxxECg2Pmg2HAvdkRMUqUCnJrfI7FoSAP5dzBjjInGUI0SF7V0+69+/9ZFpiWrB/qUWdWOY/NrZoXWROmTsjnGJmJpA/fs2TtYP3T7arOz8NYzl8O0fhm8RL51o5vv6fG7A5SJDmlwyqdpHbBYuwmW6+qr/PKNKLxmLCkj1eOf2bKziydELDEioJZxfBYLBRnoS5hHy3pI6nhWgK08SOi1Q542++o/zLSmcnxG7gtOCru2eHXFnDMX45XHu1/dWA716olN9FoeCm4cZVfyJaNUXg0v1fDfBYLHK266j30NJBWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+U8d/7U8HsyBdtEUOCFi+RDSikBFOI3ZXB6roH4jy8M=;
 b=iu2QlX8biVSR1VDQGq6vbHYuUmHbJKpJs+dgr4wLCTylp5gPzjlqx2M9U7lujfPA/lm3nGc1Lt1Bc60X55ESP6cft+T1PjLANKwsjaFMg4+xWYEUEZVwyJqOWZKXsU74myqbCEsoIJSNlFnwg/K9hYqiabK6NhwPuCVwx+ItP+6mkewaxz0oEQ2fNYHWbGm/4om5Smcc+nZZ0FRPkXAEFXHEnqnUCuOATp/oTB44oyvm8adpfmvu2r2PErxUYwyGnA15AngAi4evyClyHD4PUqzrsgkbGRy6bhKInaakaHy/La+hwbTv2h1sbMME4c81EdpEztifrvwbx3TkYzRoYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+U8d/7U8HsyBdtEUOCFi+RDSikBFOI3ZXB6roH4jy8M=;
 b=HIN0S8p0N3x8fNtf7WrqaypRoQT1Qi0mDLTsoT7I4RgtlaZsA8/Aa7vpZXepQ56fC1lI8Jb+cfZ8EdB7KLZkK55ityh23DLo7ylitKiGYYn6BEbBpCfGQWfwBscMJQSdXpEA5Sh/plXquCF0MNBHEwn3t142K5n1rsry6/yHZto=
Received: from BY5PR11MB4182.namprd11.prod.outlook.com (2603:10b6:a03:183::10)
 by BYAPR11MB2599.namprd11.prod.outlook.com (2603:10b6:a02:c6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.28; Tue, 13 Oct
 2020 00:24:38 +0000
Received: from BY5PR11MB4182.namprd11.prod.outlook.com
 ([fe80::890d:4fb5:9d54:4de5]) by BY5PR11MB4182.namprd11.prod.outlook.com
 ([fe80::890d:4fb5:9d54:4de5%6]) with mapi id 15.20.3455.030; Tue, 13 Oct 2020
 00:24:38 +0000
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
Thread-Index: AQHWndgiYWw6xeqrr0Kdi1tw4Hng3amO/CuAgAWu/mA=
Date:   Tue, 13 Oct 2020 00:24:38 +0000
Message-ID: <BY5PR11MB41827BBE3556CD7972E6C4328C040@BY5PR11MB4182.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 7a20d5b9-abbd-4a51-f683-08d86f0e5eaf
x-ms-traffictypediagnostic: BYAPR11MB2599:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB25999AB3834E6BE27AD0AD888C040@BYAPR11MB2599.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ChFcbTmjeKLSLjT6+i8Io76mGfzl9rAZTtiTiaOS8V2TSZMb4LTb3eXszI4Er7Vg2ExxJBOHIJZcgAVyXOtBM+khwp432ceJq4SJhkMqKarRhQowbfxDYAe+kF3iEtFI3DZUnNs87KpGJ4AsWnGOkjj2Vu7lDSnh7CVb1xTXIhuZFMH15MJ0hmVkWwh42EXSBG9UxyRYBuhE3ReA4WQac68WuKmOSfLpZhbsdu6prBImfzzhbn/yBkBI2KjHM5G7skXIwr0AZPaPyIXDU9MatedlADvyHfFj1Kk2LyaW1cA9NXO0mYcqcIqdKZwUJcHrR4rP+DymiY9m9EzTRapKcpWo9JqdX2DXyMm98HZ/KgS+2dHCxmbQPfkuYQ+fxQmHq/YtZS6tzeHTEoj3Qrg2qw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB4182.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(396003)(136003)(346002)(376002)(366004)(55016002)(8936002)(86362001)(83380400001)(5660300002)(26005)(2906002)(6506007)(53546011)(6636002)(83080400001)(7696005)(64756008)(52536014)(478600001)(4326008)(110136005)(186003)(71200400001)(33656002)(9686003)(66946007)(76116006)(8676002)(966005)(66446008)(316002)(54906003)(66476007)(66556008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: Aqe18pzghnRv64IvXMc0H/j/qIHUmTXuLZ2UGR1FmkZ/gbZWC9l2f9CPT0/+OcnswymA4rED2jqlH75WXrKLv8cvB+lD0YBwPpwr2B+BD2hjEYxnxxZpZWWJxsnSMFj2ppVX2Y5AHL/3qSMUXMOw0rsBG0h6sWqpVq78Q2qT8Nxl3xWqK+5yt+cRYZM4KRinIt+AH78AkVJ17Ea8FdW8H89hsDFebCjx6bFECUOT5NC0N3y/rq/F32CZb9xQQXVJ1gpTjVlub7C9gDYyv2tXDjry6NaMWAbRwcrQ18+j7h45IAN7SmMvM0Q5MKjL28W8yZyli3XsD9K5W84ajQ2onalT+DvXf+u2CLnvNNMdixh38N08q2xsmbTZaCy1i5MGwSOQ7HEA1O8ngbTMOD4MUI7Qo/pzLGGCx0voSwVBFPyG4eUumdC25ltpA+OngeM6kRYhemeD7cVdJeDIXdl9UxUXaGW1XE6ueYqdu8nMBWpcq8/9VeCpIsOqGc6ffetIOguqZLDsO5/P3mRd/mqOumM+4LQZp0fBFFbpJTd7lFC73LHFhXzV5iOhTph18JtybvZewe1Q3NqtacDAcum1rUmeWcEyBxHzZXszMF+gQnefg+kCkTueXR6O+tCPHezRhKyhRbMrZTtKAI4omnknIA==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a20d5b9-abbd-4a51-f683-08d86f0e5eaf
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2020 00:24:38.0561
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KaVFqQ36mqUeJYgG5qsI8Lp1cI2KWGtlm+HUjnq8fcu5nfK0uvTMEhiLxPx4LfiUr/6Q4h0Q19I+1cc+LNcC494RAxGKNe4OIbuTXvYxzKI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2599
X-OriginatorOrg: intel.com
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SGkgTmVpbCwNCg0KIFRoYW5rcyBmb3IgeW91ciByZXZpZXcsIHBsZWFzZSBzZWUgbXkgcmVwbHkg
aW5saW5lLg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE5laWwgQXJt
c3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4NCj4gU2VudDogRnJpZGF5LCBPY3RvYmVy
IDksIDIwMjAgMjoxMCBBTQ0KPiBUbzogQ2hyaXNhbnRodXMsIEFuaXRoYSA8YW5pdGhhLmNocmlz
YW50aHVzQGludGVsLmNvbT47IGRyaS0NCj4gZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBk
ZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgVmV0dGVyLCBEYW5pZWwNCj4gPGRhbmllbC52ZXR0
ZXJAaW50ZWwuY29tPg0KPiBDYzogRGVhLCBFZG11bmQgSiA8ZWRtdW5kLmouZGVhQGludGVsLmNv
bT47IHNhbUByYXZuYm9yZy5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2OSAxLzVdIGR0LWJp
bmRpbmdzOiBkaXNwbGF5OiBBZGQgc3VwcG9ydCBmb3IgSW50ZWwNCj4gS2VlbUJheSBEaXNwbGF5
DQo+IA0KPiBIaSwNCj4gDQo+IE9uIDA5LzEwLzIwMjAgMDM6MDMsIEFuaXRoYSBDaHJpc2FudGh1
cyB3cm90ZToNCj4gPiBUaGlzIHBhdGNoIGFkZHMgYmluZGluZ3MgZm9yIEludGVsIEtlZW1CYXkg
RGlzcGxheQ0KPiA+DQo+ID4gdjI6IHJldmlldyBjaGFuZ2VzIGZyb20gUm9iIEhlcnJpbmcNCj4g
Pg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFuaXRoYSBDaHJpc2FudGh1cyA8YW5pdGhhLmNocmlzYW50
aHVzQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgLi4uL2JpbmRpbmdzL2Rpc3BsYXkvaW50ZWws
a2VlbWJheS1kaXNwbGF5LnlhbWwgICAgfCA5OQ0KPiArKysrKysrKysrKysrKysrKysrKysrDQo+
ID4gIDEgZmlsZSBjaGFuZ2VkLCA5OSBpbnNlcnRpb25zKCspDQo+ID4gIGNyZWF0ZSBtb2RlIDEw
MDY0NA0KPiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9pbnRlbCxr
ZWVtYmF5LWRpc3BsYXkueWFtbA0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2ludGVsLGtlZW1iYXktDQo+IGRpc3BsYXkueWFt
bCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2ludGVsLGtlZW1i
YXktDQo+IGRpc3BsYXkueWFtbA0KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4gaW5kZXgg
MDAwMDAwMC4uYTM4NDkzZA0KPiA+IC0tLSAvZGV2L251bGwNCj4gPiArKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9pbnRlbCxrZWVtYmF5LQ0KPiBkaXNwbGF5
LnlhbWwNCj4gPiBAQCAtMCwwICsxLDk5IEBADQo+ID4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IEdQTC0yLjAtb25seQ0KPiA+ICslWUFNTCAxLjINCj4gPiArLS0tDQo+ID4gKyRpZDogaHR0
cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvZGlzcGxheS9pbnRlbCxrZWVtYmF5LQ0KPiBkaXNw
bGF5LnlhbWwjDQo+ID4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVt
YXMvY29yZS55YW1sIw0KPiA+ICsNCj4gPiArdGl0bGU6IERldmljZXRyZWUgYmluZGluZ3MgZm9y
IEludGVsIEtlZW0gQmF5IGRpc3BsYXkgY29udHJvbGxlcg0KPiA+ICsNCj4gPiArbWFpbnRhaW5l
cnM6DQo+ID4gKyAgLSBBbml0aGEgQ2hyaXNhbnRodXMgPGFuaXRoYS5jaHJpc2FudGh1c0BpbnRl
bC5jb20+DQo+ID4gKyAgLSBFZG1vbmQgSiBEZWEgPGVkbXVuZC5qLmRlYUBpbnRlbC5jb20+DQo+
ID4gKw0KPiA+ICtwcm9wZXJ0aWVzOg0KPiA+ICsgIGNvbXBhdGlibGU6DQo+ID4gKyAgICBjb25z
dDogaW50ZWwsa21iX2Rpc3BsYXkNCj4gPiArDQo+ID4gKyAgcmVnOg0KPiA+ICsgICAgaXRlbXM6
DQo+ID4gKyAgICAgIC0gZGVzY3JpcHRpb246IExjZCByZWdpc3RlcnMgcmFuZ2UNCj4gPiArICAg
ICAgLSBkZXNjcmlwdGlvbjogTWlwaSByZWdpc3RlcnMgcmFuZ2UNCj4gDQo+IExvb2tpbmcgYXQg
dGhlIHJlZ2lzdGVycywgdGhlIE1JUEkgdHJhbnNjZWl2ZXIgc2VlbXMgdG8gYmUgYSBzZXBhcmF0
ZSBJUCwNCj4gc2FtZSBmb3IgRC1QSFkgd2hpY2ggc2hvdWxkIGhhdmUgYSBwcm9wZXIgUEhZIGRy
aXZlciBpbnN0ZWFkIG9mIGJlZWluZw0KPiBoYW5kbGVkDQo+IGhlcmUuDQo+IA0KVGhlIExDRCwg
TUlQSSBEU0ksIERQSFkgYW5kIE1TU0NBTSBhcyBhIGdyb3VwLCBhcmUgY29uc2lkZXJlZCB0aGUg
ZGlzcGxheSBzdWJzeXN0ZW0gZm9yIEtlZW0gQmF5LiBBcyBzdWNoLCB0aGVyZSBhcmUgc2V2ZXJh
bCBpbnRlcmRlcGVuZGVuY2llcyB0aGF0IG1ha2Ugc3BsaXR0aW5nIHRoZW0gdXAgbmV4dCB0byBp
bXBvc3NpYmxlIGFuZCBjdXJyZW50bHkgd2UgZG8gbm90IGhhdmUgdGhlIHJlc291cmNlcyBhdmFp
bGFibGUgZm9yIHRoYXQgZWZmb3J0Lg0KPiA+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBNc3NjYW0g
cmVnaXN0ZXJzIHJhbmdlDQo+IA0KPiBNU1NjYW0gaGVyZSBzZWVtcyB0byBiZSBhIGNsb2NrIGFu
ZCByZXNldCBjb250cm9sbGVyIGZvciB0aGUgTENEIGFuZCBNSVBJDQo+IElQcywNCj4gdGh1cyBz
aG91bGQgYmUgaGFuZGxlciBvdXQgb2YgRFJNLg0KPiANCj4gPiArDQo+ID4gKyAgcmVnLW5hbWVz
Og0KPiA+ICsgICAgaXRlbXM6DQo+ID4gKyAgICAgIC0gY29uc3Q6IGxjZA0KPiA+ICsgICAgICAt
IGNvbnN0OiBtaXBpDQo+ID4gKyAgICAgIC0gY29uc3Q6IG1zc2NhbQ0KPiA+ICsNCj4gPiArICBj
bG9ja3M6DQo+ID4gKyAgICBpdGVtczoNCj4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogTENEIGNv
bnRyb2xsZXIgY2xvY2sNCj4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogTWlwaSBEU0kgY2xvY2sN
Cj4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogTWlwaSBEU0kgZWNvbmZpZyBjbG9jaw0KPiA+ICsg
ICAgICAtIGRlc2NyaXB0aW9uOiBNaXBpIERTSSBjb25maWcgY2xvY2sNCj4gPiArICAgICAgLSBk
ZXNjcmlwdGlvbjogU3lzdGVtIGNsb2NrIG9yIHBsbDAgY2xvY2sNCj4gPiArDQo+ID4gKyAgY2xv
Y2stbmFtZXM6DQo+ID4gKyAgICBpdGVtczoNCj4gPiArICAgICAgLSBjb25zdDogY2xrX2xjZA0K
PiA+ICsgICAgICAtIGNvbnN0OiBjbGtfbWlwaQ0KPiA+ICsgICAgICAtIGNvbnN0OiBjbGtfbWlw
aV9lY2ZnDQo+ID4gKyAgICAgIC0gY29uc3Q6IGNsa19taXBpX2NmZw0KPiA+ICsgICAgICAtIGNv
bnN0OiBjbGtfcGxsMA0KPiA+ICsNCj4gPiArICBpbnRlcnJ1cHRzOg0KPiA+ICsgICAgbWF4SXRl
bXM6IDENCj4gPiArDQo+ID4gKyAgZW5jb2Rlci1zbGF2ZToNCj4gPiArICAgIGRlc2NyaXB0aW9u
OiBicmlkZ2Ugbm9kZSBlbnRyeSBmb3IgbWlwaSB0byBoZG1pIGNvbnZlcnRlcg0KPiA+ICsNCj4g
PiArICBwb3J0Og0KPiA+ICsgICAgdHlwZTogb2JqZWN0DQo+ID4gKyAgICBkZXNjcmlwdGlvbjog
Pg0KPiA+ICsgICAgICAgICAgUG9ydCBub2RlIHdpdGggb25lIGVuZHBvaW50IGNvbm5lY3RlZCB0
byBtaXBpIHRvIGhkbWkgY29udmVydGVyDQo+IG5vZGUuDQo+ID4gKw0KPiA+ICtyZXF1aXJlZDoN
Cj4gPiArICAtIGNvbXBhdGlibGUNCj4gPiArICAtIHJlZw0KPiA+ICsgIC0gcmVnLW5hbWVzDQo+
ID4gKyAgLSBjbG9ja3MNCj4gPiArICAtIGNsb2NrLW5hbWVzDQo+ID4gKyAgLSBpbnRlcnJ1cHRz
DQo+ID4gKyAgLSBlbmNvZGVyLXNsYXZlDQo+ID4gKyAgLSBwb3J0DQo+ID4gKw0KPiA+ICthZGRp
dGlvbmFsUHJvcGVydGllczogZmFsc2UNCj4gPiArDQo+ID4gK2V4YW1wbGVzOg0KPiA+ICsgIC0g
fA0KPiA+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2ly
cS5oPg0KPiA+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVy
L2FybS1naWMuaD4NCj4gPiArICAgICNkZWZpbmUgTU9WSVNPQ19LTUJfTVNTX0FVWF9MQ0QNCj4g
PiArICAgICNkZWZpbmUgTU9WSVNPQ19LTUJfTVNTX0FVWF9NSVBJX1RYMA0KPiA+ICsgICAgI2Rl
ZmluZSBNT1ZJU09DX0tNQl9NU1NfQVVYX01JUElfRUNGRw0KPiA+ICsgICAgI2RlZmluZSBNT1ZJ
U09DX0tNQl9NU1NfQVVYX01JUElfQ0ZHDQo+ID4gKyAgICAjZGVmaW5lIE1PVklTT0NfS01CX0E1
M19QTExfMF9PVVRfMA0KPiA+ICsgICAgZGlzcGxheUAyMDkwMDAwMCB7DQo+ID4gKyAgICAgIGNv
bXBhdGlibGUgPSAiaW50ZWwsa2VlbWJheS1kaXNwbGF5IjsNCj4gPiArICAgICAgcmVnID0gPDB4
MjA5MzAwMDAgMHgzMDAwPiwNCj4gPiArICAgICAgICAgICAgPDB4MjA5MDAwMDAgMHg0MDAwPiwN
Cj4gPiArICAgICAgICAgICAgPDB4MjA5MTAwMDAgMHgzMD47DQo+ID4gKyAgICAgIHJlZy1uYW1l
cyA9ICJsY2QiLCAibWlwaSIsICJtc3NjYW0iOw0KPiA+ICsgICAgICBpbnRlcnJ1cHRzID0gPEdJ
Q19TUEkgMzMgSVJRX1RZUEVfTEVWRUxfSElHSD47DQo+ID4gKyAgICAgIGNsb2NrcyA9IDwmc2Nt
aV9jbGsgTU9WSVNPQ19LTUJfTVNTX0FVWF9MQ0Q+LA0KPiA+ICsgICAgICAgICAgICAgICA8JnNj
bWlfY2xrIE1PVklTT0NfS01CX01TU19BVVhfTUlQSV9UWDA+LA0KPiA+ICsgICAgICAgICAgICAg
ICA8JnNjbWlfY2xrIE1PVklTT0NfS01CX01TU19BVVhfTUlQSV9FQ0ZHPiwNCj4gPiArICAgICAg
ICAgICAgICAgPCZzY21pX2NsayBNT1ZJU09DX0tNQl9NU1NfQVVYX01JUElfQ0ZHPiwNCj4gPiAr
ICAgICAgICAgICAgICAgPCZzY21pX2NsayBNT1ZJU09DX0tNQl9BNTNfUExMXzBfT1VUXzA+Ow0K
PiA+ICsgICAgICBjbG9jay1uYW1lcyA9ICJjbGtfbGNkIiwgImNsa19taXBpIiwgImNsa19taXBp
X2VjZmciLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICJjbGtfbWlwaV9jZmciLCAiY2xrX3Bs
bDAiOw0KPiA+ICsNCj4gPiArICAgICAgZW5jb2Rlci1zbGF2ZSA9IDwmYWR2NzUzNT47DQo+ID4g
Kw0KPiA+ICsgICAgICBwb3J0IHsNCj4gPiArICAgICAgICAgICAgZHNpX291dHB1dDogZW5kcG9p
bnQgew0KPiA+ICsgICAgICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZhZHY3NTM1X2lu
cHV0PjsNCj4gPiArICAgICAgICAgICAgfTsNCj4gPiArICAgICAgfTsNCj4gPiArICAgIH07DQo+
ID4NCj4gDQo+IEFuaXRoYSwgRGFuaWVsLCB0aGlzIGtlZW1iYXkgZHJpdmVyIHNob3VsZCBiZSBh
cmNoaXRlY3R1cmVkIGxpa2Ugb3RoZXIgQVJNLQ0KPiBsaWtlIGRpc3BsYXkNCj4gY29udHJvbGxl
cnMsIHdpdGggc2VwYXJhdGUgZHJpdmVycyBmb3IgTUlQSSBEU0kgYnJpZGdlIGFuZCBtc3NjYW0g
Y2xvY2sgJg0KPiByZXNldCBjb250cm9sbGVyLg0KPiANClRoaXMgZHJpdmVyIHdhcyBkZXZlbG9w
ZWQgYXMgcGFydCBvZiB0aGUgS2VlbSBCYXkgQlNQIHRhcmdldGluZyB0aGUgTFRTIDUuNCBZb2N0
byBrZXJuZWwuICBJdCBpcyBwYXJ0IG9mIG91ciBjdXJyZW50IHByb2R1Y3Rpb24gQlNQIHJlbGVh
c2UgYWZ0ZXIgZXh0ZW5zaXZlIHRlc3RpbmcuDQoNCkF0IHRoaXMgdGltZSB0aGVyZSBhcmUgbm8g
cGxhbnMgdG8gaW5jb3Jwb3JhdGUgdGhlIGRpc3BsYXkgSVAgdXNlZCBpbiBLZWVtIEJheSBpbiBh
bnkgZnV0dXJlIHByb2R1Y3RzLiBPdXIgZ29hbCBpcyB0byBnZXQgdGhpcyBkcml2ZXIgaW50byB0
aGUgbWFpbmxpbmUga2VybmVsIHNvIHRoYXQgd2UgZG9uJ3QgaGF2ZSB0byBjb250aW51b3VzbHkg
cmViYXNlIGl0IGFzIG5ld2VyIGtlcm5lbHMgYXJlIHJlbGVhc2VkLiAgQXMgbWVudGlvbmVkIGFi
b3ZlLCB3ZSBkb24ndCBoYXZlIHRoZSByZXNvdXJjZXMgdG8gcmUtYXJjaGl0ZWN0IGFuZCB0aGVu
IHJlLWRldmVsb3AgYSBkaXNwbGF5IGRyaXZlciBmb3IgdGhpcyBwcm9kdWN0IGFuZCBzZWUgdmVy
eSBsaXR0bGUgYmVuZWZpdCBpbiBkb2luZyBzby4NCg0KSWYgd2Ugd2VyZSBleHBlY3RpbmcgdGhl
c2UgSVAgYmxvY2tzIHRvIGJlIHJlLXVzZWQgaW4gdGhlIGZ1dHVyZSwgY3JlYXRpbmcgaW5kaXZp
ZHVhbCBkcml2ZXJzIGZvciBlYWNoIHdvdWxkIG1ha2Ugc2Vuc2UuICANCg0KVGhhbmtzIGFnYWlu
IGZvciB0YWtpbmcgdGhlIHRpbWUgdG8gcmV2aWV3IHRoZSBkcml2ZXIuDQpBbml0aGENCj4gTmVp
bA0K
