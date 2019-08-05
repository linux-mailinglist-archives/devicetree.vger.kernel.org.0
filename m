Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 26A4D817F2
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 13:13:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727357AbfHELNe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 07:13:34 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:46786 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727328AbfHELNe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 07:13:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=kBsgsu4Ndv8rRw1FTwpq5BKmxMVjhwpJeW5EeXRVM3A=; b=pcOsj5AWB6sEO0kE8tvGGzvqx
        ixnbmE6ZOBb1461RtXgy7n8AG/pp79FK1VucIJcVgh9U63R1ob7LcdY6Mf7uLp8Svot5wbi8ZUv4b
        X6DwZIqgMuyC5fZPpUUtN4Fb4lULwL5+Dmv5n7MtHj1d4yKTURaRs/dgnORjLl6S1yOiE=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.org.uk>)
        id 1huavh-0008Il-Rm; Mon, 05 Aug 2019 11:13:29 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
        id 1AB4E2742D06; Mon,  5 Aug 2019 12:13:29 +0100 (BST)
Date:   Mon, 5 Aug 2019 12:13:29 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Ashish Kumar <ashish.kumar@nxp.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
        Kuldeep Singh <kuldeep.singh@nxp.com>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>, Han Xu <xhnjupt@gmail.com>,
        Rob Herring <robh@kernel.org>
Subject: Re: [EXT] Re: [Patch v3 1/2] dt-bindings: spi: spi-fsl-qspi: Add
 ls2080a compatibility string to bindings
Message-ID: <20190805111329.GD6432@sirena.org.uk>
References: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
 <1560942714-13330-2-git-send-email-Ashish.Kumar@nxp.com>
 <20190709200837.GA7806@bogus>
 <CA+EcR23hhD2=abMtNGDoW1LtXSE4qfjTy1uzU7sgrbi7W=KSbw@mail.gmail.com>
 <VI1PR04MB4015C2C9407598EFEEB4CB2D95DA0@VI1PR04MB4015.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="C+ts3FVlLX8+P6JN"
Content-Disposition: inline
In-Reply-To: <VI1PR04MB4015C2C9407598EFEEB4CB2D95DA0@VI1PR04MB4015.eurprd04.prod.outlook.com>
X-Cookie: Place stamp here.
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--C+ts3FVlLX8+P6JN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 05, 2019 at 09:08:17AM +0000, Ashish Kumar wrote:

> Could you please send this patch[1] from your spi tree, It applies seamle=
ssly on
> https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git/
>=20
> [1]: http://patchwork.ozlabs.org/patch/1118636/

Please don't send content free pings and please allow a reasonable time
for review.  People get busy, go on holiday, attend conferences and so=20
on so unless there is some reason for urgency (like critical bug fixes)
please allow at least a couple of weeks for review.  If there have been
review comments then people may be waiting for those to be addressed.

Sending content free pings adds to the mail volume (if they are seen at
all) which is often the problem and since they can't be reviewed
directly if something has gone wrong you'll have to resend the patches
anyway, so sending again is generally a better approach though there are
some other maintainers who like them - if in doubt look at how patches
for the subsystem are normally handled.

--C+ts3FVlLX8+P6JN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1ID1gACgkQJNaLcl1U
h9D2Ngf+KKyQedsjiuTDPHlHvu5s5J2BBDWGyiQg/7+PD+zbaKL4xYA0aDebAeXG
gJYTSdGwnGGLG9WhT5rIlccywcv+tpTn44T6d20GGq/qmfw4y2gX2MTBRtFTlQ+n
FguPs6tjIakMcv2tuVdhBk7IOXE5wJntz+SJaZWOZR1V74IQeofM5K9vtoCXDc5C
3KIADcid54JrTqCvuEwwaTpD2r+fKv7SW4j89OBFZaCvXeu24YNZEEQ/+erK+pUh
k3uykZHERvHIwXJNIBJgat0qe9XVtxHT62XGcZ9D/BafYGIzRHO22h3e7yHfT6a9
wuJ7iMVWU6Fypf3RROY6Ddv5EGpj4Q==
=VG4g
-----END PGP SIGNATURE-----

--C+ts3FVlLX8+P6JN--
