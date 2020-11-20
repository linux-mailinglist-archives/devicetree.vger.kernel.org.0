Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C605A2BB0E0
	for <lists+devicetree@lfdr.de>; Fri, 20 Nov 2020 17:47:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729460AbgKTQpx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Nov 2020 11:45:53 -0500
Received: from mx2.suse.de ([195.135.220.15]:58682 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727281AbgKTQpw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 20 Nov 2020 11:45:52 -0500
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id AA707AC60;
        Fri, 20 Nov 2020 16:45:51 +0000 (UTC)
Message-ID: <a876d42fb6ed34e5302d96698011a48c3f1023d6.camel@suse.de>
Subject: Re: [PATCH v2 3/3] ARM: dts: rpi-4: disable wifi frequencies
From:   Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To:     Maxime Ripard <maxime@cerno.tech>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Eric Anholt <eric@anholt.net>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-rpi-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Tim Gover <tim.gover@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>
Date:   Fri, 20 Nov 2020 17:45:50 +0100
In-Reply-To: <20201029134018.1948636-3-maxime@cerno.tech>
References: <20201029134018.1948636-1-maxime@cerno.tech>
         <20201029134018.1948636-3-maxime@cerno.tech>
Content-Type: multipart/signed; micalg="pgp-sha256";
        protocol="application/pgp-signature"; boundary="=-MQTJUKN3mWius9SLPf0c"
User-Agent: Evolution 3.36.5 
MIME-Version: 1.0
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--=-MQTJUKN3mWius9SLPf0c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-10-29 at 14:40 +0100, Maxime Ripard wrote:
> The RPi4 WiFi chip and HDMI outputs have some frequency overlap with
> crosstalk around 2.4GHz. Let's mark it as such so we can use some evasive
> maneuvers.
>=20
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> ---
>=20
> Changes from v1:
>   - Changed the property name

Applied for next. Thanks!


--=-MQTJUKN3mWius9SLPf0c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl+38r4ACgkQlfZmHno8
x/5qYwgAsvpEd/jZHZT2ntJ3u1NyaFqM5OERxSlFLCyJosOZoo0pev871v8dZy4e
RG+0sl3Mig4hP8SoHd2j5ioAzOmBgQUk4Imjm78AZQvBZlk+vsSxG2F/jk7JpIQg
EYgsYXGR2OLOgrQk1lWnCJ7M+w+SUV/YNP3DMtgdcV2TXd0S/8v6+hqJQYzx7mY7
byDJGbPSe1fzaRszTlyIf2QaJpnplQfwLMoao7P4cvdiyiyWGpeNgx1wEFSwfiB/
OvmZXP2Sjyzmi+AkUkD6+IE6JcZnQ5+vKV+yl8GBBuRrDeIEc94pK9qx6FwMLARW
gKG7hg3smCffh/dbJ83qOCUIbhzbUQ==
=Idjk
-----END PGP SIGNATURE-----

--=-MQTJUKN3mWius9SLPf0c--

