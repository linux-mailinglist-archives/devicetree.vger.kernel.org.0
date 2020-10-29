Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E600F29F380
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 18:43:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725966AbgJ2Rnt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 13:43:49 -0400
Received: from mx2.suse.de ([195.135.220.15]:48270 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728168AbgJ2Rnb (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 29 Oct 2020 13:43:31 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id 81904B1F6;
        Thu, 29 Oct 2020 17:43:29 +0000 (UTC)
Message-ID: <4d0028fdf797abd99f95d627e60e9322caa52596.camel@suse.de>
Subject: Re: [PATCH v2 1/3] dt-bindings: display: Add a property to deal
 with WiFi coexistence
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
Date:   Thu, 29 Oct 2020 18:43:27 +0100
In-Reply-To: <20201029134018.1948636-1-maxime@cerno.tech>
References: <20201029134018.1948636-1-maxime@cerno.tech>
Content-Type: multipart/signed; micalg="pgp-sha256";
        protocol="application/pgp-signature"; boundary="=-dPeDp453d8U7UvrUEare"
User-Agent: Evolution 3.36.5 
MIME-Version: 1.0
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--=-dPeDp453d8U7UvrUEare
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi maxime,

On Thu, 2020-10-29 at 14:40 +0100, Maxime Ripard wrote:
> The RaspberryPi4 has both a WiFi chip and HDMI outputs capable of doing
> 4k. Unfortunately, the 1440p resolution at 60Hz has a TMDS rate on the
> HDMI cable right in the middle of the first Wifi channel.
>=20
> Add a property to our HDMI controller, that could be reused by other
> similar HDMI controllers, to allow the OS to take whatever measure is
> necessary to avoid that crosstalk.
>=20
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> ---
>=20
> Changes from v1:
>   - Renamed the property
>   - Split it into a separate patch
> ---
>  .../devicetree/bindings/display/brcm,bcm2711-hdmi.yaml      | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.=
yaml b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
> index 03a76729d26c..7ce06f9f9f8e 100644
> --- a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
> @@ -76,6 +76,12 @@ properties:
>    resets:
>      maxItems: 1
> =20
> +  wifi-2.4ghz-coexistence:

I see you already renamed the property, but I can't seem to find v1 of the
series online. Sorry if this is redundant:

I wonder if it'd make sense to prefix the property like this:
"raspberrypi,wifi-2.4ghz-coexistence." I tend to associate the lack of pref=
ix
with generic properties, and also thought it was a rule. Although I may hav=
e as
well imagined it.

Other than that the series looks OK to me.

Regards,
Nicolas



--=-dPeDp453d8U7UvrUEare
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl+a/z8ACgkQlfZmHno8
x/5GrAf+MH12IZ/4lseflFpGeeMrCiugkwqN+ahurTG44SM+ZoJwj9FcD3Nf9u+b
2S1EKBR1FOiAfPHZtXhymtS7TvF1K6csxAU8CrJwRCfEKDo0OI/p4Ly9/CipwLOT
GLh2Qvet66N+1Ak3bJ6fpeBgCrG4dQm4W0pWhmNA98s2KzR40/jVOq/O/uQ5x7xf
xl+YcfJ+130d4z8QTlHkAnOvOczvj03Iowewavd0oh5R7zq//6OCNoADLVfY0gJP
5UF7BuhYg8nYGu2LwOL+jB5SroZ0eFRNZvLxxOtl4C7oPdemvYI57OYDQHA9PqTi
EIx+MbXjqVxn+BdfzKmrGY+ZNEJBQA==
=VVnt
-----END PGP SIGNATURE-----

--=-dPeDp453d8U7UvrUEare--

