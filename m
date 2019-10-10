Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 45E91D2C15
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2019 16:05:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726244AbfJJOF1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Oct 2019 10:05:27 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:43736 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726227AbfJJOF1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Oct 2019 10:05:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=YKb2E0bqtC+1TS6bbf5/9WOYFCNWex11PfY1IyHGgs0=; b=AVWXSHoeV5dXwKMHtFgapdpHe
        luf83G9y5Cvk+3H6TVEWgYuBPnHWJKjh7dQq0Ubl6R+3OjeeZq/SnQGXaeQBwow27JLd3OinXxuhW
        NaHgIzrRmwUdGbGojf/VkSpa/I0rbQPcSHLi3Kb7DDobrloTpriQK1++chVZZl7oT4+qY=;
Received: from fw-tnat-cam3.arm.com ([217.140.106.51] helo=fitzroy.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.org.uk>)
        id 1iIZ45-0001Vb-9c; Thu, 10 Oct 2019 14:05:13 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
        id DC38CD0003A; Thu, 10 Oct 2019 15:05:12 +0100 (BST)
Date:   Thu, 10 Oct 2019 15:05:12 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        Mark Rutland <mark.rutland@arm.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>
Subject: Re: [PATCH v3 1/2] ASOC: Add ADAU7118 8 Channel PDM-to-I2S/TDM
 Converter driver
Message-ID: <20191010140512.GT2036@sirena.org.uk>
References: <20191010074234.7344-1-nuno.sa@analog.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ZYwTRRUThkGj9JQ7"
Content-Disposition: inline
In-Reply-To: <20191010074234.7344-1-nuno.sa@analog.com>
X-Cookie: Be careful!  UGLY strikes 9 out of 10!
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--ZYwTRRUThkGj9JQ7
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 10, 2019 at 09:42:33AM +0200, Nuno S=E1 wrote:

> +			/* power on */
> +			ret =3D regulator_enable(st->iovdd);
> +			if (ret)
> +				return ret;
> +
> +			/* there's no timing constraints before enabling dvdd */
> +			ret =3D regulator_enable(st->dvdd);
> +			if (ret) {
> +				regulator_disable(st->iovdd);
> +				return ret;
> +			}

You could use regulator_bulk_enable() here (and similarly on
disable) but it doesn't fundamentally matter - they do guarantee
that they'll do things in sequence, though they don't wait for
the ramp to complete before kicking off the next enable in the
sequence which can be an issue for some hardware.

--ZYwTRRUThkGj9JQ7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2fOpUACgkQJNaLcl1U
h9BEPwf/VxMhiR0z6PYlab1hBh6JMo2K1WIXb2S3zahILtM5SXxYMmwRh16GuG0o
pIrwnxc5hMD4+bqp6vYu9QaISbKB8UoBsAr+SU5b/eHsba3r0Jbl/wNdTdbgCVus
ZCYLHYtnWZrx9okSggQ9viUDkqls7dLCPMfu/+qV5NiDAasZJZUIEjkaUdfAhYwS
z0yrot94R5p3QdNEI5ds7y5ZuKWGDEcWJNU3PekJ+putlZyUF8qa9/nV+/uZigQ/
hH+oMbQGEg9pgx/neQN2VxC4hIXtXcaDMT4WuEVt2HjWCK2xcFrauNzAg7HkdV0z
EkVGgsiWwDQG59xutrTflWxmmQCOtw==
=S+PA
-----END PGP SIGNATURE-----

--ZYwTRRUThkGj9JQ7--
