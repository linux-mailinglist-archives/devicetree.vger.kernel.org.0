Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A88BF4930F2
	for <lists+devicetree@lfdr.de>; Tue, 18 Jan 2022 23:41:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344927AbiARWlb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jan 2022 17:41:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237704AbiARWla (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jan 2022 17:41:30 -0500
Received: from algol.kleine-koenig.org (algol.kleine-koenig.org [IPv6:2a01:4f8:c010:8611::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BBDEC061574
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 14:41:30 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by algol.kleine-koenig.org (Postfix) with ESMTP id 443B425C192;
        Tue, 18 Jan 2022 23:41:27 +0100 (CET)
Received: from algol.kleine-koenig.org ([IPv6:::1])
        by localhost (algol.kleine-koenig.org [IPv6:::1]) (amavisd-new, port 10024)
        with ESMTP id A9YXaJVILk1x; Tue, 18 Jan 2022 23:41:26 +0100 (CET)
Received: from taurus.defre.kleine-koenig.org (unknown [IPv6:2a02:8071:b7c2:dbfc:6023:ee0f:f5a2:f867])
        by algol.kleine-koenig.org (Postfix) with ESMTPSA;
        Tue, 18 Jan 2022 23:41:26 +0100 (CET)
Message-ID: <41d2ff4a-79eb-5071-3a35-efa8cccec074@kleine-koenig.org>
Date:   Tue, 18 Jan 2022 23:41:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH v3] ARM: dts: bcm2711-rpi-cm4-io: Add rtc on a
 pinctrl-muxed i2c bus
Content-Language: en-US
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Jean-Michel Hautbois <jeanmichel.hautbois@ideasonboard.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Cyril Brulebois <kibi@debian.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Maxime Ripard <maxime@cerno.tech>
References: <20211231115109.94626-1-uwe@kleine-koenig.org>
 <2540edbe-084e-802f-3533-0aa66ddc20ec@ideasonboard.com>
 <397bf7c2-da9f-a993-f8bb-5d6cbc6e87eb@gmail.com>
 <YecnebByrBplFEsU@pendragon.ideasonboard.com>
From:   =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>
In-Reply-To: <YecnebByrBplFEsU@pendragon.ideasonboard.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------imyhuhSRtrdWSo9FspSnm5v2"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------imyhuhSRtrdWSo9FspSnm5v2
Content-Type: multipart/mixed; boundary="------------LAqG1TSg4DhlFY2ju8XqY5ll";
 protected-headers="v1"
From: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Florian Fainelli <f.fainelli@gmail.com>
Cc: Jean-Michel Hautbois <jeanmichel.hautbois@ideasonboard.com>,
 Nicolas Saenz Julienne <nsaenz@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren
 <stefan.wahren@i2se.com>, Cyril Brulebois <kibi@debian.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Maxime Ripard <maxime@cerno.tech>
Message-ID: <41d2ff4a-79eb-5071-3a35-efa8cccec074@kleine-koenig.org>
Subject: Re: [PATCH v3] ARM: dts: bcm2711-rpi-cm4-io: Add rtc on a
 pinctrl-muxed i2c bus
References: <20211231115109.94626-1-uwe@kleine-koenig.org>
 <2540edbe-084e-802f-3533-0aa66ddc20ec@ideasonboard.com>
 <397bf7c2-da9f-a993-f8bb-5d6cbc6e87eb@gmail.com>
 <YecnebByrBplFEsU@pendragon.ideasonboard.com>
In-Reply-To: <YecnebByrBplFEsU@pendragon.ideasonboard.com>

--------------LAqG1TSg4DhlFY2ju8XqY5ll
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCk9uIDEvMTgvMjIgMjE6NDcsIExhdXJlbnQgUGluY2hhcnQgd3JvdGU6DQo+
IE9uIFR1ZSwgSmFuIDE4LCAyMDIyIGF0IDEyOjAwOjUwUE0gLTA4MDAsIEZsb3JpYW4gRmFp
bmVsbGkgd3JvdGU6DQo+PiBPbiAxLzE4LzIyIDExOjQ1IEFNLCBKZWFuLU1pY2hlbCBIYXV0
Ym9pcyB3cm90ZToNCj4+PiBUaGlzIGlzIGFsc28gbmVlZGVkIGZvciBjYW1lcmEgYW5kIGRp
c3BsYXkgc3VwcG9ydC4NCj4+PiBJIHRlc3RlZCBpdCBzdWNjZXNzZnVsbHkgd2l0aCBpbXgy
MTkgKyB1bmljYW0gb24gbWFpbmxpbmUuDQo+Pg0KPj4gVGhhbmtzIGZvciB0ZXN0aW5nLCBj
YW4geW91IHJlcGx5IHdpdGggYSBUZXN0ZWQtYnkgdGFnIHNvIGl0IGNvdWxkIGJlDQo+PiBh
cHBsaWVkIHRvIHRoZSBjb21taXQgbWVzc2FnZSB3aGVuIHRoaXMgZ2V0cyBwaWNrZWQgdXA/
DQo+IA0KPiBXZWxsLCB0aGlzIGFsc28gcG9pbnRzIG91dCB0aGF0IHRoZXJlJ3MgYW4gaXNz
dWU6IGlmIHRoZSBtdXggaXMgbmVlZGVkDQo+IGZvciBvdGhlciBkZXZpY2VzLCBpdCBzaG91
bGRuJ3QgYmUgaW4gYmNtMjcxMS1ycGktY200LWlvLmR0cyA6LSkgV2UNCj4gY291bGQgbW92
ZSBpdCB0byBiY20yNzExLXJwaS5kdHNpIChzbyBmYXIgYWxsIGJjbTI3MTEtYmFzZWQgYm9h
cmRzIHVzZQ0KPiBlaXRoZXIgSS9PIHBpbnMgMCsxIG9yIDQ0KzQ1KQ0KDQpJZiBJIHVuZGVy
c3RhbmQgY29ycmVjdGx5IGl0J3Mgbm90IHVzZWQgb24gcnBpLTQtYiwgc28gYmNtMjcxMS1y
cGkuZHRzaSANCndvdWxkIGJlIHdyb25nLg0KDQo+ICwgb3IgbW92ZSBpdCB0byBwZXItYm9h
cmQgZmlsZXMuDQoNCkl0IGlzIGluIGFuIGJvYXJkIGZpbGUgbm93PyEgU28gSSBkb24ndCB1
bmRlcnN0YW5kIHlvdXIgc3VnZ2VzdGlvbiBoZXJlLg0KDQo+IEluIHRoZQ0KPiBsYXR0ZXIg
Y2FzZSwgaW5zdGVhZCBvZiBkdXBsaWNhdGluZyB0aGUgc2FtZSBibG9jayBldmVyeXdoZXJl
LCBpdCBjb3VsZA0KPiBiZSBtb3ZlZCB0byBhIC5kdHNpIGluY2x1ZGVkIGluIHRob3NlIGJv
YXJkIGZpbGVzLiBUaGlzIGlzIHdoYXQgdGhlDQo+IGRvd25zdHJlYW0ga2VybmVsIGRvZXMu
DQoNCkhvdyBkb2VzIGl0IGNhbGwgdGhlIGR0c2kgZmlsZT8gSSB3b25kZXIgaWYgdGhhdCBp
cyBzZW5zaWJsZSBleHBlY3RpbmcgDQp0aGF0IHRoZSBkZXZpY2VzIG9uIHRoZSBidXMgYXJl
IGRpZmZlcmVudCBmb3IgZGlmZmVyZW50IGJvYXJkcz8hDQoNCkJlc3QgcmVnYXJkcw0KVXdl
DQoNCg==

--------------LAqG1TSg4DhlFY2ju8XqY5ll--

--------------imyhuhSRtrdWSo9FspSnm5v2
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmHnQhAACgkQwfwUeK3K
7AmL2wgAhl9LnPQ6ZP4W4ByBGoTaNyZkJ5f3VjbBeNT9lR0K3a2Xk/D3HSEfHdiT
dCASeaoxNXCv2JTE372EQxkv+Z+6QTrZlKSduRyfG/Qoqox4CJzIBkg7+fikVlgR
xQokJEILP5tLGBfQLZIQT7Z+wiqhaCaDLktJVdJCqP9lDk+cHGP+ZRfTBe2I59AZ
02HeT0IMcP5UwEJ34K+IUXxY7exv4WN3i3spyc03Wi8VZV66ahL2jpHz9f/+U0DB
IE39z8ZJcTYlPzH708kGlEghoQMjx0r1EKbm8L2nJvmoN/4eWAfb8Vs6OijgFQaE
BybGcsX/BVCIO0HnRokvTgPE6NCOKQ==
=wR34
-----END PGP SIGNATURE-----

--------------imyhuhSRtrdWSo9FspSnm5v2--
