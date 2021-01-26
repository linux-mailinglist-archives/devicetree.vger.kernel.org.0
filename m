Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B504B30584B
	for <lists+devicetree@lfdr.de>; Wed, 27 Jan 2021 11:25:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S313588AbhAZXBN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jan 2021 18:01:13 -0500
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20]:50072 "EHLO
        gate2.alliedtelesis.co.nz" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729356AbhAZU05 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jan 2021 15:26:57 -0500
X-Greylist: delayed 64297 seconds by postgrey-1.27 at vger.kernel.org; Tue, 26 Jan 2021 15:26:56 EST
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (Client did not present a certificate)
        by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 97068891AE;
        Wed, 27 Jan 2021 09:26:01 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
        s=mail181024; t=1611692761;
        bh=Uc+sbTNx0GLcEiykqP/dbDEH+LGhadiKUZ0d1aPtToM=;
        h=From:To:CC:Subject:Date:References:In-Reply-To;
        b=jCy0bxl5orihLgQ6KSyNpCosLXVQOSVSCq2OO85oxezDmLb8Uo9o05giTJ4TABR6T
         vk3WsCPrOwiLHqC51W8QrqQDbsQBBzKYOVYx1/QNFGFWGgZDNXxH496G0A6S751KQV
         Dcs22OgU8JshJOrdDf8LHIhS2+WjXq9sw/1vR+EOu1IHqg2EdmN/2cYP7qkdKHPjro
         sszkGn16jjB26XS0Aqxlmkx6awf0TqXJ/EbTtbBrOkiufc/lckILEx/TGAdi8y4oW0
         HZiYGqbmZH9KFwF87rVCR4/+KnLGI59TTrq9owBjkJ+PmGdgTE9rOfbsLd7hSYxIxn
         GLY6ycWI7XG2g==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by mmarshal3.atlnz.lc with Trustwave SEG (v7,5,8,10121)
        id <B60107ada0001>; Wed, 27 Jan 2021 09:26:02 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Wed, 27 Jan 2021 09:26:01 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1497.010; Wed, 27 Jan 2021 09:26:01 +1300
From:   Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To:     Rob Herring <robh@kernel.org>
CC:     Russell King <linux@armlinux.org.uk>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Qi Zheng <arch0.zheng@gmail.com>
Subject: Re: [PATCH] ARM: zImage: atags_to_fdt: Fix node names on added root
 nodes
Thread-Topic: [PATCH] ARM: zImage: atags_to_fdt: Fix node names on added root
 nodes
Thread-Index: AQHW84xwlZl6qBJpAEuzuF8M0I/jXKo4WucAgADCIACAAGJDgIAAApoA
Date:   Tue, 26 Jan 2021 20:26:00 +0000
Message-ID: <5eb47de6-16b0-7ee2-1c3f-4de73570e575@alliedtelesis.co.nz>
References: <20210126023905.1631161-1-robh@kernel.org>
 <329a3043-a85f-8177-c3ad-a9c07604a266@alliedtelesis.co.nz>
 <CAL_JsqLHrd40WqqMEZU0NqgVNLS2rw1u_SgR26dt3nw3mCsr3w@mail.gmail.com>
 <9ae5d166-1183-f1fc-b255-f4497d321d29@alliedtelesis.co.nz>
In-Reply-To: <9ae5d166-1183-f1fc-b255-f4497d321d29@alliedtelesis.co.nz>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.32.1.11]
Content-Type: text/plain; charset="utf-8"
Content-ID: <7E225722E51E1842A7E166AFEE665D68@atlnz.lc>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQpPbiAyNy8wMS8yMSA5OjE2IGFtLCBDaHJpcyBQYWNraGFtIHdyb3RlOg0KPiBIaSBSb2INCj4N
Cj4gT24gMjcvMDEvMjEgMzoyNSBhbSwgUm9iIEhlcnJpbmcgd3JvdGU6DQo+PiBPbiBNb24sIEph
biAyNSwgMjAyMSBhdCA4OjUwIFBNIENocmlzIFBhY2toYW0NCj4+IDxDaHJpcy5QYWNraGFtQGFs
bGllZHRlbGVzaXMuY28ubno+IHdyb3RlOg0KPj4+IEhpIFJvYiwNCj4+Pg0KPj4+IE9uIDI2LzAx
LzIxIDM6MzkgcG0sIFJvYiBIZXJyaW5nIHdyb3RlOg0KPj4+PiBDb21taXQgNzUzNmM3ZTAzZTc0
ICgib2YvZmR0OiBSZW1vdmUgcmVkdW5kYW50IGtiYXNlbmFtZSBmdW5jdGlvbg0KPj4+PiBjYWxs
IikgZXhwb3NlZCBhIGJ1ZyBjcmVhdGluZyBEVCBub2RlcyBpbiB0aGUgQVRBR1MgdG8gRFQgZml4
dXAgY29kZS4NCj4+Pj4gTm9uLWV4aXN0ZW50IG5vZGVzIHdvdWxkIG1pc3Rha2VuIGdldCBjcmVh
dGVkIHdpdGggYSBsZWFkaW5nICcvJy4gVGhlDQo+Pj4+IHByb2JsZW0gd2FzIGZkdF9wYXRoX29m
ZnNldCgpIHRha2VzIGEgZnVsbCBwYXRoIHdoaWxlIGNyZWF0aW5nIGEgbm9kZQ0KPj4+PiB3aXRo
IGZkdF9hZGRfc3Vibm9kZSgpIHRha2VzIGp1c3QgdGhlIGJhc2VuYW1lLg0KPj4+Pg0KPj4+PiBT
aW5jZSB0aGlzIHdlIG9ubHkgYWRkIHJvb3QgY2hpbGQgbm9kZXMsIHdlIGNhbiBqdXN0IHNraXAg
b3ZlciB0aGUgDQo+Pj4+ICcvJy4NCj4+Pj4NCj4+Pj4gRml4ZXM6IDc1MzZjN2UwM2U3NCAoIm9m
L2ZkdDogUmVtb3ZlIHJlZHVuZGFudCBrYmFzZW5hbWUgZnVuY3Rpb24gDQo+Pj4+IGNhbGwiKQ0K
Pj4+PiBSZXBvcnRlZC1ieTogQ2hyaXMgUGFja2hhbSA8Y2hyaXMucGFja2hhbUBhbGxpZWR0ZWxl
c2lzLmNvLm56Pg0KPj4+PiBDYzogUWkgWmhlbmcgPGFyY2gwLnpoZW5nQGdtYWlsLmNvbT4NCj4+
Pj4gQ2M6IFJ1c3NlbGwgS2luZyA8bGludXhAYXJtbGludXgub3JnLnVrPg0KPj4+PiBTaWduZWQt
b2ZmLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPg0KPj4+IFRoYW5rcyBmb3IgdGhl
IHF1aWNrIHBhdGNoLiBJdCBkb2Vzbid0IHF1aXRlIHNlZW0gdG8gd29yayBhcyBteSBzeXN0ZW0N
Cj4+PiBjYW4ndCBmaW5kIGl0J3MgaW5pdHJkIChpdCBjYW4gd2l0aCBteSBvdGhlciBoYWNreSBw
YXRjaCkuIEl0IGRvZXMgc2VlbQ0KPj4+IHRvIGdldCB0aGUgY29tbWFuZCBsaW5lIGluZm8gYXMg
SSdtIGdldHRpbmcgcHJpbnRrIG91dHB1dC4NCj4+IFRoYXQgZG9lc24ndCBtYWtlIHNlbnNlLiBD
YW4geW91IGVuYWJsZSBkZWJ1ZyBpbiBkcml2ZXJzL29mL2ZkdC5jLg0KPiBJJ3ZlIGF0dGFjaGVk
IHR3byBjYXB0dXJlcyB3aXRoIERFQlVHIGVuYWJsZWQgaW4gZHJpdmVycy9vZi9mZHQuYy4gT25l
IA0KPiB3aXRoIHlvdXIgcGF0Y2ggYW5kIG9uZSB3aXRoIG1pbmUuIEkgbm90ZSB0aGF0IGluIHlv
dXIgb25lIHdlIGRvIA0KPiBhY3R1YWxseSBwaWNrIHVwIGluaXRyZF9zdGFydC9pbml0cmRfZW5k
IGJ1dCB0aGVuIGl0IGdldHMgZGlzYWJsZWQgZm9yIA0KPiBzb21lIHJlYXNvbiAocG9zc2libHkg
b3RoZXIgY2hhbmdlcyB3ZSBoYXZlIGluIG91ciBrZXJuZWwpLg0KDQpTdXJlIGVub3VnaCBJIHR1
cm5lZCBvZmYgb3VyICJzcGVjaWFsIiBjb2RlIGFuZCBpdCBhbGwgd29ya3MgYXMgDQpleHBlY3Rl
ZC4gSSdsbCByZXBseSBiYWNrIHRvIHRoZSBvcmlnaW5hbCBjaGFuZ2Ugd2l0aCBteSBUZXN0ZWQt
Ynk6Lg0KDQo=
