Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D05A44BA42
	for <lists+devicetree@lfdr.de>; Wed, 10 Nov 2021 03:20:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229652AbhKJCXY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Nov 2021 21:23:24 -0500
Received: from mailgw02.mediatek.com ([210.61.82.184]:53886 "EHLO
        mailgw02.mediatek.com" rhost-flags-OK-FAIL-OK-FAIL) by vger.kernel.org
        with ESMTP id S229630AbhKJCXY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Nov 2021 21:23:24 -0500
X-UUID: 856a6dbc4c6341eca4ca1e898b447dc0-20211110
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
        h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID; bh=h6o8crzH0QQXPSjg4BmL9i5l114/7v3dfLGSUMXg6lQ=;
        b=pu1+LqOeJ5IzE1w+yl088gqqRaOXP3f1DjYslC7BeDPQLvV02UHhhWX3FbEr7CzoXmGI43dLpsXURFoD1IDGNJ6RqruW9vUOlSpnkzvCNKO/RoBDtqkEy74B5vLQFaXSDCnNh4pnaBxZzWAjFrLR9eVJADb3igUhQPtjAJKAbm8=;
X-UUID: 856a6dbc4c6341eca4ca1e898b447dc0-20211110
Received: from mtkexhb02.mediatek.inc [(172.21.101.103)] by mailgw02.mediatek.com
        (envelope-from <yong.wu@mediatek.com>)
        (Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
        with ESMTP id 1352684706; Wed, 10 Nov 2021 10:20:35 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3;
 Wed, 10 Nov 2021 10:20:33 +0800
Received: from mhfsdcap04 (10.17.3.154) by mtkmbs10n2.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.2.792.3 via Frontend
 Transport; Wed, 10 Nov 2021 10:20:32 +0800
Message-ID: <5c4dd67ae7c81721d8cfd2c3b23b7c6df493cb5a.camel@mediatek.com>
Subject: Re: [PATCH v3 12/33] iommu/mediatek: Always tlb_flush_all when each
 PM resume
From:   Yong Wu <yong.wu@mediatek.com>
To:     Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>
CC:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Tomasz Figa <tfiga@chromium.org>,
        <linux-mediatek@lists.infradead.org>,
        <srv_heupstream@mediatek.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <iommu@lists.linux-foundation.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>, <youlin.pei@mediatek.com>,
        <anan.sun@mediatek.com>, <yen-chang.chen@mediatek.com>,
        "AngeloGioacchino Del Regno" 
        <angelogioacchino.delregno@collabora.com>,
        Fabien Parent <fparent@baylibre.com>,
        <sebastian.reichel@collabora.com>,
        "Collabora Kernel ML" <kernel@collabora.com>
Date:   Wed, 10 Nov 2021 10:20:32 +0800
In-Reply-To: <c4be1a14-c257-81b7-4a2b-f7e68c32de88@collabora.com>
References: <20210923115840.17813-1-yong.wu@mediatek.com>
         <20210923115840.17813-13-yong.wu@mediatek.com>
         <c4be1a14-c257-81b7-4a2b-f7e68c32de88@collabora.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
MIME-Version: 1.0
X-MTK:  N
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gVHVlLCAyMDIxLTExLTA5IGF0IDE0OjIxICswMjAwLCBEYWZuYSBIaXJzY2hmZWxkIHdyb3Rl
Og0KPiBIaQ0KPiBUaGlzIHBhdGNoIGlzIG5lZWRlZCBpbiBvcmRlciB0byB1cGRhdGUgdGhlIHRs
YiB3aGVuIGEgZGV2aWNlIGlzDQo+IHBvd2VyZWQgb24uDQo+IENvdWxkIHlvdSBzZW5kIHRoaXMg
cGF0Y2ggYWxvbmUgd2l0aG91dCB0aGUgd2hvbGUgc2VyaWVzIHNvIGl0IGdldA0KPiBhY2NlcHRl
ZCBlYXNpZXI/DQoNCldoaWNoIFNvQyBhcmUgeW91IHRlc3Rpbmcgb24/IEluIHByZXZpb3VzIFNv
QywgdGhlIElPTU1VIEhXIGRvbid0IGhhdmUNCnBvd2VyLWRvbWFpbiwgYW5kIHdlIGhhdmUgYSAi
aGFzX3BtIlsxXSBpbiB0aGUgdGxiIGZ1bmN0aW9uIGZvciB0aGF0DQpjYXNlLiBUaGUgImhhc19w
bSIgc2hvdWxkIGJlIGFsd2F5cyAwIGZvciB0aGUgcHJldmlvdXMgU29DIGxpa2UgbXQ4MTczLA0K
aXQgc2hvdWxkIGFsd2F5cyB0bGIgc3luY2hyb25pemUuDQoNCnRodXMsIENvdWxkIHlvdSBoZWxw
IHNoYXJlIG1vcmUgYWJvdXQgeW91ciBpc3N1ZT8gSW4gd2hpY2ggY2FzZSBpdCBsYWNrDQp0aGUg
bmVjZXNzYXJ5IHRsYiBvcGVyYXRpb24uIEF0IGxlYXN0LCBXZSBuZWVkIGNvbmZpcm0gaWYgaXQg
bmVlZHMgYQ0KIkZpeGVzIiB0YWdzIGlmIHNlbmRpbmcgdGhpcyBwYXRjaCBhbG9uZS4NCg0KVGhh
bmtzLg0KDQpbMV0gDQpodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92NS4xNS9zb3Vy
Y2UvZHJpdmVycy9pb21tdS9tdGtfaW9tbXUuYyNMMjM2DQoNCj4gSSBjYW4gcmVzZW5kIHRoZSBw
YXRjaCBvbiB5b3VyIGJlaGFsZiBpZiB5b3Ugd2FudC4NCj4gDQo+IFRoYW5rcywNCj4gRGFmbmEN
Cj4gDQo+IE9uIDIzLjA5LjIxIDE0OjU4LCBZb25nIFd1IHdyb3RlOg0KPiA+IFByZXBhcmUgZm9y
IDIgSFdzIHRoYXQgc2hhcmluZyBwZ3RhYmxlIGluIGRpZmZlcmVudCBwb3dlci1kb21haW5zLg0K
PiA+IA0KPiA+IFdoZW4gdGhlcmUgYXJlIDIgTTRVIEhXcywgaXQgbWF5IGhhcyBwcm9ibGVtIGlu
IHRoZSBmbHVzaF9yYW5nZSBpbg0KPiA+IHdoaWNoDQo+ID4gd2UgZ2V0IHRoZSBwbV9zdGF0dXMg
dmlhIHRoZSBtNHUgZGV2LCBCVVQgdGhhdCBmdW5jdGlvbiBkb24ndA0KPiA+IHJlZmxlY3QgdGhl
DQo+ID4gcmVhbCBwb3dlci1kb21haW4gc3RhdHVzIG9mIHRoZSBIVyBzaW5jZSB0aGVyZSBtYXkg
YmUgb3RoZXIgSFcgYWxzbw0KPiA+IHVzZQ0KPiA+IHRoYXQgcG93ZXItZG9tYWluLg0KPiA+IA0K
PiA+IFRoZSBmdW5jdGlvbiBkbWFfYWxsb2NfYXR0cnMgaGVscCBhbGxvY2F0ZSB0aGUgaW9tbXUg
YnVmZmVyIHdoaWNoDQo+ID4gbmVlZCB0aGUgY29ycmVzcG9uZGluZyBwb3dlciBkb21haW4gc2lu
Y2UgdGxiIGZsdXNoIGlzIG5lZWRlZCB3aGVuDQo+ID4gcHJlcGFyaW5nIGlvdmEuIEJVVCB0aGlz
IGZ1bmN0aW9uIG9ubHkgaXMgZm9yIGFsbG9jYXRpbmcgYnVmZmVyLA0KPiA+IHdlIGhhdmUgbm8g
Z29vZCByZWFzb24gdG8gcmVxdWVzdCB0aGUgdXNlciBhbHdheXMgY2FsbA0KPiA+IHBtX3J1bnRp
bWVfZ2V0DQo+ID4gYmVmb3JlIGNhbGxpbmcgZG1hX2FsbG9jX3h4eC4gVGhlcmVmb3JlLCB3ZSBh
ZGQgYSB0bGJfZmx1c2hfYWxsDQo+ID4gaW4gdGhlIHBtX3J1bnRpbWVfcmVzdW1lIHRvIG1ha2Ug
c3VyZSB0aGUgdGxiIGFsd2F5cyBpcyBjbGVhbi4NCj4gPiANCj4gPiBBbm90aGVyIHNvbHV0aW9u
IGlzIGFsd2F5cyBjYWxsIHBtX3J1bnRpbWVfZ2V0IGluIHRoZQ0KPiA+IHRsYl9mbHVzaF9yYW5n
ZS4NCj4gPiBUaGlzIHdpbGwgdHJpZ2dlciBwbSBydW50aW1lIHJlc3VtZS9iYWNrdXAgc28gb2Z0
ZW4gd2hlbiB0aGUgaW9tbXUNCj4gPiBwb3dlciBpcyBub3QgYWN0aXZlIGF0IHNvbWUgdGltZSht
ZWFucyB1c2VyIGRvbid0IGNhbGwNCj4gPiBwbV9ydW50aW1lX2dldA0KPiA+IGJlZm9yZSBjYWxs
aW5nIGRtYV9hbGxvY194eHgpLCBUaGlzIG1heSBjYXVzZSB0aGUgcGVyZm9ybWFuY2UgZHJvcC4N
Cj4gPiB0aHVzIHdlIGRvbid0IHVzZSB0aGlzLg0KPiA+IA0KPiA+IEluIG90aGVyIGNhc2UsIHRo
ZSBpb21tdSdzIHBvd2VyIHNob3VsZCBhbHdheXMgYmUgYWN0aXZlIHZpYSBkZXZpY2UNCj4gPiBs
aW5rIHdpdGggc21pLg0KPiA+IA0KPiA+IFRoZSBwcmV2aW91cyBTb0MgZG9uJ3QgaGF2ZSBQTSBl
eGNlcHQgbXQ4MTkyLiB0aGUgbXQ4MTkyIElPTU1VIGlzDQo+ID4gZGlzcGxheSdzDQo+ID4gcG93
ZXItZG9tYWluIHdoaWNoIG5lYXJseSBhbHdheXMgaXMgZW5hYmxlZC4gdGh1cyBubyBuZWVkIGZp
eCB0YWdzDQo+ID4gaGVyZS4NCj4gPiBQcmVwYXJlIGZvciBtdDgxOTUuDQo+ID4gDQo+ID4gU2ln
bmVkLW9mZi1ieTogWW9uZyBXdSA8eW9uZy53dUBtZWRpYXRlay5jb20+DQo+ID4gLS0tDQo+ID4g
ICBkcml2ZXJzL2lvbW11L210a19pb21tdS5jIHwgMTEgKysrKysrKysrKysNCj4gPiAgIDEgZmls
ZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvaW9tbXUvbXRrX2lvbW11LmMgYi9kcml2ZXJzL2lvbW11L210a19pb21tdS5jDQo+ID4gaW5k
ZXggNDRjZjU1NDdkMDg0Li5lOWU5NDk0NGVkOTEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9p
b21tdS9tdGtfaW9tbXUuYw0KPiA+ICsrKyBiL2RyaXZlcnMvaW9tbXUvbXRrX2lvbW11LmMNCj4g
PiBAQCAtOTg0LDYgKzk4NCwxNyBAQCBzdGF0aWMgaW50IF9fbWF5YmVfdW51c2VkDQo+ID4gbXRr
X2lvbW11X3J1bnRpbWVfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikNCj4gPiAgIAkJcmV0dXJu
IHJldDsNCj4gPiAgIAl9DQo+ID4gICANCj4gPiArCS8qDQo+ID4gKwkgKiBVc2VycyBtYXkgYWxs
b2NhdGUgZG1hIGJ1ZmZlciBiZWZvcmUgdGhleSBjYWxsDQo+ID4gcG1fcnVudGltZV9nZXQsIHRo
ZW4NCj4gPiArCSAqIGl0IHdpbGwgbGFjayB0aGUgbmVjZXNzYXJ5IHRsYiBmbHVzaC4NCj4gPiAr
CSAqDQo+ID4gKwkgKiBXZSBoYXZlIG5vIGdvb2QgcmVhc29uIHRvIHJlcXVlc3QgdGhlIHVzZXJz
IGFsd2F5cyBjYWxsDQo+ID4gZG1hX2FsbG9jX3h4DQo+ID4gKwkgKiBhZnRlciBwbV9ydW50aW1l
X2dldF9zeW5jLg0KPiA+ICsJICoNCj4gPiArCSAqIFRodXMsIE1ha2Ugc3VyZSB0aGUgdGxiIGFs
d2F5cyBpcyBjbGVhbiBhZnRlciBlYWNoIFBNDQo+ID4gcmVzdW1lLg0KPiA+ICsJICovDQo+ID4g
KwltdGtfaW9tbXVfdGxiX2RvX2ZsdXNoX2FsbChkYXRhKTsNCj4gPiArDQo+ID4gICAJLyoNCj4g
PiAgIAkgKiBVcHBvbiBmaXJzdCByZXN1bWUsIG9ubHkgZW5hYmxlIHRoZSBjbGsgYW5kIHJldHVy
biwgc2luY2UNCj4gPiB0aGUgdmFsdWVzIG9mIHRoZQ0KPiA+ICAgCSAqIHJlZ2lzdGVycyBhcmUg
bm90IHlldCBzZXQuDQo+ID4gDQo=

