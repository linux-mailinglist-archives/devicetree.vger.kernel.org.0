Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 21DF5C2400
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2019 17:11:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731714AbfI3PLs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Sep 2019 11:11:48 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:35110 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731504AbfI3PLs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Sep 2019 11:11:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=8uSfWCZgaluu7uas+vrNL5RwfSc5wU4qMNPdunevW+g=; b=p63xC20XYZ6IwhINUL0OO9wgM
        /vpVVFPJakns3ost04TDmFPe/gnoUnxo7QBrcPYdE6lxNTLgRcno9ui7wlixQ7MGl+Ktd62P+JG6D
        hZB3c9Gte/f8Y8Pfn5L0M9f6r4yqolks3RsYxdBz1f62QucZ5gnmCDdH+ZLOeVJsTpLUI=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.co.uk>)
        id 1iExKn-0006z4-7t; Mon, 30 Sep 2019 15:11:33 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
        id 4E9A32742CE9; Mon, 30 Sep 2019 16:11:32 +0100 (BST)
Date:   Mon, 30 Sep 2019 16:11:32 +0100
From:   Mark Brown <broonie@kernel.org>
To:     "Sa, Nuno" <Nuno.Sa@analog.com>
Cc:     "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "lars@metafoo.de" <lars@metafoo.de>,
        "tiwai@suse.com" <tiwai@suse.com>,
        "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
        "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "perex@perex.cz" <perex@perex.cz>
Subject: Re: [PATCH 1/2] ASOC: Add ADAU7118 8 Channel PDM-to-I2S/TDM
 Converter driver
Message-ID: <20190930151132.GA4265@sirena.co.uk>
References: <20190926071707.17557-1-nuno.sa@analog.com>
 <20190926184318.GF2036@sirena.org.uk>
 <6245f99f37c10dcec0a52344bab4b980f08e07da.camel@analog.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="AqsLC8rIMeq19msA"
Content-Disposition: inline
In-Reply-To: <6245f99f37c10dcec0a52344bab4b980f08e07da.camel@analog.com>
X-Cookie: Mickey Mouse wears a Spiro Agnew watch.
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--AqsLC8rIMeq19msA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 30, 2019 at 09:44:00AM +0000, Sa, Nuno wrote:
> On Thu, 2019-09-26 at 11:43 -0700, Mark Brown wrote:

> > > +	case SND_SOC_DAIFMT_RIGHT_J:
> > > +		st->right_j = true;
> > > +		break;

> > Don't we need to set any register values here?

> The register set is done in adau7118_hw_params(). For right
> justification the device can delay bclck by 8, 12 or 16. So, We need to
> know the data_width to check if we can apply the configuration.

OK.

> > > +	case SND_SOC_BIAS_STANDBY:
> > > +		if (snd_soc_component_get_bias_level(component) ==
> > > +							SND_SOC_BIAS_OF
> > > F) {
> > > +			if (!st->iovdd)
> > > +				return 0;

> > This is broken, the device will always require power so it should
> > always control the regulators.

> The reason why I made this optional was to let the user assume that, in
> some cases, the supply can be always present (and not controlled by the
> kernel) and, in those cases, he would not have to care about giving
> regulators nodes in devicetree. Furthermore, the driver would not have

Have you tried doing that?  Notice how the regulator API subtitutes in a
dummy regulator for you and the driver works fine without custom code.

> to care about enabling/disabling  regulators. Is this not a valid
> scenario? Or is it that, for this kind of devices it does not really

It's not a valid scenario in driver code - the driver shouldn't be
randomly ignoring errors and hoping the errors were deliberate rather
than indiciations of real problems.

> > > +static int adau7118_resume(struct snd_soc_component *component)
> > > +{
> > > +	return snd_soc_component_force_bias_level(component,
> > > +						  SND_SOC_BIAS_STANDBY)
> > > ;
> > > +}

> > Let DAPM do this for you, there's no substantial delays on power
> > on so you're probably best just setting idle_bias_off.

> So, this means dropping resume/suspend and to not set idle_bias_on,
> right?

Right.  Like I say it looks like your power up path is fast enough for
this.

> > > +static int adau7118_regulator_setup(struct adau7118_data *st)
> > > +{
> > > +	int ret = 0;
> > > +
> > > +	st->iovdd = devm_regulator_get_optional(st->dev, "IOVDD");
> > > +	if (!IS_ERR(st->iovdd)) {

> > Unless the device can operate with supplies physically absent it
> > should not be requesting regulators as optional, this breaks your
> > error handling especially with probe deferral which is a fairly
> > common case.

> Just for my understanding (most likely I'm missing something obvious),
> why would I have issues with the error handling in probe deferral?

Actually it does look like you handle this correctly further down, the
normal pattern would have been to have the error handling inside the if
here and not indent the rest of the success path so I misread it.

--AqsLC8rIMeq19msA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2SGyMACgkQJNaLcl1U
h9CkAwf9EYiV4BQm0xxoHsLhEYWWYl4f4l8dyWkSXXJg/n2cm55ZotoM4Rxa3+Ir
L9m1vcsZPqn9T9CR2lBzOUKXfFkPnvpxao2yvwaZHrZrHELKGBtG+g+Kjgk9YT2+
VjvdYBf7czonV8AmRHnvZpgzv69cAfLJM0H4iVfmy0sclAgCMBSesTixTUDGcRgw
IjiCtqt9TkzZBrLUqefaCMDN3k3Jba+3jA580jZS3SUS6geaLyQCzSOnTkPQUka5
BAlftJCTfbAH/dUVLJlvpDTbzN11ivTduZU/y5q5SMvgp17jDU/e7yF0QUVDv0wK
zLChmYfli7ZUEHXi44LPrAeOfZY9NQ==
=syDp
-----END PGP SIGNATURE-----

--AqsLC8rIMeq19msA--
