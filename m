Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5017A557FC5
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 18:27:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230512AbiFWQ1h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jun 2022 12:27:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230372AbiFWQ1h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jun 2022 12:27:37 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6B404504A
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 09:27:36 -0700 (PDT)
Received: from [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf] (unknown [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: obbardc)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 7743D66017DF;
        Thu, 23 Jun 2022 17:27:35 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1656001655;
        bh=NOXLDQQY6Qn46K8ua35Qrcynf4RZ6XTgqmLQiP/tZug=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=jxIe5hH63c4ixjHF1Fb4jD9WAMxdBVpKG/VAckQVzflbokqt0Yr9XRpRpLUq9hql5
         nrf+BW6g2ApHq8033G5a6GXH4ttFVnykgK9qNnlYu/hJ9s6ydQFyqEeII6TblSqCD5
         9fTFZszKby9bvldzd6brdP9uIAds7lyxN3J6ojllAVClGbVLserC9yvFU9cGbyve74
         NqfTECT9KS6SYa9oWvcgo/q92iCuwK0LZKbpvFvAsP3wlIP46jMaDYayzI9x9gxpq1
         SwlvPpdbTxFZxKqQx6gcIXF/CaJU4U6Raf1WE1/wbAwc+CAC33e/poRcpbmAPVOrFc
         TxT05X6Lr2Iog==
Message-ID: <04dbb1c6451c2baef84c48d5aa812039c94593d1.camel@collabora.com>
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
Date:   Thu, 23 Jun 2022 17:27:31 +0100
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
ZWJhc3RpYW4sCgpMb29rcyBsaWtlIHRoaXMgKGFuZCB0aGUgcGF0Y2ggc3ViamVjdCkgc2hvdWxk
IGluc3RlYWQgcmVmZXIgdG8gdGhlCnJrMzU4OCA/CgpUaGFua3MhCkNocmlzCgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEu
Y29tPgo+IC0tLQo+IMKgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zeXNj
b24ueWFtbCB8IDEgKwo+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3lzY29uLnlh
bWwKPiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3lzY29uLnlhbWwK
PiBpbmRleCBmYjc4NDA0NTAxM2YuLmZmMWE3YWFlMzNmMiAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3N5c2Nvbi55YW1sCj4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zeXNjb24ueWFtbAo+IEBAIC01OSw2ICs1
OSw3IEBAIHByb3BlcnRpZXM6Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHJvY2tj
aGlwLHJrMzM2OC1xb3MKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcm9ja2NoaXAs
cmszMzk5LXFvcwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSByb2NrY2hpcCxyazM1
NjgtcW9zCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcm9ja2NoaXAscmszNTg4LXFv
cwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBzYW1zdW5nLGV4eW5vczMtc3lzcmVn
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHNhbXN1bmcsZXh5bm9zNC1zeXNyZWcK
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gc2Ftc3VuZyxleHlub3M1LXN5c3JlZwo+
IC0tIAo+IDIuMzUuMQo+IAo+IAo=

