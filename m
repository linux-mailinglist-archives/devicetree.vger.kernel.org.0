Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E96E567FE9
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 09:34:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229891AbiGFHdv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 03:33:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229560AbiGFHdt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 03:33:49 -0400
Received: from m1564.mail.126.com (m1564.mail.126.com [220.181.15.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 28648E086
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 00:33:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
        s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=POupp
        jC3cngqO9HTotETLeehLz+Z+UWNmayUoGXTbxI=; b=hSQT4ldrVL/tkXdGeoDEq
        AnoRJg+sUK5nIwtSfwT348dYeVdd8DdoN1BFXyJ1qvliLo+/pQAZPO6NpIYdUqjO
        h3YusLjbEwFCoGjRxT6pKkZD/gYcpaDvHGxPmUcP+Fr/yqeven6jXNuVn6+Otxhy
        RTlkndwv7INAXscV/2Wny4=
Received: from windhl$126.com ( [124.16.139.61] ) by ajax-webmail-wmsvr64
 (Coremail) ; Wed, 6 Jul 2022 15:33:36 +0800 (CST)
X-Originating-IP: [124.16.139.61]
Date:   Wed, 6 Jul 2022 15:33:36 +0800 (CST)
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
Message-ID: <4faba661.4c9a.181d26dbd0d.Coremail.windhl@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: QMqowAAnL3PROsVi04pGAA--.50116W
X-CM-SenderInfo: hzlqvxbo6rjloofrz/1tbi2hA2F1uwMWkIEAACsC
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

CgpBdCAyMDIyLTA3LTA1IDIyOjQ1OjI3LCAiUm9iIEhlcnJpbmciIDxyb2JoQGtlcm5lbC5vcmc+
IHdyb3RlOgo+T24gU2F0LCBKdWwgMDIsIDIwMjIgYXQgMDk6NDQ6NDlBTSArMDgwMCwgTGlhbmcg
SGUgd3JvdGU6Cj4+IFdlIHNob3VsZCB1c2Ugb2Zfbm9kZV9wdXQoKSBmb3IgdGhlIHJlZmVyZW5j
ZSAnbm9kZScgcmV0dXJuZWQgYnkKPj4gb2ZfcGFyc2VfcGhhbmRsZSgpIHdoaWNoIHdpbGwgaW5j
cmVhc2UgdGhlIHJlZmNvdW50Lgo+PiAKPj4gRml4ZXM6IGZlYzliNjI1MDk1ZiAoIm9mOiBBZGQg
cGx1bWJpbmcgZm9yIHJlc3RyaWN0ZWQgRE1BIHBvb2wiKQo+PiBDby1hdXRob3JlZC1ieTogTWlh
b3FpYW4gTGluIDxsaW5tcTAwNkBnbWFpbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IExpYW5nIEhl
IDx3aW5kaGxAMTI2LmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL29mL2RldmljZS5jIHwgNSArKysr
LQo+PiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+PiAK
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvb2YvZGV2aWNlLmMgYi9kcml2ZXJzL29mL2RldmljZS5j
Cj4+IGluZGV4IDg3NGYwMzE0NDJkYy4uNzViNmNiZmZhNzU1IDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL29mL2RldmljZS5jCj4+ICsrKyBiL2RyaXZlcnMvb2YvZGV2aWNlLmMKPj4gQEAgLTgxLDgg
KzgxLDExIEBAIG9mX2RtYV9zZXRfcmVzdHJpY3RlZF9idWZmZXIoc3RydWN0IGRldmljZSAqZGV2
LCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQo+PiAgCQkgKiByZXN0cmljdGVkLWRtYS1wb29sIHJl
Z2lvbiBpcyBhbGxvd2VkLgo+PiAgCQkgKi8KPj4gIAkJaWYgKG9mX2RldmljZV9pc19jb21wYXRp
YmxlKG5vZGUsICJyZXN0cmljdGVkLWRtYS1wb29sIikgJiYKPj4gLQkJICAgIG9mX2RldmljZV9p
c19hdmFpbGFibGUobm9kZSkpCj4+ICsJCSAgICBvZl9kZXZpY2VfaXNfYXZhaWxhYmxlKG5vZGUp
KSB7Cj4+ICsJCQlvZl9ub2RlX3B1dChub2RlKTsKPj4gIAkJCWJyZWFrOwo+PiArCQl9Cj4+ICsJ
CW9mX25vZGVfcHV0KG5vZGUpOwo+Cj5UaGlzIHNob3VsZCBiZSBjb252ZXJ0ZWQgdG8gdXNlIG9m
X2Zvcl9lYWNoX3BoYW5kbGUoKSBpdGVyYXRvciBpbnN0ZWFkLiAKPlRoYXQgdGFrZXMgY2FyZSBv
ZiB0aGUgcHV0IGhlcmUgKGJ1dCBub3QgaW4gdGhlIGJyZWFrKS4KPgo+Um9iCgpIaSwgUm9iLgoK
QWZ0ZXIgSSBjYXJlZnVsbHkgcmVhZCB0aGUgaW1wbGVtZW50YXRpb24gb2Ygb2ZfZm9yX2VhY2hf
cGhhbmRsZSgpIGFuZCBvZl9wYXJzZV9waGFuZGxlKCksCkkgdGhpbmsgaXQgaXMgYmV0dGVyIHRv
IGtlZXAgY3VycmVudCBjb2Rpbmcgc3R5bGUgYXMgaXQgd2lsbCBjaGFuZ2UgYSBsb3Qgb2YgY3Vy
cmVudCBjb2RlLgoKQmVzaWRlcywgdGhlIGxvb3AgaW5kZXggJ2knIHdpbGwgYmUgdXNlZCBpbiBm
b2xsb3dpbmcgb2ZfcmVzZXJ2ZWRfbWVtX2RldmljZV9pbml0X2J5X2lkeCgpLCBzbwpJIGNhbm5v
dCBnaXZlIGEgc2ltcGxlIGFuZCBjb3JyZWN0IHdheSB0byB1c2Ugb2ZfZm9yX2VhY2hfcGhhbmRs
ZSgpLgoKVGhhbmtzLCAKCkxpYW5nCg==
