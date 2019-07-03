Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DFC175E336
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 13:52:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725820AbfGCLwu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 07:52:50 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:51588 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725786AbfGCLwt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 07:52:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=BpBI6Uam/Ba69qxJ40cWtj6le3Gp4lAAIrOAWXOCNOw=; b=ZIhUlwak0XEU9G9A4azpkLIcu
        4kQlEGi85DHSgWoL1C5gwoyeiarXya7fStpIvOEActdzIITiV3UoThrGdCeI7vVO+Yk5gbelqI95I
        3aw0MExEJzC378gzX78PELtushjzWQYdxeSn91khHQoOdItlczjuhLbPP0nUWPqnQGKAM=;
Received: from [2001:470:1f1d:6b5:7e7a:91ff:fede:4a45] (helo=finisterre.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <broonie@sirena.org.uk>)
        id 1hidoa-0005tC-Ji; Wed, 03 Jul 2019 11:52:44 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
        id 9FCF8440046; Wed,  3 Jul 2019 12:52:43 +0100 (BST)
Date:   Wed, 3 Jul 2019 12:52:43 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     robh+dt@kernel.org, bgoswami@codeaurora.org, vkoul@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        mark.rutland@arm.com, alsa-devel@alsa-project.org, srini@kernel.org
Subject: Re: [PATCH 2/6] ASoC: wcd934x: add support to wcd9340/wcd9341 codec
Message-ID: <20190703115243.GV2793@sirena.org.uk>
References: <20190702080920.22623-1-srinivas.kandagatla@linaro.org>
 <20190702080920.22623-3-srinivas.kandagatla@linaro.org>
 <20190702144411.GP2793@sirena.org.uk>
 <2e2a32dd-3dca-5391-1bfa-ab1c1f420e3a@linaro.org>
 <20190702165753.GQ2793@sirena.org.uk>
 <0a9a994c-5a88-539f-3af0-76754b9b58d1@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="VpY0yS1BYpNZumir"
Content-Disposition: inline
In-Reply-To: <0a9a994c-5a88-539f-3af0-76754b9b58d1@linaro.org>
X-Cookie: This sentence no verb.
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--VpY0yS1BYpNZumir
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 03, 2019 at 09:49:37AM +0100, Srinivas Kandagatla wrote:
> On 02/07/2019 17:57, Mark Brown wrote:

> > This is a driver for a single device, you should be able to
> > instantiate things without requiring binding through DT (and
> > hence support non-DT systems such as those using ACPI).

> My view point atleast from hw side was that Codec is Parent which is
> encompassing these different blocks and bus interface. DT representation
> clearly showed that relationship between the parent and child devices.
> Binding it through DT will make sure that resources are ready before
> they are instantiated.

> All the child devices also have some machine/board specific properties
> and dependency on resources from parent like regmap, clks, and bus.

> In ACPI case, am not 100% sure how these will be represented inline with
> hw representation.

> Are you suggesting to use MFD here?

I'm saying that you should be using a MFD here like all the other
CODECs with multiple functions and that you shouldn't have
compatible strings in DT for the subfunctions since you already
know they'll be there simply from enumerating the chip as a whole
and how exactly they are divided up is a function of how Linux
currently has subsystems, not of the hardware.

> > > This will instantiate all the child devices like pinctrl, SoundWire
> > > Controller and so on.

> > Just create platform devices like normal...

> These are already modeled as platform devices, except the fact that
> these are children of Codec device.

No, you've got them as DT nodes.

--VpY0yS1BYpNZumir
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0clwoACgkQJNaLcl1U
h9ASZQf/Wax09z9q+yldgDqXtel9Fw1TmqbiQeU45IngtUaP/G3c4hKXjszf9tIu
D0+ip3V72iegmlnXKInzv+9+sB+l0gQb8g4PYBF4p1HPmXNao/FuZnKhbJSKvEAz
HjwLM80oUApbivHyMNycr48s3Yaix4tC5aeSolBGjGFAMQ++bD2Sblgfbd1M0K1T
YweS+5UStw/IboNQtKyl/TXaCTjjq7wtFUVUIfPZcazxlWBd278nApbuEwAqTbkU
wKvLgwQOaQIkAEMu4okXOUVwognAoNWs2Hfg8vJRTB5NMl4EvkSs55/agXXS0+mW
onDPn2hPaqk8Bj5oR5ymS7NFkR+cGw==
=d0xq
-----END PGP SIGNATURE-----

--VpY0yS1BYpNZumir--
