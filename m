Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 398A7BF584
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2019 17:08:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726029AbfIZPIA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Sep 2019 11:08:00 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:59696 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725813AbfIZPIA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Sep 2019 11:08:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=4pLPnynkA7HWtaMnNTV/PFGoJgytgfbQyorJh3FSgNM=; b=KeNWxeABWoN68sqX4gBVJDfP/
        wWk4rBUtHmI3WxTduOxdRh7KduW0Q5aEvuGQBUxON+jYBB1PmomPdae8lJFMLcWwVZUEtjzORYWMf
        djVTMWhN4yMp/9K40cmouwdPg3BjPzXbFMZ5HZk+MQwC9jEWQrsKKna09q/EQv91C9H/s=;
Received: from [12.157.10.118] (helo=fitzroy.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.org.uk>)
        id 1iDVMY-0003rq-UH; Thu, 26 Sep 2019 15:07:23 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
        id 6C02ED02CFF; Thu, 26 Sep 2019 16:07:21 +0100 (BST)
Date:   Thu, 26 Sep 2019 08:07:21 -0700
From:   Mark Brown <broonie@kernel.org>
To:     Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Liam Girdwood <lgirdwood@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 1/2] ASOC: Add ADAU7118 8 Channel PDM-to-I2S/TDM
 Converter driver
Message-ID: <20190926150721.GT2036@sirena.org.uk>
References: <20190926071707.17557-1-nuno.sa@analog.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="zQiiCAM5ptAyb9EE"
Content-Disposition: inline
In-Reply-To: <20190926071707.17557-1-nuno.sa@analog.com>
X-Cookie: Be careful!  UGLY strikes 9 out of 10!
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--zQiiCAM5ptAyb9EE
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 26, 2019 at 09:17:06AM +0200, Nuno S=E1 wrote:
> This patch adds support for the 8 channel PDM-to-I2S/TDM converter. The
> ADAU7118 converts four stereo pulse density modulation (PDM) bitstreams
> into one pulse code modulation (PCM) output stream. The source for the PDM

This is the third copy of this I've got in the past 24 hours -
there's no versioning or anything so what's going on?

--zQiiCAM5ptAyb9EE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2M1CgACgkQJNaLcl1U
h9A4EQf6A7KkdqPiVOYmb+wMLdzwvMZ5a7NT59t1LTN1pQxfvhj9DFWW5yC2kn4U
vV2EtKpQhx203WjJiTOTffygZYyOLLFqoG1rB8hdHkmbrk5Oc3qHvNiP0FZSBQue
ExwQdk1eDpvLU4SVcoD9Wy6/YjLJCs1KnABIAdPqbKyIpUZnUwi11n4NKg4HPBo9
LzytHc+Wt68kmbadQDVGM/u4hMi8vCD93mWyjyYwsZGgMWppvianVMyEE8x02iEF
KGlLC8HpaafCHTEgVOghdXzyiDr2pz0fyqZUG+Cp1uL9sTWTr53PfoMxx52J702h
B1RKOXoQIveEeCemwYq0E5tNXNIhwQ==
=4BYm
-----END PGP SIGNATURE-----

--zQiiCAM5ptAyb9EE--
