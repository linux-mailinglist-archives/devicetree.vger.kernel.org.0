Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C08F55D4E8
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2019 18:58:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726150AbfGBQ6A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jul 2019 12:58:00 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:36618 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726768AbfGBQ6A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Jul 2019 12:58:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=PTJMv27FdFMN8eOKebTdXSkSBv3n75YsOvB2JBF51mE=; b=VE3UBwBpkKPW38Q7ZCAyVPtSg
        xfbQ62knRIScKOX9NJNyFl41heQVDn1WxE3F4lAj+iQbtnq+rMapEuyzi/4c5lBHmhH0CU2HcQxnX
        qx5h42g66HBHl95X67n221JvuFSMfBra4PZGnYH/BkgpeEB6OPxYRHy7AiXxFfpo9z3W8=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=finisterre.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <broonie@sirena.org.uk>)
        id 1hiM6M-0002fC-Av; Tue, 02 Jul 2019 16:57:54 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
        id A8E63440046; Tue,  2 Jul 2019 17:57:53 +0100 (BST)
Date:   Tue, 2 Jul 2019 17:57:53 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     robh+dt@kernel.org, bgoswami@codeaurora.org, vkoul@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        mark.rutland@arm.com, alsa-devel@alsa-project.org, srini@kernel.org
Subject: Re: [PATCH 2/6] ASoC: wcd934x: add support to wcd9340/wcd9341 codec
Message-ID: <20190702165753.GQ2793@sirena.org.uk>
References: <20190702080920.22623-1-srinivas.kandagatla@linaro.org>
 <20190702080920.22623-3-srinivas.kandagatla@linaro.org>
 <20190702144411.GP2793@sirena.org.uk>
 <2e2a32dd-3dca-5391-1bfa-ab1c1f420e3a@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="aX6oBa4COn3eIhlv"
Content-Disposition: inline
In-Reply-To: <2e2a32dd-3dca-5391-1bfa-ab1c1f420e3a@linaro.org>
X-Cookie: This sentence no verb.
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--aX6oBa4COn3eIhlv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 02, 2019 at 05:37:01PM +0100, Srinivas Kandagatla wrote:
> On 02/07/2019 15:44, Mark Brown wrote:
> > On Tue, Jul 02, 2019 at 09:09:16AM +0100, Srinivas Kandagatla wrote:

> > > +	for (i = 0; i < ARRAY_SIZE(cpr_defaults); i++) {
> > > +		regmap_bulk_write(data->regmap,
> > > +				  WCD934X_CODEC_CPR_WR_DATA_0,
> > > +				(u8 *)&cpr_defaults[i].wr_data, 4);
> > > +		regmap_bulk_write(data->regmap,
> > > +				  WCD934X_CODEC_CPR_WR_ADDR_0,
> > > +				(u8 *)&cpr_defaults[i].wr_addr, 4);

> > What is "cpr" and should you be using a regmap patch here?  Why
> > is this not with the other default updates?  You've got loads of
> > random undocumented sequences like this all through the driver,
> > are they patches or are they things that should be controllable
> > by the user?

> It makes sense to have a single default map here, I will do the in next
> version. And regarding user controllable, I will go thru the list once
> again in detail and remove user controllable registers.

What is a "default map"?  In terms of user controllable stuff
it's not just a question of if things are currently user
controllable but also if they should be user controllable.

> > > +	return of_platform_populate(wcd->dev->of_node, NULL, NULL, wcd->dev);

> > Why are we doing this?

> I will not be using MFD in this instance as most of the resources like
> interrupts, pins, clks, SoundWire are modeled as proper drivers with
> their respective subsystems.

This is a driver for a single device, you should be able to
instantiate things without requiring binding through DT (and
hence support non-DT systems such as those using ACPI).

> This gives a advantage of reusing those drivers like SoundWire, pinctrl
> on other Qualcomm IPs as well!
> Also I did not wanted to have a custom functions or hooks in the
> drivers, so platform bus made much sense for me to use here, which can
> take care of bringing up and tearing down the devices with proper parent
> child relationship.
> This will instantiate all the child devices like pinctrl, SoundWire
> Controller and so on.

Just create platform devices like normal...

--aX6oBa4COn3eIhlv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0bjQ8ACgkQJNaLcl1U
h9BMJAf+IEFPxTtA+36N+leLsbcLLmWvHD7CHxl9ksLO5f3LYWTOeeedAUSProjR
07HQiUbOsyuyYycS7SEHjQE/qwKJl5yk339Wg7pcIRxcQxnth8usDcmez9lOjXjt
AhOaC8oJWuPdKN/8mp5DzI2W06fvdfgZqZfwk1I4RspAHZXEJvPx2c62b7lBp5s7
Mg8eDoNa66UNOW4DanR3eho1uySOVcJwulzMnrIraqzxr9SeFVlXzFwOuRVtiKO5
s2ub2bfO/4Vt5Tt9OyglfRBRPmj1rL8oI8FECK0V2ZxWWnZHwZ15xPVip9NfYxaD
tVfh6acECVYUb1rsvtWresmJQZGlug==
=CKlN
-----END PGP SIGNATURE-----

--aX6oBa4COn3eIhlv--
