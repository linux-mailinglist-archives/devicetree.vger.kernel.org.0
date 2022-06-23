Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1542A557FC8
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 18:28:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231933AbiFWQ2o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jun 2022 12:28:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232239AbiFWQ2n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jun 2022 12:28:43 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD003116D
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 09:28:42 -0700 (PDT)
Received: from [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf] (unknown [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits))
        (No client certificate requested)
        (Authenticated sender: obbardc)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id A52CB66017E2;
        Thu, 23 Jun 2022 17:28:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1656001721;
        bh=/dvQ4hO+tMgO+9JzQDZDVxJLXKm1MciSa7XN3QrkxhI=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=BmGq7Voh9YYwekuoGw55h3W01wIp4YKgxMmiZIO1uwY6ViaUFr4GxJIIbgafM0b0g
         LcgxV58/gcXi3qIKnAoJbvbjXfc728NVrFEeADhtBv9ct/ZQ0n+n4hhsR3U9BZR2z0
         2fAxyjCMkkHVZ8Ln+rDOzewruY3JxAyDB6YRc4qDrj1DJrzZKkYmrTdF7njwtf8tnE
         N+CRTdMLZOrazFOg3MCIjbT+8LqRhFjMztmIqM8V1O36LX8z2NW45pM+net1N3MTGL
         PTMkAz3/ZTQQ84U4KI3OJl5JzauOlo+fyQl1wNKASMZo3HNgwHznUziRDhJ+TFCtaG
         oAsU4cmvGO6PA==
Message-ID: <a3381d50f4c07f480ade2426620ee785952d3be2.camel@collabora.com>
Subject: Re: [PATCH 4/6] dt-bindings: mfd: syscon: Add rk3388 QoS register
 compatible
From:   Christopher Obbard <chris.obbard@collabora.com>
To:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@collabora.com
Date:   Thu, 23 Jun 2022 17:28:36 +0100
In-Reply-To: <20220623162309.243766-5-sebastian.reichel@collabora.com>
References: <20220623162309.243766-1-sebastian.reichel@collabora.com>
         <20220623162309.243766-5-sebastian.reichel@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.44.2-1 
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gVGh1LCAyMDIyLTA2LTIzIGF0IDE4OjIzICswMjAwLCBTZWJhc3RpYW4gUmVpY2hlbCB3cm90
ZToKPiBEb2N1bWVudCByazMzNjggY29tcGF0aWJsZSBmb3IgUW9TIHJlZ2lzdGVycy4KCkhleSBT
ZWJhc3RpYW4sCgpBbHNvIGxvb2tzIGxvb2tzIGxpa2UgdGhpcyAoYW5kIHRoZSBwYXRjaCBzdWJq
ZWN0KSBzaG91bGQgaW5zdGVhZCByZWZlcgp0byB0aGUgcmszNTg4ID8KClRoYW5rcyEKQ2hyaXMK
Cj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNv
bGxhYm9yYS5jb20+Cj4gLS0tCj4gwqBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bWZkL3N5c2Nvbi55YW1sIHwgMSArCj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykK
PiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9z
eXNjb24ueWFtbAo+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zeXNj
b24ueWFtbAo+IGluZGV4IGZiNzg0MDQ1MDEzZi4uZmYxYTdhYWUzM2YyIDEwMDY0NAo+IC0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3lzY29uLnlhbWwKPiArKysg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3N5c2Nvbi55YW1sCj4gQEAg
LTU5LDYgKzU5LDcgQEAgcHJvcGVydGllczoKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IC0gcm9ja2NoaXAscmszMzY4LXFvcwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBy
b2NrY2hpcCxyazMzOTktcW9zCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHJvY2tj
aGlwLHJrMzU2OC1xb3MKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSByb2NrY2hpcCxy
azM1ODgtcW9zCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHNhbXN1bmcsZXh5bm9z
My1zeXNyZWcKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gc2Ftc3VuZyxleHlub3M0
LXN5c3JlZwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBzYW1zdW5nLGV4eW5vczUt
c3lzcmVnCj4gLS0gCj4gMi4zNS4xCj4gCj4gCg==

