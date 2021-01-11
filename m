Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A5A22F0DAC
	for <lists+devicetree@lfdr.de>; Mon, 11 Jan 2021 09:14:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727741AbhAKIMk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jan 2021 03:12:40 -0500
Received: from mailgw02.mediatek.com ([210.61.82.184]:45304 "EHLO
        mailgw02.mediatek.com" rhost-flags-OK-FAIL-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726573AbhAKIMk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jan 2021 03:12:40 -0500
X-UUID: de6546c24db14d03a9a47be237e57bce-20210111
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
        h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID; bh=hfz1Dwq0tE2ZcwV0URZ7GdXGBVL9FzFRfW0ZiLdnv8k=;
        b=YyNDaOwnoaLhZQG8xA6S6/EYNU0ishjZUqTqRBI3xxr4lFShKtz2mrtVPtnMU6+lo4X2KQ0AcFPVFrEQYyOQS+mLKR822G1BEsQrOwnXWu48uYwZA3Trxu7aEh6966NiuT9qKixwvwFwbzB3hBwrk1+qpRdNao/RO26DvALyJo4=;
X-UUID: de6546c24db14d03a9a47be237e57bce-20210111
Received: from mtkcas10.mediatek.inc [(172.21.101.39)] by mailgw02.mediatek.com
        (envelope-from <skylake.huang@mediatek.com>)
        (Cellopoint E-mail Firewall v4.1.14 Build 0819 with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
        with ESMTP id 498455777; Mon, 11 Jan 2021 16:11:55 +0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 11 Jan 2021 16:11:54 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 11 Jan 2021 16:11:54 +0800
Message-ID: <1610352714.9738.14.camel@mtksdccf07>
Subject: Re: FW: [PATCH] dts64: mt7622: fix slow sd card access
From:   SkyLake Huang <skylake.huang@mediatek.com>
To:     <linux-mediatek@lists.infradead.org>
CC:     <devicetree@vger.kernel.org>
Date:   Mon, 11 Jan 2021 16:11:54 +0800
In-Reply-To: <630fc8584a2f426d9fce6b900a337918@mtkmbs05n1.mediatek.inc>
References: <20210109190937.42409-1-linux@fw-web.de>
         <630fc8584a2f426d9fce6b900a337918@mtkmbs05n1.mediatek.inc>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK:  N
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gU3VuLCAyMDIxLTAxLTEwIGF0IDAzOjEwICswODAwLCBGcmFuayBXdW5kZXJsaWNoIHdyb3Rl
Og0KPiBGcm9tOiBMaW51eC1tZWRpYXRlayBbbWFpbHRvOmxpbnV4LW1lZGlhdGVrLWJvdW5jZXNA
bGlzdHMuaW5mcmFkZWFkLm9yZ10gT24gQmVoYWxmIE9mIEZyYW5rIFd1bmRlcmxpY2gNCj4gU2Vu
dDogU3VuZGF5LCBKYW51YXJ5IDEwLCAyMDIxIDM6MTAgQU0NCj4gVG86IGxpbnV4LW1lZGlhdGVr
QGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gQ2M6IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBS
eWRlciBMZWUgPFJ5ZGVyLkxlZUBtZWRpYXRlay5jb20+OyBXZW5iaW4gTWVpIDxXZW5iaW4uTWVp
QG1lZGlhdGVrLmNvbT47IFdlbmppZSBIdSA8b3Rfd2VuamllLmh1QG1lZGlhdGVrLmNvbT47IEZy
YW5rIFd1bmRlcmxpY2ggPGZyYW5rLXdAcHVibGljLWZpbGVzLmRlPjsgU2VhbiBXYW5nIDxTZWFu
LldhbmdAbWVkaWF0ZWsuY29tPjsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgUm9iIEhl
cnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz47IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZzsgTWF0dGhpYXMgQnJ1Z2dlciA8bWF0dGhpYXMuYmdnQGdtYWlsLmNvbT47IEppbWlu
IFdhbmcgKOaxqua1juawkSkgPEppbWluLldhbmdAbWVkaWF0ZWsuY29tPg0KPiBTdWJqZWN0OiBb
UEFUQ0hdIGR0czY0OiBtdDc2MjI6IGZpeCBzbG93IHNkIGNhcmQgYWNjZXNzDQo+IA0KPiBGcm9t
OiBGcmFuayBXdW5kZXJsaWNoIDxmcmFuay13QHB1YmxpYy1maWxlcy5kZT4NCj4gDQo+IC0gY2hh
bmdlIHNkY2FyZCAobW1jMSkgdG8gdWhzIGJ5IGNoYW5nZSB2cW1tYy1zdXBwbHkgdG8gMVY4IGJl
Y2F1c2UgZHJpdmVyDQo+ICAgbWFwcyBwaW5jdHJsIGRlcGVuZGluZyBvbiB0aGlzDQo+IC0gYWRk
IHJlc2V0LWNvbnRyb2wgZm9yIG1tYzEgbGlrZSBpdCdzIGRvbmUgZm9yIG1tYzAvZW1tYw0KPiAN
Cj4gRml4ZXM6IDJjMDAyYTMwNDlmNyAoImFybTY0OiBkdHM6IG10NzYyMjogYWRkIG1tYyByZWxh
dGVkIGRldmljZSBub2RlcyIpDQo+IEZpeGVzOiAwYjYyODZkZDk2YzAgKCJhcm02NDogZHRzOiBt
dDc2MjI6IGFkZCBiYW5hbmFwaSBCUEktUjY0IGJvYXJkIikNCj4gU2lnbmVkLW9mZi1ieTogRnJh
bmsgV3VuZGVybGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+DQo+IC0tLQ0KPiAgYXJjaC9h
cm02NC9ib290L2R0cy9tZWRpYXRlay9tdDc2MjItYmFuYW5hcGktYnBpLXI2NC5kdHMgfCAzICsr
LQ0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDc2MjIuZHRzaSAgICAgICAgICAg
ICAgICAgfCAyICsrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsv
bXQ3NjIyLWJhbmFuYXBpLWJwaS1yNjQuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRl
ay9tdDc2MjItYmFuYW5hcGktYnBpLXI2NC5kdHMNCj4gaW5kZXggMmY3N2RjNDBiOWI4Li45MTZj
YTg5YWI4ZWIgMTAwNjQ0DQo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ3
NjIyLWJhbmFuYXBpLWJwaS1yNjQuZHRzDQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVk
aWF0ZWsvbXQ3NjIyLWJhbmFuYXBpLWJwaS1yNjQuZHRzDQo+IEBAIC0yMzIsMTAgKzIzMiwxMSBA
QCAmbW1jMSB7DQo+ICBidXMtd2lkdGggPSA8ND47DQo+ICBtYXgtZnJlcXVlbmN5ID0gPDUwMDAw
MDAwPjsNCj4gIGNhcC1zZC1oaWdoc3BlZWQ7DQo+ICttbWMtaHMyMDAtMV84djsNCj4gIHJfc21w
bCA9IDwxPjsNCj4gIGNkLWdwaW9zID0gPCZwaW8gODEgR1BJT19BQ1RJVkVfTE9XPjsNCj4gIHZt
bWMtc3VwcGx5ID0gPCZyZWdfM3Azdj47DQo+IC12cW1tYy1zdXBwbHkgPSA8JnJlZ18zcDN2PjsN
Cj4gK3ZxbW1jLXN1cHBseSA9IDwmcmVnXzFwOHY+Ow0KPiAgYXNzaWduZWQtY2xvY2tzID0gPCZ0
b3Bja2dlbiBDTEtfVE9QX01TREMzMF8xX1NFTD47DQo+ICBhc3NpZ25lZC1jbG9jay1wYXJlbnRz
ID0gPCZ0b3Bja2dlbiBDTEtfVE9QX1VOSVY0OE0+OyAgfTsgZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ3NjIyLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21l
ZGlhdGVrL210NzYyMi5kdHNpDQo+IGluZGV4IDViOWVjMDMyY2U4ZC4uN2M2ZDg3MTUzOGE2IDEw
MDY0NA0KDQptdDc2MjIncyBTRC9NTUMgaG9zdCBjb250cm9sbGVyIGRvZXNuJ3Qgc3VwcG9ydCBV
SFMtMSBtb2RlIGZvciBTRCBjYXJkLg0KVG8gbWVldCBjb21wYXRpYmlsaXR5IG9mIG10ay1zZC5j
IGRyaXZlciwgd2hpY2ggaXMgYWxzbyB1c2VkIG9uIG90aGVyDQpwbGF0Zm9ybXMgYmVzaWRlcyBt
dDc2MjIsIHdlIGFkZCBwaW5jdHJsLTEgc2V0IGluIG10NzYyMiAmIGJhbmFuYSBwaSdzDQpkdHMu
IEJ1dCBhY3R1YWxseSB3ZSBkb24ndCB1c2UgVUhTLTEgcGluIHNldHRpbmdzIG9uIG10NzYyMi4g
U28gdGhlcmUncw0Kbm8gbmVlZCB0byBzZXQgdnFtbWMtc3VwcGx5IHRvIDEuOFYNCg==

