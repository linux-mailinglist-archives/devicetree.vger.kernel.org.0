Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D64B304B14
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 22:14:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728677AbhAZEw3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 23:52:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726853AbhAZCvB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 21:51:01 -0500
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [IPv6:2001:df5:b000:5::4])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1B1BC061788
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 18:50:18 -0800 (PST)
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (Client did not present a certificate)
        by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id DD99A891AF;
        Tue, 26 Jan 2021 15:50:15 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
        s=mail181024; t=1611629415;
        bh=k9401aC7q0YGthnZEVYbiDntaMaiJEser31FLW19xTI=;
        h=From:To:CC:Subject:Date:References:In-Reply-To;
        b=uZ0OdUVcZBk0QUOD1pxkTF9N5UEB3OY25+APSaye7kTZ8aW+urHnQkqUBbD0yFiU4
         XBlIEtrjnpHHNxDSur0VQoGnqMnnGY8b9pcxjiqx64ZDgDOvfx8aT04QNCYtcJy5Ln
         ykZLAEkKpIqHUSJqd70sbTuKQETE8e2w7TpqyCfIBTJzAonxwoNM5YPRCdk6TkWCyH
         Z+GDlZZZpkUtO+DaKASV/I+/5zoKmFxuGii9sk5Ejhd/0fhGICPPdyluYGnvwrio65
         p0wLd2p9HJtxUZgXDpA6zbhHs28znLFFDW9CBgamiUyThXY06ngutuUKLXA2HTM1QO
         5BTs21acAfTTQ==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by mmarshal3.atlnz.lc with Trustwave SEG (v7,5,8,10121)
        id <B600f83660001>; Tue, 26 Jan 2021 15:50:14 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Tue, 26 Jan 2021 15:50:13 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1497.010; Tue, 26 Jan 2021 15:50:13 +1300
From:   Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To:     Rob Herring <robh@kernel.org>, Russell King <linux@armlinux.org.uk>
CC:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Qi Zheng <arch0.zheng@gmail.com>
Subject: Re: [PATCH] ARM: zImage: atags_to_fdt: Fix node names on added root
 nodes
Thread-Topic: [PATCH] ARM: zImage: atags_to_fdt: Fix node names on added root
 nodes
Thread-Index: AQHW84xwlZl6qBJpAEuzuF8M0I/jXKo4WucA
Date:   Tue, 26 Jan 2021 02:50:12 +0000
Message-ID: <329a3043-a85f-8177-c3ad-a9c07604a266@alliedtelesis.co.nz>
References: <20210126023905.1631161-1-robh@kernel.org>
In-Reply-To: <20210126023905.1631161-1-robh@kernel.org>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.32.1.11]
Content-Type: text/plain; charset="utf-8"
Content-ID: <42A14DB5CF18694BBB97DE944FE50535@atlnz.lc>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SGkgUm9iLA0KDQpPbiAyNi8wMS8yMSAzOjM5IHBtLCBSb2IgSGVycmluZyB3cm90ZToNCj4gQ29t
bWl0IDc1MzZjN2UwM2U3NCAoIm9mL2ZkdDogUmVtb3ZlIHJlZHVuZGFudCBrYmFzZW5hbWUgZnVu
Y3Rpb24NCj4gY2FsbCIpIGV4cG9zZWQgYSBidWcgY3JlYXRpbmcgRFQgbm9kZXMgaW4gdGhlIEFU
QUdTIHRvIERUIGZpeHVwIGNvZGUuDQo+IE5vbi1leGlzdGVudCBub2RlcyB3b3VsZCBtaXN0YWtl
biBnZXQgY3JlYXRlZCB3aXRoIGEgbGVhZGluZyAnLycuIFRoZQ0KPiBwcm9ibGVtIHdhcyBmZHRf
cGF0aF9vZmZzZXQoKSB0YWtlcyBhIGZ1bGwgcGF0aCB3aGlsZSBjcmVhdGluZyBhIG5vZGUNCj4g
d2l0aCBmZHRfYWRkX3N1Ym5vZGUoKSB0YWtlcyBqdXN0IHRoZSBiYXNlbmFtZS4NCj4NCj4gU2lu
Y2UgdGhpcyB3ZSBvbmx5IGFkZCByb290IGNoaWxkIG5vZGVzLCB3ZSBjYW4ganVzdCBza2lwIG92
ZXIgdGhlICcvJy4NCj4NCj4gRml4ZXM6IDc1MzZjN2UwM2U3NCAoIm9mL2ZkdDogUmVtb3ZlIHJl
ZHVuZGFudCBrYmFzZW5hbWUgZnVuY3Rpb24gY2FsbCIpDQo+IFJlcG9ydGVkLWJ5OiBDaHJpcyBQ
YWNraGFtIDxjaHJpcy5wYWNraGFtQGFsbGllZHRlbGVzaXMuY28ubno+DQo+IENjOiBRaSBaaGVu
ZyA8YXJjaDAuemhlbmdAZ21haWwuY29tPg0KPiBDYzogUnVzc2VsbCBLaW5nIDxsaW51eEBhcm1s
aW51eC5vcmcudWs+DQo+IFNpZ25lZC1vZmYtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5v
cmc+DQoNClRoYW5rcyBmb3IgdGhlIHF1aWNrIHBhdGNoLiBJdCBkb2Vzbid0IHF1aXRlIHNlZW0g
dG8gd29yayBhcyBteSBzeXN0ZW0gDQpjYW4ndCBmaW5kIGl0J3MgaW5pdHJkIChpdCBjYW4gd2l0
aCBteSBvdGhlciBoYWNreSBwYXRjaCkuIEl0IGRvZXMgc2VlbSANCnRvIGdldCB0aGUgY29tbWFu
ZCBsaW5lIGluZm8gYXMgSSdtIGdldHRpbmcgcHJpbnRrIG91dHB1dC4NCg0KPiAtLS0NCj4gICBh
cmNoL2FybS9ib290L2NvbXByZXNzZWQvYXRhZ3NfdG9fZmR0LmMgfCAzICsrLQ0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4NCj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9hdGFnc190b19mZHQuYyBiL2FyY2gvYXJtL2Jv
b3QvY29tcHJlc3NlZC9hdGFnc190b19mZHQuYw0KPiBpbmRleCA4NDUyNzUzZWZlYmUuLjMxOTI3
ZDJmZTI5NyAxMDA2NDQNCj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL2F0YWdzX3Rv
X2ZkdC5jDQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9hdGFnc190b19mZHQuYw0K
PiBAQCAtMTUsNyArMTUsOCBAQCBzdGF0aWMgaW50IG5vZGVfb2Zmc2V0KHZvaWQgKmZkdCwgY29u
c3QgY2hhciAqbm9kZV9wYXRoKQ0KPiAgIHsNCj4gICAJaW50IG9mZnNldCA9IGZkdF9wYXRoX29m
ZnNldChmZHQsIG5vZGVfcGF0aCk7DQo+ICAgCWlmIChvZmZzZXQgPT0gLUZEVF9FUlJfTk9URk9V
TkQpDQo+IC0JCW9mZnNldCA9IGZkdF9hZGRfc3Vibm9kZShmZHQsIDAsIG5vZGVfcGF0aCk7DQo+
ICsJCS8qIEFkZCB0aGUgbm9kZSB0byByb290IGlmIG5vdCBmb3VuZCwgZHJvcHBpbmcgdGhlIGxl
YWRpbmcgJy8nICovDQo+ICsJCW9mZnNldCA9IGZkdF9hZGRfc3Vibm9kZShmZHQsIDAsIG5vZGVf
cGF0aCArIDEpOw0KPiAgIAlyZXR1cm4gb2Zmc2V0Ow0KPiAgIH0NCj4gICA=
