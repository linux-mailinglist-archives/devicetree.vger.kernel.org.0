Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B7B3C22FFC
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 11:16:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731922AbfETJQM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 05:16:12 -0400
Received: from mailgate1.rohmeurope.com ([178.15.145.194]:57332 "EHLO
        mailgate1.rohmeurope.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730677AbfETJQL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 05:16:11 -0400
X-AuditID: c0a8fbf4-501ff700000014c1-76-5ce2705a2d97
Received: from smtp.reu.rohmeu.com (will-cas002.reu.rohmeu.com [192.168.251.178])
        by mailgate1.rohmeurope.com (Symantec Messaging Gateway) with SMTP id 19.E3.05313.A5072EC5; Mon, 20 May 2019 11:16:10 +0200 (CEST)
Received: from WILL-MAIL001.REu.RohmEu.com ([fe80::2915:304f:d22c:c6ba]) by
 WILL-CAS002.REu.RohmEu.com ([fe80::fc24:4cbc:e287:8659%12]) with mapi id
 14.03.0439.000; Mon, 20 May 2019 11:15:58 +0200
From:   "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
To:     "leonard.crestez@nxp.com" <leonard.crestez@nxp.com>,
        "broonie@kernel.org" <broonie@kernel.org>,
        "lee.jones@linaro.org" <lee.jones@linaro.org>
CC:     "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>,
        "linux-imx@nxp.com" <linux-imx@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "angus@akkea.ca" <angus@akkea.ca>,
        "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "yibin.gong@nxp.com" <yibin.gong@nxp.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>
Subject: Re: [PATCH 2/3] dt-bindings: mfd: Document short/long press
 duration for bd718x7
Thread-Topic: [PATCH 2/3] dt-bindings: mfd: Document short/long press
 duration for bd718x7
Thread-Index: AQHVDunRCadIZXhO4kmv1F92tFVodqZzmfCA
Date:   Mon, 20 May 2019 09:15:57 +0000
Message-ID: <79db32fef865216dc51d40b8bed81b45943b2687.camel@fi.rohmeurope.com>
References: <cover.1558341613.git.leonard.crestez@nxp.com>
         <6983773421a6d89b7c206a71684a95c83eef118b.1558341613.git.leonard.crestez@nxp.com>
In-Reply-To: <6983773421a6d89b7c206a71684a95c83eef118b.1558341613.git.leonard.crestez@nxp.com>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [213.255.186.46]
Content-Type: text/plain; charset="utf-8"
Content-ID: <802EDE242BBF104DA2859AA9C0EA6AB1@de.rohmeurope.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01TWUwTURT1zVKG2iHPWu2zKpFGcRdQEyeRqD8mox+ERIwJVnGQkRK6OVMI
        6IcQ0cQaxQWINKKILBUxysgHEBCsENDEBReMqQqliDtGxJWgzlAUvt6599xzz73JfRSuvaUy
        UGk2Jy/YOItRpSZaPSPS8kRHnym6ZUjLDBc24kygxweYQn+/ijnfdo9kaq/7CKa6sIFger62
        A8bz4jPJSIFuknH9uoQzFU+7MOZQc1sI86ZOzxy9dhdsCGMLXR7A1pyrAaxUfUTFPu9uUrHX
        yw+wtYP1GJs/Gs1+kcLjqcSpscmcM3NLWqotat2uqebeph+Yow7Pym0rw3KAB3eBUArB1ejl
        hwrMBdSUFnYDlFc6RAaDToAKqjpCXICiVDAWuZ6FKHkdPA1Q/+UAUAIcXiLQqTw3obSaDrej
        rvxbY1gHTeib9AQE8Uo00lswlifgAnQjcCxEwTSMQxc/VY5b5wNU3NI8VhQKd6ILPj+pYADn
        oiM5g5iCcahH0sB3Mjg3ROVN98d3mIHeBn6P542o+aefUKbG4WJ0tTEqKN2ApMNniCCOQAVH
        /eMzTEO3i/uJE2Cme5KDe0LtnqR2T1K7J6lLAVkNkJVLs6RyTj5mhcBnrBDsZqv87LZbJRA8
        g+F68Me7yQsgBYwaWpPeZ9KSXKaYbfWCWRRmnEF/P+03acOS7SnZZk40JwkZFl70AkThRh29
        amGPSUuncNn7eMH+j5pNEUY9PdJ406SFinM6zzt44R87h6KMiN5vk32mCXwqn7UnzeKcoDEq
        VGmuNuhE3pbCC1yG05yk3EuSKB+MQmlk322KnBYdnFXOBqV3wFKqtcxfglMfb74uwbWEzW7j
        DXp6wCqXQqXUnGH7b/QO6OV9p9P3lUYa+Wf87/NOtsBki3UJYxZOboIy5ID0V1FE+/p5DZmn
        iKJ4a/KehMu978MXbZ4bdaNGvSaxclZu1yAWF9lijvR6fml2vF+8zK+rbQxX95GdAzXHrexo
        WIIl2tfwsCOwqMHXGlHfJL0qzh+NW5sgwpSNAycfPWhvdjwevbK3ipttsMfM3HXw5Pzy5IN5
        bVOEs1tji94kkkZCNHMxS3BB5P4CUZ6PHtYDAAA=
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

VGhhbmtzIExlb25hcmQhDQoNClRoaXMgaXMgaG93IGl0IHNob3VsZCd2ZSBiZWVuIGRvbmUgZnJv
bSB0aGUgYmVnaW5uaW5nID0pDQoNCk9uIE1vbiwgMjAxOS0wNS0yMCBhdCAwODo1NSArMDAwMCwg
TGVvbmFyZCBDcmVzdGV6IHdyb3RlOg0KPiBUaGVzZSB2YWxldXMgY2FuIGJlIG92ZXJ3cml0dGVu
IGF0IHByb2JlIHRpbWUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBMZW9uYXJkIENyZXN0ZXogPGxl
b25hcmQuY3Jlc3RlekBueHAuY29tPg0KQWNrZWQtQnk6IE1hdHRpIFZhaXR0aW5lbiA8bWF0dGku
dmFpdHRpbmVuQGZpLnJvaG1ldXJvcGUuY29tPg0KDQo=
