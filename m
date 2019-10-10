Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B41B5D2DDD
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2019 17:36:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725901AbfJJPgi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Oct 2019 11:36:38 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:55760 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726436AbfJJPgi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Oct 2019 11:36:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=2/Z72vhQfofZgrUoDB8P7NRCh26TBlQoE03PoYj0MXI=; b=Iz/io2pg5tjKfpJv047LKyETQ
        /u6Y4/0sHpqyTvN5CIgOiJXRZaY2Uh7im74Tpn5IebUdJIWgwgUcffrHt0OLNvir9Aj6qtAfu/q30
        RHM0XWcOjBjc0xqxOW/Nxpzfsvt7U6q4ls+vXMS1bim15mzaEq8IsTzcWvWNhHujwmRl8=;
Received: from fw-tnat-cam3.arm.com ([217.140.106.51] helo=fitzroy.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.org.uk>)
        id 1iIaUK-0001tW-FG; Thu, 10 Oct 2019 15:36:24 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
        id EBE05D00041; Thu, 10 Oct 2019 16:36:23 +0100 (BST)
Date:   Thu, 10 Oct 2019 16:36:23 +0100
From:   Mark Brown <broonie@kernel.org>
To:     "Sa, Nuno" <Nuno.Sa@analog.com>
Cc:     "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "lars@metafoo.de" <lars@metafoo.de>,
        "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
        "tiwai@suse.com" <tiwai@suse.com>
Subject: Re: [PATCH v3 1/2] ASOC: Add ADAU7118 8 Channel PDM-to-I2S/TDM
 Converter driver
Message-ID: <20191010153623.GD4741@sirena.org.uk>
References: <20191010074234.7344-1-nuno.sa@analog.com>
 <20191010140512.GT2036@sirena.org.uk>
 <eace751502e84651d4bc727b59464f7cfbbebbd5.camel@analog.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="5p8PegU4iirBW1oA"
Content-Disposition: inline
In-Reply-To: <eace751502e84651d4bc727b59464f7cfbbebbd5.camel@analog.com>
X-Cookie: Void where prohibited by law.
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--5p8PegU4iirBW1oA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 10, 2019 at 03:05:24PM +0000, Sa, Nuno wrote:
> On Thu, 2019-10-10 at 15:05 +0100, Mark Brown wrote:

> > You could use regulator_bulk_enable() here (and similarly on
> > disable) but it doesn't fundamentally matter - they do guarantee
> > that they'll do things in sequence, though they don't wait for
> > the ramp to complete before kicking off the next enable in the
> > sequence which can be an issue for some hardware.

> Yes, regulator_bulk_enable() could fit. The only thing that worries me
> is that we only check for errors returned from regulator_enable() after
> all async work is done (which is probably what you mean by "they don't
> wait for the ramp to complete before kicking off the next enable...")
> which could leave us with DVDD applied without IOVDD for a short amount
> of time. I'm not sure this would be a really issue and that would
> damage the HW, but from what I can tell from the datasheet, It's not
> advised to apply DVDD without IOVDD.

Yeah, exactly.  OTOH things like that (especially for brief time
periods) are much more likely to result in the chip being in some
weird state on init which won't matter if we immediately power
off than anything else.  Like I say it's not a requirement to use
bulk operations.

--5p8PegU4iirBW1oA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2fT/cACgkQJNaLcl1U
h9Dt7gf/ZvUHZZNHq/t4g3RlSNysGA0NnGbqqC9iVDNUYtHm0yFv2ah5wg+ep56/
l4Hd2Z8Wikrf9rQfgfgAyvGkFDAqMZqchLf03KZu614f1qmUe9iwSDnszQT17mwl
mtQgoy+FzkZNKZdHGTHSfTxyZLlktWDZtAk//ucTOchkq2SiLree8x96Bd0+yvHZ
UQns3/11BrVtXyoj8T1wldhKfnv9mhG4A2BJSKsoxLSwMRv3KhuGtwD2fDMI2r83
bT3Z9ATm/z+EUftbBzNRK55l1q2xCgW2L2Cx+QN3foKOYp1xxvZp/0IkTohu+9mm
QCCHmaMkEfcWM4VQFFrQ5HUf+ClDqQ==
=W1nX
-----END PGP SIGNATURE-----

--5p8PegU4iirBW1oA--
