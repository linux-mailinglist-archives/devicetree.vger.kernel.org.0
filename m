Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12EB0567B5C
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 03:14:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229648AbiGFBOY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 21:14:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229562AbiGFBOX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 21:14:23 -0400
Received: from m151.mail.126.com (m151.mail.126.com [220.181.15.1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id D52B3DEC2
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 18:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
        s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=1jYni
        OYbZCdhXrN7s/jpU+KHQzVsNjtIfanMZUPDbcM=; b=cQwt/IH1FQrgC6DGncqrU
        LoHCTZaVBm6obKTxWEZRaUf6mXBKVKofohJGdmUtATDsrpk098Pp9/AyaepmHvhO
        njiaU63FmWy8SW6VkfK6BNfRpYtxHEXGa1IwczcSqI1uuUFoI7kP8IovpctS6hss
        eioJEhNtS1BPCEJ4ZLkh0g=
Received: from windhl$126.com ( [124.16.139.61] ) by ajax-webmail-wmsvr1
 (Coremail) ; Wed, 6 Jul 2022 09:14:13 +0800 (CST)
X-Originating-IP: [124.16.139.61]
Date:   Wed, 6 Jul 2022 09:14:13 +0800 (CST)
From:   "Liang He" <windhl@126.com>
To:     "Rob Herring" <robh@kernel.org>
Cc:     frowand.list@gmail.com, devicetree@vger.kernel.org,
        linmq006@gmail.com
Subject: Re:Re: [PATCH] of: device: Fix missing of_node_put() in
 of_dma_set_restricted_buffer
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20220113(9671e152)
 Copyright (c) 2002-2022 www.mailtech.cn 126com
In-Reply-To: <20220705144527.GA2048024-robh@kernel.org>
References: <20220702014449.263772-1-windhl@126.com>
 <20220705144527.GA2048024-robh@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=GBK
MIME-Version: 1.0
Message-ID: <636c1033.630.181d11266e0.Coremail.windhl@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: AcqowABXWbHl4cRiPmQfAA--.37726W
X-CM-SenderInfo: hzlqvxbo6rjloofrz/xtbBGgE2F1-HZchpLwABsI
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

CgoKCkF0IDIwMjItMDctMDUgMjI6NDU6MjcsICJSb2IgSGVycmluZyIgPHJvYmhAa2VybmVsLm9y
Zz4gd3JvdGU6Cj5PbiBTYXQsIEp1bCAwMiwgMjAyMiBhdCAwOTo0NDo0OUFNICswODAwLCBMaWFu
ZyBIZSB3cm90ZToKPj4gV2Ugc2hvdWxkIHVzZSBvZl9ub2RlX3B1dCgpIGZvciB0aGUgcmVmZXJl
bmNlICdub2RlJyByZXR1cm5lZCBieQo+PiBvZl9wYXJzZV9waGFuZGxlKCkgd2hpY2ggd2lsbCBp
bmNyZWFzZSB0aGUgcmVmY291bnQuCj4+IAo+PiBGaXhlczogZmVjOWI2MjUwOTVmICgib2Y6IEFk
ZCBwbHVtYmluZyBmb3IgcmVzdHJpY3RlZCBETUEgcG9vbCIpCj4+IENvLWF1dGhvcmVkLWJ5OiBN
aWFvcWlhbiBMaW4gPGxpbm1xMDA2QGdtYWlsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogTGlhbmcg
SGUgPHdpbmRobEAxMjYuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvb2YvZGV2aWNlLmMgfCA1ICsr
KystCj4+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+
IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9vZi9kZXZpY2UuYyBiL2RyaXZlcnMvb2YvZGV2aWNl
LmMKPj4gaW5kZXggODc0ZjAzMTQ0MmRjLi43NWI2Y2JmZmE3NTUgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvb2YvZGV2aWNlLmMKPj4gKysrIGIvZHJpdmVycy9vZi9kZXZpY2UuYwo+PiBAQCAtODEs
OCArODEsMTEgQEAgb2ZfZG1hX3NldF9yZXN0cmljdGVkX2J1ZmZlcihzdHJ1Y3QgZGV2aWNlICpk
ZXYsIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCj4+ICAJCSAqIHJlc3RyaWN0ZWQtZG1hLXBvb2wg
cmVnaW9uIGlzIGFsbG93ZWQuCj4+ICAJCSAqLwo+PiAgCQlpZiAob2ZfZGV2aWNlX2lzX2NvbXBh
dGlibGUobm9kZSwgInJlc3RyaWN0ZWQtZG1hLXBvb2wiKSAmJgo+PiAtCQkgICAgb2ZfZGV2aWNl
X2lzX2F2YWlsYWJsZShub2RlKSkKPj4gKwkJICAgIG9mX2RldmljZV9pc19hdmFpbGFibGUobm9k
ZSkpIHsKPj4gKwkJCW9mX25vZGVfcHV0KG5vZGUpOwo+PiAgCQkJYnJlYWs7Cj4+ICsJCX0KPj4g
KwkJb2Zfbm9kZV9wdXQobm9kZSk7Cj4KPlRoaXMgc2hvdWxkIGJlIGNvbnZlcnRlZCB0byB1c2Ug
b2ZfZm9yX2VhY2hfcGhhbmRsZSgpIGl0ZXJhdG9yIGluc3RlYWQuIAo+VGhhdCB0YWtlcyBjYXJl
IG9mIHRoZSBwdXQgaGVyZSAoYnV0IG5vdCBpbiB0aGUgYnJlYWspLgo+Cj5Sb2IKClRoYW5rcywg
Um9iLgoKV2UgdHJ5IHRvIHJld29yayB0aGUgbG9vcCB1c2luZyBvZl9mb3JfZWFjaF9waGFuZGxl
KCkuCgpUaGFua3MsCgpMaWFuZwo=
