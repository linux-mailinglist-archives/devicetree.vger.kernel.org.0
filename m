Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BCCD3087D6
	for <lists+devicetree@lfdr.de>; Fri, 29 Jan 2021 11:33:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232342AbhA2KaZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Jan 2021 05:30:25 -0500
Received: from Mailgw01.mediatek.com ([1.203.163.78]:62544 "EHLO
        mailgw01.mediatek.com" rhost-flags-OK-FAIL-OK-FAIL) by vger.kernel.org
        with ESMTP id S232242AbhA2K0S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Jan 2021 05:26:18 -0500
X-UUID: 060e5fa33d21459dbf534108548b2a12-20210129
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
        h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID; bh=8LYed4Zwn/R7cvhFdVGZBG69vf/8TYNuvrg1e6/NGJE=;
        b=H0w+TWDOLlnmcXQSWA/mRNVYrDNSlHttXLmT1oql1kljcW1+p+nn1GE355XvEyhaqdOZ4KxhGQ4znCpQQkD/wRVXWTI5G12T8exLLyY8Uge8h35Tuuy/KO8TL8jvkgKze9l+L3UpyMQ+y0U7XXvxg087y4a5p5jzwOLYQULxfiE=;
X-UUID: 060e5fa33d21459dbf534108548b2a12-20210129
Received: from mtkcas36.mediatek.inc [(172.27.4.253)] by mailgw01.mediatek.com
        (envelope-from <ck.hu@mediatek.com>)
        (mailgw01.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
        with ESMTP id 336206262; Fri, 29 Jan 2021 16:40:45 +0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 29 Jan 2021 16:40:42 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 29 Jan 2021 16:40:42 +0800
Message-ID: <1611909641.31184.11.camel@mtksdaap41>
Subject: Re: [PATCH v4 6/8] drm/mediatek: add matrix bits private data for
 ccorr
From:   CK Hu <ck.hu@mediatek.com>
To:     Hsin-Yi Wang <hsinyi@chromium.org>
CC:     Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-mediatek@lists.infradead.org>,
        Yongqiang Niu <yongqiang.niu@mediatek.com>
Date:   Fri, 29 Jan 2021 16:40:41 +0800
In-Reply-To: <20210129073436.2429834-7-hsinyi@chromium.org>
References: <20210129073436.2429834-1-hsinyi@chromium.org>
         <20210129073436.2429834-7-hsinyi@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 07838E2DF8FE698C3E994C67D0C67BE09B3C9FAC28E56910A68D922798B518752000:8
X-MTK:  N
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SGksIEhzaW4tWWk6DQoNCk9uIEZyaSwgMjAyMS0wMS0yOSBhdCAxNTozNCArMDgwMCwgSHNpbi1Z
aSBXYW5nIHdyb3RlOg0KPiBGcm9tOiBZb25ncWlhbmcgTml1IDx5b25ncWlhbmcubml1QG1lZGlh
dGVrLmNvbT4NCj4gDQo+IG1hdHJpeCBiaXRzIG9mIG10ODE4MyBpcyAxMg0KPiBtYXRyaXggYml0
cyBvZiBtdDgxOTIgaXMgMTMNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFlvbmdxaWFuZyBOaXUgPHlv
bmdxaWFuZy5uaXVAbWVkaWF0ZWsuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBIc2luLVlpIFdhbmcg
PGhzaW55aUBjaHJvbWl1bS5vcmc+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVr
L210a19kaXNwX2Njb3JyLmMgfCAyMiArKysrKysrKysrKysrKysrKysrLS0tDQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2Rpc3BfY2NvcnIuYyBiL2RyaXZlcnMv
Z3B1L2RybS9tZWRpYXRlay9tdGtfZGlzcF9jY29yci5jDQo+IGluZGV4IDBjNjgwOTBlYjFlOTIu
LjFjNzE2M2ExMmYzYjEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9t
dGtfZGlzcF9jY29yci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZGlz
cF9jY29yci5jDQo+IEBAIC0zMSw4ICszMSwxMCBAQA0KPiAgI2RlZmluZSBESVNQX0NDT1JSX0NP
RUZfMwkJCTB4MDA4Qw0KPiAgI2RlZmluZSBESVNQX0NDT1JSX0NPRUZfNAkJCTB4MDA5MA0KPiAg
DQo+ICsjZGVmaW5lIENDT1JSX01BVFJJWF9CSVRTCQkJMTINCj4gKw0KPiAgc3RydWN0IG10a19k
aXNwX2Njb3JyX2RhdGEgew0KPiAtCXUzMiByZXNlcnZlZDsNCj4gKwl1MzIgbWF0cml4X2JpdHM7
DQo+ICB9Ow0KPiAgDQo+ICAvKioNCj4gQEAgLTExNiw2ICsxMTgsNyBAQCB2b2lkIG10a19jY29y
cl9jdG1fc2V0KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRybV9jcnRjX3N0YXRlICpzdGF0
ZSkNCj4gIAl1aW50MTZfdCBjb2VmZnNbOV0gPSB7IDAgfTsNCj4gIAlpbnQgaTsNCj4gIAlzdHJ1
Y3QgY21kcV9wa3QgKmNtZHFfcGt0ID0gTlVMTDsNCj4gKwl1MzIgbWF0cml4X2JpdHM7DQo+ICAN
Cj4gIAlpZiAoIWJsb2IpDQo+ICAJCXJldHVybjsNCj4gQEAgLTEyMyw4ICsxMjYsMTYgQEAgdm9p
ZCBtdGtfY2NvcnJfY3RtX3NldChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkcm1fY3J0Y19z
dGF0ZSAqc3RhdGUpDQo+ICAJY3RtID0gKHN0cnVjdCBkcm1fY29sb3JfY3RtICopYmxvYi0+ZGF0
YTsNCj4gIAlpbnB1dCA9IGN0bS0+bWF0cml4Ow0KPiAgDQo+IC0JZm9yIChpID0gMDsgaSA8IEFS
UkFZX1NJWkUoY29lZmZzKTsgaSsrKQ0KPiArCWlmIChjY29yci0+ZGF0YSkNCj4gKwkJbWF0cml4
X2JpdHMgPSBjY29yci0+ZGF0YS0+bWF0cml4X2JpdHM7DQo+ICsJZWxzZQ0KPiArCQltYXRyaXhf
Yml0cyA9IENDT1JSX01BVFJJWF9CSVRTOw0KPiArDQo+ICsJZm9yIChpID0gMDsgaSA8IEFSUkFZ
X1NJWkUoY29lZmZzKTsgaSsrKSB7DQo+ICAJCWNvZWZmc1tpXSA9IG10a19jdG1fczMxXzMyX3Rv
X3MxXzEwKGlucHV0W2ldKTsNCj4gKwkJaWYgKG1hdHJpeF9iaXRzID4gQ0NPUlJfTUFUUklYX0JJ
VFMpDQo+ICsJCQljb2VmZnNbaV0gPDw9IChtYXRyaXhfYml0cyAtIENDT1JSX01BVFJJWF9CSVRT
KTsNCg0KSSB0aGluayBmb3JtYXQgb2YgTVQ4MTkyIGNjb3JyIGNvZWZmcyBpcyBzMS4xMSwgYWZ0
ZXINCm10a19jdG1fczMxXzMyX3RvX3MxXzEwKCksIHlvdSBsb3NlIG9uZSBiaXQgcHJlY2lzaW9u
LiBTbyBtb2RpZnkNCm10a19jdG1fczMxXzMyX3RvX3MxXzEwKCkgdG8gZ2V0IG1heGltdW0gcHJl
Y2lzaW9uLg0KDQpSZWdhcmRzLA0KQ0sNCg0KPiArCX0NCj4gIA0KPiAgCW10a19kZHBfd3JpdGUo
Y21kcV9wa3QsIGNvZWZmc1swXSA8PCAxNiB8IGNvZWZmc1sxXSwNCj4gIAkJICAgICAgJmNjb3Jy
LT5jbWRxX3JlZywgY2NvcnItPnJlZ3MsIERJU1BfQ0NPUlJfQ09FRl8wKTsNCj4gQEAgLTIwNSw4
ICsyMTYsMTMgQEAgc3RhdGljIGludCBtdGtfZGlzcF9jY29ycl9yZW1vdmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikNCj4gIAlyZXR1cm4gMDsNCj4gIH0NCj4gIA0KPiArc3RhdGljIGNv
bnN0IHN0cnVjdCBtdGtfZGlzcF9jY29ycl9kYXRhIG10ODE4M19jY29ycl9kcml2ZXJfZGF0YSA9
IHsNCj4gKwkubWF0cml4X2JpdHMgPSBDQ09SUl9NQVRSSVhfQklUUywNCj4gK307DQo+ICsNCj4g
IHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIG10a19kaXNwX2Njb3JyX2RyaXZlcl9k
dF9tYXRjaFtdID0gew0KPiAtCXsgLmNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQ4MTgzLWRpc3At
Y2NvcnIifSwNCj4gKwl7IC5jb21wYXRpYmxlID0gIm1lZGlhdGVrLG10ODE4My1kaXNwLWNjb3Jy
IiwNCj4gKwkgIC5kYXRhID0gJm10ODE4M19jY29ycl9kcml2ZXJfZGF0YX0sDQo+ICAJe30sDQo+
ICB9Ow0KPiAgTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgbXRrX2Rpc3BfY2NvcnJfZHJpdmVyX2R0
X21hdGNoKTsNCg0K

