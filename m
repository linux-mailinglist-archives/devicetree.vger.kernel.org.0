Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CBF0D420E04
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 15:19:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236629AbhJDNVB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 09:21:01 -0400
Received: from mail.kernel.org ([198.145.29.99]:53268 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236759AbhJDNS4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 4 Oct 2021 09:18:56 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 42DB761B52;
        Mon,  4 Oct 2021 13:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1633352888;
        bh=ZbQjrZR42pArRDC3vnc9mJCBY82N8zGx3FwEMerx06Q=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=A8CTiSkQwy7W3F/CU0zTaVZpHJF8Y0ivroT4oxo0joa7xTkF3oiFIpJYAEZ61EASo
         jwYiWXPTHGE0TJg63S4VhNmxoRaHIllVDkQ9l9A6XeAN4WJi1hgUXXbbAu/Nd6i9+N
         baaRu0HGQiLVK27yI4rbFf7JRNpGwSLD+aaDMVGukI9J6affTtBUtLI5HvdQHFIiVl
         iq1hZD6CUVYnmE9ncWPjzICtbS0+iL6ZuVF+YLd/AMJZHYY4a005x8onDQ7lyp17gg
         ogIIVa0sEkztngC8+Ftm3jvJ623kcHDcWiCWR+P4cW2nOwyUYgznOnPKj/2eeaVjRr
         OcOnuQEMqPZ4A==
Date:   Mon, 4 Oct 2021 14:08:06 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Ricard Wanderlof <ricardw@axis.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        alsa-devel <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: sound: tlv320adc3xxx: New codec driver
Message-ID: <YVr8tqRoyyiWR4xl@sirena.org.uk>
References: <alpine.DEB.2.21.2110041115070.14472@lnxricardw1.se.axis.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="NenT2xvAZufCMaV7"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2110041115070.14472@lnxricardw1.se.axis.com>
X-Cookie: If it heals good, say it.
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--NenT2xvAZufCMaV7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 04, 2021 at 11:17:47AM +0200, Ricard Wanderlof wrote:

> +  gpios:
> +    maxItems: 1
> +    description: GPIO pin used for codec reset (RESET pin)

Usually this would be called reset-gpios and/or have a name to improve
readability and allow for extensibility, from the binding we can see
that the device has other signals that can be used as GPIOs.

> +  ti,pll-mode:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum:
> +      - 0 # ADC3XXX_PLL_DONT_SET - leave mode unchanged
> +      - 1 # ADC3XXX_PLL_ENABLE - use the on-chip PLL
> +      - 2 # ADC3XXX_PLL_BYPASS - do not use the on-chip PLL
> +      - 3 # ADC3XXX_PLL_AUTO - use on-chip PLL if possible
> +    default: 0
> +    description: |
> +      Set on-chip PLL mode.
> +      ADC3XXX_PLL_DONT_SET is intended for use when setting the clock mod
> +      via the clock id in a machine driver and it is not to be changed
> +      from the previous setting.
> +      ADC3XXX_PLL_AUTO will enable  on-chip PLL if possible, depending on the
> +      master clock and sample rate combination.

Why is this configured through the DT binding and not via the machine
driver as done for other drivers?

> +      Note that there is currently no support for reading the GPIO pins as
> +      inputs.

This doesn't belong in the binding document, it's describing the binding
not any particular implementation.

--NenT2xvAZufCMaV7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmFa/LUACgkQJNaLcl1U
h9COawf/ex6fba/shQiY2DAsg2j0WtxTAMX1z+MkUIUNeWBpXM/bEijwgtwEm6D9
tqZP8m1Xo08N7dMIgNy9Wt3yFlktP6NQBA9CXIZdRlVhVY5olHtQVd2wqeR0XCX5
bR3rudz7Cq0ilBtUkVD9TeR51xg73GcrJPoZbd08GrNTaKVUtNX3SPzWBT4lAgT3
EUv/LXPti5vduwj85wfk2WR2zIkbi5a0LsH5HrezP+udaL5wmn8piRcdAinW4dEi
Hjjb6gBTzKeNFKlbJn5VhavrmJturisvDA4zBwahlE9PwhLSktMX6STnmF26jjed
ODcX0OQk0rnb59+G/o/PYV87ELMroA==
=198I
-----END PGP SIGNATURE-----

--NenT2xvAZufCMaV7--
