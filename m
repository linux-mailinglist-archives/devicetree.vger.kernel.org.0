Return-Path: <devicetree+bounces-154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 203A279FE60
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 10:28:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52C761C20CA2
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 08:28:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A83410A21;
	Thu, 14 Sep 2023 08:28:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 895C21391
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 08:28:34 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3C691FE5;
	Thu, 14 Sep 2023 01:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1694680114; x=1726216114;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=roWlGnT9qXoGtpAtkzOsIWpYJXVJh50Qfw7TwKQYtEc=;
  b=L1c9O4pXZaH8kdfV+WWC9zGWZNtWK/Ad0Sxdq37yOY/Epnbwbo/92bAZ
   Yg2NkR+Gfu5GdiaL2UoZdugbKaR7QBSw7X6u12XjHcNN6Tg74K060UaKs
   2COCoOxslv8dt/Qw+B981bKsCH5u14PQVmPTf50dqtkvEz3cca3u0UYq2
   n7HEc6W7WyUtvyebPIqMcx9DZx0a1QZqoHJo355p9pHMXuQeNphJNYIy4
   uhOXyf/kEjD1iNK8eivb0+wrWssjLUD6zc0GTlBZLL6khr2OjVRZPWibA
   fTkwRk5DI+tLh0D+sxpLSO3dvhxCqUvzY235Dtlx7aOsXTW6L47jIf+0j
   g==;
X-CSE-ConnectionGUID: 0Epypo0mRQiiNowIGor1Dw==
X-CSE-MsgGUID: Voy0eCOwRVCw9BykXW+3QQ==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.02,145,1688454000"; 
   d="asc'?scan'208";a="4624641"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Sep 2023 01:28:33 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 14 Sep 2023 01:28:28 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex03.mchp-main.com (10.10.85.151)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Thu, 14 Sep 2023 01:28:26 -0700
Date: Thu, 14 Sep 2023 09:28:09 +0100
From: Conor Dooley <conor.dooley@microchip.com>
To: Romain Perier <romain.perier@gmail.com>
CC: Conor Dooley <conor@kernel.org>, Alessandro Zummo <a.zummo@towertech.it>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Daniel Palmer
	<daniel@0x0f.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	<linux-rtc@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2 2/3] dt-bindings: rtc: Add Mstar SSD202D RTC
Message-ID: <20230914-coagulant-unbroken-2461d32274a1@wendy>
References: <20230913151606.69494-1-romain.perier@gmail.com>
 <20230913151606.69494-3-romain.perier@gmail.com>
 <20230913-depress-bootlace-6b88bfd83966@spud>
 <CABgxDoK2T3xkKYDVeqRuDXMHfVEJcRkkBOBBkMJ5=XUv9Y5MsQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Z3TM0xmB8F8fFNyu"
Content-Disposition: inline
In-Reply-To: <CABgxDoK2T3xkKYDVeqRuDXMHfVEJcRkkBOBBkMJ5=XUv9Y5MsQ@mail.gmail.com>

--Z3TM0xmB8F8fFNyu
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 14, 2023 at 09:08:52AM +0200, Romain Perier wrote:
> Le mer. 13 sept. 2023 =E0 20:30, Conor Dooley <conor@kernel.org> a =E9cri=
t :
> >
> > On Wed, Sep 13, 2023 at 05:16:05PM +0200, Romain Perier wrote:
> > > Add YAML bindings for Mstar SSD202D RTC.
> > >
> > > Signed-off-by: Romain Perier <romain.perier@gmail.com>
> > > ---
> > >  .../bindings/rtc/mstar,ssd202d-rtc.yaml       | 35 +++++++++++++++++=
++
> > >  1 file changed, 35 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/rtc/mstar,ssd20=
2d-rtc.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/rtc/mstar,ssd202d-rtc.=
yaml b/Documentation/devicetree/bindings/rtc/mstar,ssd202d-rtc.yaml
> > > new file mode 100644
> > > index 000000000000..4c1f22ef5a2c
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/rtc/mstar,ssd202d-rtc.yaml
> > > @@ -0,0 +1,35 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/rtc/mstar,ssd202d-rtc.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Mstar SSD202D Real Time Clock
> > > +
> > > +maintainers:
> > > +  - Daniel Palmer <daniel@0x0f.com>
> > > +  - Romain Perier <romain.perier@gmail.com>
> > > +
> > > +allOf:
> > > +  - $ref: rtc.yaml#
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - mstar,ssd202d-rtc
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> >
>=20
> Hi,
>=20
> > So, this seems fine to me in isolation, but isn't this now the sort of
> > thing that can be documented in trivial-rtc.yaml?
> > Its only got compatible & reg, which seems to fit the bill for that.
> >
>=20
> With the current state, it might make sense. However, currently, the
> RTC hw block is mostly
> reverse-engineered, the driver is not complete yet, things like
> external irq or wakeup irq might arrive later (once we know how it is
> wired up and used).
> So the content of the dt-bindings might change and differ from a
> simple "compatible & reg" requirement.

It's always possible to move from that to a fully fledged binding at a
later date. re: interrupts, trivial-rtc permits a single interrupt, so
it'd still be suitable if the device only has one.

Thanks,
Conor.

--Z3TM0xmB8F8fFNyu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQLECwAKCRB4tDGHoIJi
0pu6AQD2ucgR+eH+NSCd5kvfLabzmbKVdIBcnk+QkMQkd6pYGgEAqa7B3GUoWvLc
uJq535ai/pRZRPZU3J03nvuLbgk16Aw=
=DAZn
-----END PGP SIGNATURE-----

--Z3TM0xmB8F8fFNyu--

