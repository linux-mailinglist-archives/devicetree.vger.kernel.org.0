Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 057F829A9B7
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 11:34:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2898280AbgJ0Kal (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 06:30:41 -0400
Received: from mailgw02.mediatek.com ([210.61.82.184]:59963 "EHLO
        mailgw02.mediatek.com" rhost-flags-OK-FAIL-OK-FAIL) by vger.kernel.org
        with ESMTP id S2898136AbgJ0K3E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Oct 2020 06:29:04 -0400
X-UUID: b1ba04f039b94df293fae011de86c2a1-20201027
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
        h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID; bh=lI1rHYpY+CiSC3fg2g3y3KjP/CT7FHrSA+j5s8OF8S8=;
        b=JIAb8qRmlXdWorFqndwiH1RPBJD69+AONjtAqE/eICvQ5pWXgIfaWzbVGqwio7LWLUy7LGYxVqMmzyImN9kfqOa48tUygEJc20Uh5kdCsnIn/SzwF2g9HkEf/zFXAQWBJG8UxWuXZawKYiIQDpD5R1/CdUjm+bE1yXD1UO2+Ix8=;
X-UUID: b1ba04f039b94df293fae011de86c2a1-20201027
Received: from mtkcas11.mediatek.inc [(172.21.101.40)] by mailgw02.mediatek.com
        (envelope-from <jiaxin.yu@mediatek.com>)
        (Cellopoint E-mail Firewall v4.1.14 Build 0819 with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
        with ESMTP id 1089795499; Tue, 27 Oct 2020 18:29:00 +0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs07n1.mediatek.inc
 (172.21.101.16) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Tue, 27 Oct
 2020 18:28:58 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 27 Oct 2020 18:28:57 +0800
Message-ID: <1603794538.26523.6.camel@mhfsdcap03>
Subject: Re: [PATCH 1/2] ASoC: mt6359: skip first time data at the beginning
 of DMIC recording
From:   Jiaxin Yu <jiaxin.yu@mediatek.com>
To:     Mark Brown <broonie@kernel.org>
CC:     <robh+dt@kernel.org>, <matthias.bgg@gmail.com>, <tiwai@suse.com>,
        <tzungbi@google.com>, <alsa-devel@alsa-project.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-mediatek@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <shane.chien@mediatek.com>
Date:   Tue, 27 Oct 2020 18:28:58 +0800
In-Reply-To: <20201026123325.GC7402@sirena.org.uk>
References: <1603521686-13036-1-git-send-email-jiaxin.yu@mediatek.com>
         <1603521686-13036-2-git-send-email-jiaxin.yu@mediatek.com>
         <20201026123325.GC7402@sirena.org.uk>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK:  N
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gTW9uLCAyMDIwLTEwLTI2IGF0IDEyOjMzICswMDAwLCBNYXJrIEJyb3duIHdyb3RlOg0KPiBP
biBTYXQsIE9jdCAyNCwgMjAyMCBhdCAwMjo0MToyNVBNICswODAwLCBKaWF4aW4gWXUgd3JvdGU6
DQo+ID4gV2UgY2FuIGNob29zZSB0byBkcm9wIGF3YXkgYW55IGxlbmd0aCBvZiBkYXRhIGZyb20g
dGhlIGJlZ2lubmluZyBhY2NvcmRpbmcNCj4gPiB0byBwcm9qZWN0IG5lZWRzLiBTb21lIHByb2pl
Y3RzIGRvbid0IHdhbnQgdG8gdGhyb3cgYXdheSBhbnkgZGF0YSwgYmVjYXVzZQ0KPiA+IHRoZXkg
d2FudCB0byB1c2UgcmVjb3JkZWQgZGF0YSB0byBkbyBlY2hvIGNhbmNlbGxhdGlvbiwgc28gdGhl
eSBoYXZlIHRvDQo+ID4gbWFrZSBzdXJlIHRoYXQgdGhleSBhcmUgYWxpZ25lZCB3aXRoIHRoZSBy
ZWZlcmVuY2UgZGF0YSBhcyBtdWNoIGFzDQo+ID4gcG9zc2libGUuIE9yIHRoZXJlIGFyZSBvdGhl
ciBhbGdvcml0aG1zIGluIHRoZSB1cHBlciBsYXllciB0byBlbGltaW5hdGUNCj4gPiB0aGlzIG5v
aXNlLiBPciBzb21lIHByb2plY3RzIHdhbnQgdG8gZWxpbWluYXRlIHRoaXMgbm9pc2UgZm9ybSB0
aGUga2VybmVsDQo+ID4gbGF5ZXIuIEhvd2V2ZXIsIHRoZSBtaW5pbXVtIHJlY29tbWVuZGVkIHZh
bHVlIGlzIDUwbXMgdG8gc2tpcCBwb3Agbm9pc2UuDQo+IA0KPiBUaGlzIHNlZW1zIGxpa2Ugc29t
ZXRoaW5nIHRoYXQgd291bGQgYXBwbHkgZXF1YWxseSB0byBhbGwgRE1JQ3Mgc28NCj4gc2hvdWxk
IGJlIGRvbmUgYXQgYSBtb3JlIGdlbmVyYWwgbGV2ZWwgcmF0aGVyIHRoYW4gaW4gdGhpcyBzcGVj
aWZpYw0KPiBkcml2ZXIsIGZvciBleGFtcGxlIGl0IGNvdWxkIGJlIGRvbmUgaW4gdGhlIERNSUMg
ZHJpdmVyLg0KDQpIaSBCcm93biwNCg0KU28geW91IHN1Z2dlc3QgdGhhdCB3ZSB1c2Ugc291bmQv
c29jL2NvZGVjcy9kbWljLmMgdG8gY29udHJvbCB0aGUgZGVsYXkNCmFmdGVyIHJlY29yZGluZz8N
CklmIHNvLCBzaG91bGQgd2UgYWRkIG9uZSBtb3JlIENPREVDKCdkbWljLWNvZGVjJyBhbmQgJ2Rt
aWMtaGlmaScpIHRvDQpkbWljJ3MgZGFpLWxpbms/IEl0IGxvb2tzIGxpbmsgZG1pYy5jIGhhcyBo
ZWxwZWQgdXMgZG8gc29tZXRoaW5nIHRvDQpjb250cm9sIGRtaWNzLg0K

