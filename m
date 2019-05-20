Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5405422FF1
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 11:12:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731254AbfETJMD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 05:12:03 -0400
Received: from mailgate1.rohmeurope.com ([178.15.145.194]:57108 "EHLO
        mailgate1.rohmeurope.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730402AbfETJMD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 05:12:03 -0400
X-AuditID: c0a8fbf4-519ff700000014c1-41-5ce26f60b8b6
Received: from smtp.reu.rohmeu.com (will-cas002.reu.rohmeu.com [192.168.251.178])
        by mailgate1.rohmeurope.com (Symantec Messaging Gateway) with SMTP id 8F.D3.05313.06F62EC5; Mon, 20 May 2019 11:12:00 +0200 (CEST)
Received: from WILL-MAIL001.REu.RohmEu.com ([fe80::2915:304f:d22c:c6ba]) by
 WILL-CAS002.REu.RohmEu.com ([fe80::fc24:4cbc:e287:8659%12]) with mapi id
 14.03.0439.000; Mon, 20 May 2019 11:11:49 +0200
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
Subject: Re: [PATCH 1/3] mfd: bd718x7: Remove hardcoded config for button
 press duration
Thread-Topic: [PATCH 1/3] mfd: bd718x7: Remove hardcoded config for button
 press duration
Thread-Index: AQHVDunRAQsqgw5TzkyWWRZ4GrJMiqZzmM2A
Date:   Mon, 20 May 2019 09:11:48 +0000
Message-ID: <67cb37340895aa6a2f0f005945e72dc1ee72253e.camel@fi.rohmeurope.com>
References: <cover.1558341613.git.leonard.crestez@nxp.com>
         <ed27e04ba7486cce7860197bc8c76bcedafde398.1558341613.git.leonard.crestez@nxp.com>
In-Reply-To: <ed27e04ba7486cce7860197bc8c76bcedafde398.1558341613.git.leonard.crestez@nxp.com>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [213.255.186.46]
Content-Type: text/plain; charset="utf-8"
Content-ID: <07E3616871749845AB212EDAA1F64813@de.rohmeurope.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Ta0zTUBiGc9Z2HJCSw5zuiCC6RA0mCvOWxhjEHybVEKORBKOLUKFuxK3D
        bijID/H2w6mgAirTifESEInI0ATRGVmEgEHxFsSAgbl5QcVEkRAlXtoVhD/t2+/t873fSb4D
        CU27OgbmCA5eFDiLXh1BPqge9SzMtL01JhV/SGJ+lDcRTKCvBzDl/qCaqXz4hGLqG3pIpqb8
        Dsn0DbcApvrNN4rxBLooxvnrGsFcffVMxRz2PgxjPt7SMUdvPgYpUWy5sxqwtRdqAeupOaJm
        e7vuqdmGK/vY+q+NKrbkdxI75Jm1AW6ZsnI759i9KcckJCZnTjF7Rvqp3H4qv7vqJVEEOign
        CIcYLcWBMwHgBBFQg7oAHnpaE6Z8tAE8WF8rORCq0UrsfB2qa1EpwMHrCkGgayQ+dchFyq2m
        oi245fkoIWst2oq/dLvH9GL84pw79A+J5uLgsQ6VrGm0Hp93tRNKWgnANzpbw2QjHG3Dn5+2
        hWCA4vCRoq8hgEA67Hk/MjY3wlfudRKKnoYHAn/G6nrs/ekn5akJlIDrmhIVNAXvL/ZSip6D
        y476w5QZonF7RZA8Aaa7JiW4JmjXJNo1iXZNoi8CqgZgK5djMXEO3rBI5PMWiTazVXpl2awe
        oKzBj0bw17fWBxAE+kg6cudbo4bidtsLrD4wA6r00+iRUr9RE7Xdll1g5uzmDDHPwtt9AENC
        r6WXzO8zauhsrmAvL9rGrZmQ1Ovo0aZmowbJyTt5PpcXx91YCPWYLhSknGiRN/H5O3Isjglb
        BcPl5hExWjsvZPMil+cwZ8j7kmGXFka2IqXcdBmn7bmcVaoq6CNggA8u+d0EbB6Rn4PNH9yE
        hhRsAh+jo99bJQDJgDlP+B/3CeikU0+lTbIbKd2P/90+SUEqKSg5LRTk4CasmCKQ6J2Zljo0
        Z3/6/d+G2bu+tzqzdgy7Nm+OHyp0p3Z2nC+LvdQDok3gxbGBulWpJzW3Xy4/UOXb47bMEzIb
        MhKq4tuS78btK+RP98HeitVZPcHjdQkV6w5+PLSin2p2ri0+ZYw2VGvPlF6u5N9VrhlYltKY
        /jn+7EZ4x8+eu3vVO39YT9rNnGEBIdq5f/6oAE3cAwAA
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gTW9uLCAyMDE5LTA1LTIwIGF0IDA4OjU1ICswMDAwLCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6
DQo+IFRoZSByZXNldCBidXR0b24gb24gaW14OG1tLWV2ayBpcyB0aWVkIHRvIFBXUk9OX0IgcGlu
IG9mIGJkNzE4NDcgYW5kDQo+IHRoZQ0KPiBsb25nIHByZXNzIGR1cmF0aW9uIGlzIHNldCB0byB6
ZXJvIGZyb20gT1RQLiBUaGUgbGludXggZHJpdmVyDQo+IG92ZXJyaWRlcw0KPiB0aG9zZSB2YWx1
ZXMgYW5kIGJyZWFrcyByZXNldCBmcm9tIGJ1dHRvbi4NCj4gDQo+IE92ZXJ3cml0aW5nIE9UUCBv
ciBib290bG9hZGVyIGNvbmZpZ3VyYXRpb24gd2l0aCBzb21lIGhhcmRjb2RlZA0KPiBkZWZhdWx0
cw0KPiBpcyBub3QgZGVzaXJhYmxlLCBrZWVwIGFscmVhZHkgcHJvZ3JhbW1lZCB2YWx1ZXMgaW5z
dGVhZC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IExlb25hcmQgQ3Jlc3RleiA8bGVvbmFyZC5jcmVz
dGV6QG54cC5jb20+DQpBY2tlZC1CeTogTWF0dGkgVmFpdHRpbmVuIDxtYXR0aS52YWl0dGluZW5A
Zmkucm9obWV1cm9wZS5jb20+DQoNCg==
