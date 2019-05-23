Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5154E278A4
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2019 11:01:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726081AbfEWJBD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 05:01:03 -0400
Received: from skedge04.snt-world.com ([91.208.41.69]:42658 "EHLO
        skedge04.snt-world.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725814AbfEWJBD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 May 2019 05:01:03 -0400
Received: from sntmail12r.snt-is.com (unknown [10.203.32.182])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by skedge04.snt-world.com (Postfix) with ESMTPS id 9BAD766118D;
        Thu, 23 May 2019 11:01:00 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail12r.snt-is.com
 (10.203.32.182) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 23 May
 2019 11:01:00 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Thu, 23 May 2019 11:01:00 +0200
From:   Schrempf Frieder <frieder.schrempf@kontron.de>
To:     Shawn Guo <shawnguo@kernel.org>,
        Kuldeep Singh <kuldeep.singh@nxp.com>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
        Ashish Kumar <ashish.kumar@nxp.com>,
        "broonie@kernel.org" <broonie@kernel.org>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] arm64: dts: ls1012a: Add QSPI support for ls1012a
Thread-Topic: [PATCH] arm64: dts: ls1012a: Add QSPI support for ls1012a
Thread-Index: AQHVC90UTCiz+BGzB0G+bjSJzqfmRKZ4Tf4AgAAE1IA=
Date:   Thu, 23 May 2019 09:01:00 +0000
Message-ID: <d3605699-24ea-a071-93da-1c04c7e40f1b@kontron.de>
References: <20190516114807.30817-1-kuldeep.singh@nxp.com>
 <20190523084340.GM9261@dragon>
In-Reply-To: <20190523084340.GM9261@dragon>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-Type: text/plain; charset="utf-8"
Content-ID: <A79DD735F1818C4ABCA6F0E3CB9F53EC@snt-world.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 9BAD766118D.AEB2F
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: ashish.kumar@nxp.com, bbrezillon@kernel.org,
        broonie@kernel.org, devicetree@vger.kernel.org,
        kuldeep.singh@nxp.com, linux-arm-kernel@lists.infradead.org,
        linux-mtd@lists.infradead.org, shawnguo@kernel.org
X-Spam-Status: No
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gMjMuMDUuMTkgMTA6NDMsIFNoYXduIEd1byB3cm90ZToNCj4gT24gVGh1LCBNYXkgMTYsIDIw
MTkgYXQgMTE6NDc6MDRBTSArMDAwMCwgS3VsZGVlcCBTaW5naCB3cm90ZToNCj4+IFFTUEkgc3Vw
cG9ydCBpcyBhZGRlZCBmb3Iga2VybmVsIHZlcnNpb24gZ3JlYXRlciB0aGFuIDUuMCBhbmQgc3Vw
cG9ydHMNCj4+IHF1YWQgbW9kZSBkZWZpbmVkIGJ5DQo+PiBUWC1XSURUSCA9IDw0PiwgUlgtV0lE
VEggPSA8ND4NCj4+DQo+PiBSREIvUURTIGhhcyBvbmUgNjRNQiBmbGFzaCBmcm9tIFNQQU5TSU9O
KHMyNWZzNTEycykNCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBBc2hpc2ggS3VtYXIgPGFzaGlzaC5r
dW1hckBueHAuY29tPg0KPj4gU2lnbmVkLW9mZi1ieTogS3VsZGVlcCBTaW5naCA8a3VsZGVlcC5z
aW5naEBueHAuY29tPg0KPj4gLS0tDQo+PiBEZXBlbmRlbmN5IG9uIGh0dHBzOi8vcGF0Y2h3b3Jr
Lm96bGFicy5vcmcvcGF0Y2gvMTEwMDQ3MS8NCj4+IERlcGVuZGVuY3kgb24gaHR0cHM6Ly9wYXRj
aHdvcmsub3psYWJzLm9yZy9wYXRjaC8xMTAwNDcyLw0KPj4NCj4+ICAgLi4uL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDEyYS1mcmRtLmR0cyB8IDE1ICsrKysrKysrKysrKysrKw0K
Pj4gICAuLi4vYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMTJhLWZyd3kuZHRzIHwg
MTUgKysrKysrKysrKysrKysrDQo+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2Zz
bC1sczEwMTJhLXFkcy5kdHMgfCAxNSArKysrKysrKysrKysrKysNCj4+ICAgYXJjaC9hcm02NC9i
b290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAxMmEtcmRiLmR0cyB8IDE1ICsrKysrKysrKysrKysr
Kw0KPj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDEyYS5kdHNpICAg
IHwgMTUgKysrKysrKysrKysrKysrDQo+PiAgIDUgZmlsZXMgY2hhbmdlZCwgNzUgaW5zZXJ0aW9u
cygrKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9m
c2wtbHMxMDEyYS1mcmRtLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1s
czEwMTJhLWZyZG0uZHRzDQo+PiBpbmRleCBmOTBjMDQwZmQ1ZTguLjg4MjYyNzhiMzdiZiAxMDA2
NDQNCj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMTJhLWZy
ZG0uZHRzDQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDEy
YS1mcmRtLmR0cw0KPj4gQEAgLTYxLDYgKzYxLDIxIEBADQo+PiAgIAlzdGF0dXMgPSAib2theSI7
DQo+PiAgIH07DQo+PiAgIA0KPj4gKyZxc3BpIHsNCj4gDQo+IFBsZWFzZSBzb3J0IHRoZXNlIGxh
YmVsaW5nIG5vZGVzIGFscGhhYmV0aWNhbGx5LiAgVGhhdCBzYWlkLCAmcXNwaQ0KPiBzaG91bGQg
Z28gYWZ0ZXIgJmkyYzAuDQo+IA0KPj4gKwlzdGF0dXMgPSAib2theSI7DQo+PiArDQo+PiArCXFm
bGFzaDA6IGZsYXNoQDAgew0KPj4gKwkJY29tcGF0aWJsZSA9ICJzcGFuc2lvbixtMjVwODAiLCAi
amVkZWMsc3BpLW5vciI7DQo+PiArCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsNCj4+ICsJCSNzaXpl
LWNlbGxzID0gPDE+Ow0KPj4gKwkJbTI1cCxmYXN0LXJlYWQ7DQo+PiArCQlzcGktbWF4LWZyZXF1
ZW5jeSA9IDwyMDAwMDAwMD47DQo+PiArCQlzcGktcngtYnVzLXdpZHRoID0gPDQ+Ow0KPj4gKwkJ
c3BpLXR4LWJ1cy13aWR0aCA9IDw0PjsNCj4+ICsJCXJlZyA9IDwwPjsNCj4+ICsJfTsNCj4+ICt9
Ow0KPj4gKw0KPj4gICAmaTJjMCB7DQo+PiAgIAlzdGF0dXMgPSAib2theSI7DQo+PiAgIA0KPj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMTJhLWZy
d3kuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAxMmEtZnJ3eS5k
dHMNCj4+IGluZGV4IDg3NDk2MzRjNTVlZS4uMDI0NmU4Yzk3NjI4IDEwMDY0NA0KPj4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAxMmEtZnJ3eS5kdHMNCj4+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMTJhLWZyd3kuZHRzDQo+
PiBAQCAtMjAsNiArMjAsMjEgQEANCj4+ICAgCXN0YXR1cyA9ICJva2F5IjsNCj4+ICAgfTsNCj4+
ICAgDQo+PiArJnFzcGkgew0KPj4gKwlzdGF0dXMgPSAib2theSI7DQo+PiArDQo+PiArCXFmbGFz
aDA6IGZsYXNoQDAgew0KPj4gKwkJY29tcGF0aWJsZSA9ICJzcGFuc2lvbixtMjVwODAiLCAiamVk
ZWMsc3BpLW5vciI7DQo+PiArCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsNCj4+ICsJCSNzaXplLWNl
bGxzID0gPDE+Ow0KPj4gKwkJbTI1cCxmYXN0LXJlYWQ7DQo+PiArCQlzcGktbWF4LWZyZXF1ZW5j
eSA9IDwyMDAwMDAwMD47DQo+PiArCQlzcGktcngtYnVzLXdpZHRoID0gPDQ+Ow0KPj4gKwkJc3Bp
LXR4LWJ1cy13aWR0aCA9IDw0PjsNCj4+ICsJCXJlZyA9IDwwPjsNCj4+ICsJfTsNCj4+ICt9Ow0K
Pj4gKw0KPj4gICAmaTJjMCB7DQo+PiAgIAlzdGF0dXMgPSAib2theSI7DQo+PiAgIH07DQo+PiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAxMmEtcWRz
LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMTJhLXFkcy5kdHMN
Cj4+IGluZGV4IDJmYjFjYjFmN2Q4Zi4uYzMwNGZhMjBjMWM5IDEwMDY0NA0KPj4gLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAxMmEtcWRzLmR0cw0KPj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAxMmEtcWRzLmR0cw0KPj4gQEAg
LTkwLDYgKzkwLDIxIEBADQo+PiAgIAl9Ow0KPj4gICB9Ow0KPj4gICANCj4+ICsmcXNwaSB7DQo+
PiArCXN0YXR1cyA9ICJva2F5IjsNCj4+ICsNCj4+ICsJcWZsYXNoMDogZmxhc2hAMCB7DQo+PiAr
CQljb21wYXRpYmxlID0gInNwYW5zaW9uLG0yNXA4MCIsICJqZWRlYyxzcGktbm9yIjsNCj4+ICsJ
CSNhZGRyZXNzLWNlbGxzID0gPDE+Ow0KPj4gKwkJI3NpemUtY2VsbHMgPSA8MT47DQo+PiArCQlt
MjVwLGZhc3QtcmVhZDsNCj4+ICsJCXNwaS1tYXgtZnJlcXVlbmN5ID0gPDIwMDAwMDAwPjsNCj4+
ICsJCXNwaS1yeC1idXMtd2lkdGggPSA8ND47DQo+PiArCQlzcGktdHgtYnVzLXdpZHRoID0gPDQ+
Ow0KPj4gKwkJcmVnID0gPDA+Ow0KPj4gKwl9Ow0KPj4gK307DQo+PiArDQo+PiAgICZkdWFydDAg
ew0KPj4gICAJc3RhdHVzID0gIm9rYXkiOw0KPj4gICB9Ow0KPj4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMTJhLXJkYi5kdHMgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDEyYS1yZGIuZHRzDQo+PiBpbmRleCA1ZWRiMWUx
MzdhNTIuLjYwMTdlOWNmZTQwYSAxMDA2NDQNCj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
ZnJlZXNjYWxlL2ZzbC1sczEwMTJhLXJkYi5kdHMNCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvZnJlZXNjYWxlL2ZzbC1sczEwMTJhLXJkYi5kdHMNCj4+IEBAIC0zOCwzICszOCwxOCBAQA0K
Pj4gICAmc2F0YSB7DQo+PiAgIAlzdGF0dXMgPSAib2theSI7DQo+PiAgIH07DQo+PiArDQo+PiAr
JnFzcGkgew0KPj4gKwlzdGF0dXMgPSAib2theSI7DQo+PiArDQo+PiArCXFmbGFzaDA6IGZsYXNo
QDAgIHsNCj4+ICsJCWNvbXBhdGlibGUgPSAic3BhbnNpb24sbTI1cDgwIiwgImplZGVjLHNwaS1u
b3IiOw0KPj4gKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47DQo+PiArCQkjc2l6ZS1jZWxscyA9IDwx
PjsNCj4+ICsJCW0yNXAsZmFzdC1yZWFkOw0KPj4gKwkJc3BpLW1heC1mcmVxdWVuY3kgPSA8MjAw
MDAwMDA+Ow0KPj4gKwkJc3BpLXJ4LWJ1cy13aWR0aCA9IDw0PjsNCj4+ICsJCXNwaS10eC1idXMt
d2lkdGggPSA8ND47DQo+PiArCQlyZWcgPSA8MD47DQo+PiArCX07DQo+PiArfTsNCj4+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDEyYS5kdHNpIGIv
YXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAxMmEuZHRzaQ0KPj4gaW5kZXgg
ZWM2MjU3YTViMjUxLi4yNjgyNjhjNmExNDkgMTAwNjQ0DQo+PiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDEyYS5kdHNpDQo+PiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDEyYS5kdHNpDQo+PiBAQCAtMzUwLDYgKzM1MCwyMSBA
QA0KPj4gICAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOw0KPj4gICAJCX07DQo+PiAgIA0KPj4gKwkJ
cXNwaTogc3BpQDE1NTAwMDAgew0KPiANCj4gUGxlYXNlIHNvcnQgbm9kZSB3aXRoIHVuaXQtYWRk
cmVzcyBpbiB0aGF0IGFkZHJlc3MuICBUaGF0IHNhaWQsIGl0DQo+IHNob3VsZCBnbyBiZWZvcmUg
ZXNkaGNAMTU2MDAwMC4NCj4gDQo+PiArCQkJY29tcGF0aWJsZSA9ICJmc2wsbHMxMDIxYS1xc3Bp
IiwgImZzbCxsczEwMTJhLXFzcGkiOw0KPj4gKwkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Ow0KPj4g
KwkJCSNzaXplLWNlbGxzID0gPDA+Ow0KPj4gKwkJCXJlZyA9IDwweDAgMHgxNTUwMDAwIDB4MCAw
eDEwMDAwPiwNCj4+ICsJCQkJPDB4MCAweDQwMDAwMDAwIDB4MCAweDEwMDAwMDAwPjsNCj4+ICsJ
CQlyZWctbmFtZXMgPSAiUXVhZFNQSSIsICJRdWFkU1BJLW1lbW9yeSI7DQo+PiArCQkJaW50ZXJy
dXB0cyA9IDxHSUNfU1BJIDk5IElSUV9UWVBFX0xFVkVMX0hJR0g+Ow0KPj4gKwkJCWNsb2NrLW5h
bWVzID0gInFzcGlfZW4iLCAicXNwaSI7DQo+PiArCQkJY2xvY2tzID0gPCZjbG9ja2dlbiA0IDE+
LCA8JmNsb2NrZ2VuIDQgMT47DQo+PiArCQkJYmlnLWVuZGlhbjsNCj4+ICsJCQlmc2wscXNwaS1o
YXMtc2Vjb25kLWNoaXA7DQo+IA0KPiBVbmRvY3VtZW50ZWQgcHJvcGVydHk/DQoNCkJvdGggcHJv
cGVydGllcywgImZzbCxxc3BpLWhhcy1zZWNvbmQtY2hpcCIgYW5kICJiaWctZW5kaWFuIiBhcmUg
ZGVwcmVjYXRlZC4NCg0KU2VlOiANCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51
eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQvP2lkPTc4ZGYzMDgwODk2MWNk
MzJmMDUxN2M3NDY5ODg2Mzg2YjA2ODA4NTI=
