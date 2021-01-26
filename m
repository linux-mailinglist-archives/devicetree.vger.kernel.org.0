Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 631CC304D08
	for <lists+devicetree@lfdr.de>; Wed, 27 Jan 2021 00:01:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730235AbhAZXBR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jan 2021 18:01:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731591AbhAZU13 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jan 2021 15:27:29 -0500
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [IPv6:2001:df5:b000:5::4])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D361C0613D6
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 12:26:48 -0800 (PST)
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (Client did not present a certificate)
        by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 6A84E891AF;
        Wed, 27 Jan 2021 09:26:46 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
        s=mail181024; t=1611692806;
        bh=rKTlvrig6F23gJ6MA0qxcGgiQOpbCJQdgVElbweMJaA=;
        h=From:To:CC:Subject:Date:References:In-Reply-To;
        b=ZTlorIhTuYK8CphdLQl3j0rCYCsKO4jFc3E+s/gkjLmR5dJr06IBn21AG6K10OEbp
         F3TXSeNnFh/w6E+PCNnrtT5gPNvLdeaQrofDUYUdL3m0HHjFQAwEGl6LgauybJNWFB
         1kiXTCV3ShkTXXZFEQ/VhYgo0CTkROd0bliSUYOKvA4l2JNk2cWvVgGyL6IdX89s7u
         0kMKb/XAfYzEiliJYpS1bPjKvRw6hxW5WpYxHGQlBnx/dEpnAm8SqjQBHdF7DbBM5p
         OG4oLpeiSEGwQpG2XoEMcYkVztXy4CmAVCPSvL/gCzWTiZ8kmEJBRcAk958y09meFd
         MITf8o9ryBLCw==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by mmarshal3.atlnz.lc with Trustwave SEG (v7,5,8,10121)
        id <B60107b060001>; Wed, 27 Jan 2021 09:26:46 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Wed, 27 Jan 2021 09:26:45 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1497.010; Wed, 27 Jan 2021 09:26:45 +1300
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
Thread-Index: AQHW84xwlZl6qBJpAEuzuF8M0I/jXKo5ghkA
Date:   Tue, 26 Jan 2021 20:26:44 +0000
Message-ID: <ae23972c-500c-416a-05f0-daf6bc439313@alliedtelesis.co.nz>
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
Content-ID: <7EE50750D3152848A6AD0C2205A27BED@atlnz.lc>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQpPbiAyNi8wMS8yMSAzOjM5IHBtLCBSb2IgSGVycmluZyB3cm90ZToNCj4gQ29tbWl0IDc1MzZj
N2UwM2U3NCAoIm9mL2ZkdDogUmVtb3ZlIHJlZHVuZGFudCBrYmFzZW5hbWUgZnVuY3Rpb24NCj4g
Y2FsbCIpIGV4cG9zZWQgYSBidWcgY3JlYXRpbmcgRFQgbm9kZXMgaW4gdGhlIEFUQUdTIHRvIERU
IGZpeHVwIGNvZGUuDQo+IE5vbi1leGlzdGVudCBub2RlcyB3b3VsZCBtaXN0YWtlbiBnZXQgY3Jl
YXRlZCB3aXRoIGEgbGVhZGluZyAnLycuIFRoZQ0KPiBwcm9ibGVtIHdhcyBmZHRfcGF0aF9vZmZz
ZXQoKSB0YWtlcyBhIGZ1bGwgcGF0aCB3aGlsZSBjcmVhdGluZyBhIG5vZGUNCj4gd2l0aCBmZHRf
YWRkX3N1Ym5vZGUoKSB0YWtlcyBqdXN0IHRoZSBiYXNlbmFtZS4NCj4NCj4gU2luY2UgdGhpcyB3
ZSBvbmx5IGFkZCByb290IGNoaWxkIG5vZGVzLCB3ZSBjYW4ganVzdCBza2lwIG92ZXIgdGhlICcv
Jy4NCj4NCj4gRml4ZXM6IDc1MzZjN2UwM2U3NCAoIm9mL2ZkdDogUmVtb3ZlIHJlZHVuZGFudCBr
YmFzZW5hbWUgZnVuY3Rpb24gY2FsbCIpDQo+IFJlcG9ydGVkLWJ5OiBDaHJpcyBQYWNraGFtIDxj
aHJpcy5wYWNraGFtQGFsbGllZHRlbGVzaXMuY28ubno+DQo+IENjOiBRaSBaaGVuZyA8YXJjaDAu
emhlbmdAZ21haWwuY29tPg0KPiBDYzogUnVzc2VsbCBLaW5nIDxsaW51eEBhcm1saW51eC5vcmcu
dWs+DQo+IFNpZ25lZC1vZmYtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+DQoNClRo
YW5rcyBSb2IsDQoNClRlc3RlZC1ieTogQ2hyaXMgUGFja2hhbSA8Y2hyaXMucGFja2hhbUBhbGxp
ZWR0ZWxlc2lzLmNvLm56Pg0KPiAtLS0NCj4gICBhcmNoL2FybS9ib290L2NvbXByZXNzZWQvYXRh
Z3NfdG9fZmR0LmMgfCAzICsrLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvY29tcHJlc3Nl
ZC9hdGFnc190b19mZHQuYyBiL2FyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9hdGFnc190b19mZHQu
Yw0KPiBpbmRleCA4NDUyNzUzZWZlYmUuLjMxOTI3ZDJmZTI5NyAxMDA2NDQNCj4gLS0tIGEvYXJj
aC9hcm0vYm9vdC9jb21wcmVzc2VkL2F0YWdzX3RvX2ZkdC5jDQo+ICsrKyBiL2FyY2gvYXJtL2Jv
b3QvY29tcHJlc3NlZC9hdGFnc190b19mZHQuYw0KPiBAQCAtMTUsNyArMTUsOCBAQCBzdGF0aWMg
aW50IG5vZGVfb2Zmc2V0KHZvaWQgKmZkdCwgY29uc3QgY2hhciAqbm9kZV9wYXRoKQ0KPiAgIHsN
Cj4gICAJaW50IG9mZnNldCA9IGZkdF9wYXRoX29mZnNldChmZHQsIG5vZGVfcGF0aCk7DQo+ICAg
CWlmIChvZmZzZXQgPT0gLUZEVF9FUlJfTk9URk9VTkQpDQo+IC0JCW9mZnNldCA9IGZkdF9hZGRf
c3Vibm9kZShmZHQsIDAsIG5vZGVfcGF0aCk7DQo+ICsJCS8qIEFkZCB0aGUgbm9kZSB0byByb290
IGlmIG5vdCBmb3VuZCwgZHJvcHBpbmcgdGhlIGxlYWRpbmcgJy8nICovDQo+ICsJCW9mZnNldCA9
IGZkdF9hZGRfc3Vibm9kZShmZHQsIDAsIG5vZGVfcGF0aCArIDEpOw0KPiAgIAlyZXR1cm4gb2Zm
c2V0Ow0KPiAgIH0NCj4gICA=
