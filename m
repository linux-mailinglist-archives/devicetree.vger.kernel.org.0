Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 398D2817EF
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 13:13:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727349AbfHELNM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 07:13:12 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:46132 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727328AbfHELNM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 07:13:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=utB0r1atmnVwa7CY1NTWgbkaYDxQ5etSjcoSuqlLbMk=; b=NgjEVd/0WOtO+B3zJm+gOUBRU
        yHilyhEsbqPZrpPixoQnumwIxj6RwvF24GISfjL79c79VykIZNce79+G7UlQ6SBrEtr4lnsEy1TmD
        RgifsQ74ii9R0OYcOpPTLmwOYjhFIU3mXnHneKwAErY2Ll+STpvxoG6W/CTLAAyzFbrIM=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.org.uk>)
        id 1huavJ-0008IY-L9; Mon, 05 Aug 2019 11:13:05 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
        id 132672742D06; Mon,  5 Aug 2019 12:13:05 +0100 (BST)
Date:   Mon, 5 Aug 2019 12:13:05 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Ashish Kumar <ashish.kumar@nxp.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
        Kuldeep Singh <kuldeep.singh@nxp.com>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>, Han Xu <xhnjupt@gmail.com>,
        Rob Herring <robh@kernel.org>
Subject: Re: [EXT] Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi: Add
 bindings of ls1088a and ls1012a
Message-ID: <20190805111304.GC6432@sirena.org.uk>
References: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
 <1560942714-13330-3-git-send-email-Ashish.Kumar@nxp.com>
 <20190709200857.GA8477@bogus>
 <CA+EcR20ui8Liot+PtzdU6CJb5WzLDHS0Xc7VR7qGAOpD5=ArNQ@mail.gmail.com>
 <VI1PR04MB401579932CF0E7D4AE80E0C995DA0@VI1PR04MB4015.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="i7F3eY7HS/tUJxUd"
Content-Disposition: inline
In-Reply-To: <VI1PR04MB401579932CF0E7D4AE80E0C995DA0@VI1PR04MB4015.eurprd04.prod.outlook.com>
X-Cookie: Place stamp here.
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--i7F3eY7HS/tUJxUd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 05, 2019 at 09:07:47AM +0000, Ashish Kumar wrote:

> Could you please send this patch[1] from your spi tree, It applies seamle=
ssly on
> https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git/
>=20
> [1]: http://patchwork.ozlabs.org/patch/1118637/

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

--i7F3eY7HS/tUJxUd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1ID0AACgkQJNaLcl1U
h9CqaAf/ZHR3MbVzooalCiifNEU+1YHfwNNTTBUF8HJWr2BM2HQbpYWCuQcm9iyQ
FtnKDWPx6ouSI1lYCORQJyqkrZo36kPYN33OegMbzeNJRQb3uw94zVyVlOXAFl3h
/gl+o0+hrEQ2Ttnm/Nj9gZFiGxV6IFHE53HPFcpYBmPj6ME1i3XswYFrpxx6PoQK
GqqbirJm/v47fzXXIhKI6c0PFAKS6mPgFp68krzFXFGgPvvePJ+T5YP0lkImtfhK
BL2GSL9tMrf3InZ+/yOauhunSp7pqr1vF04udoLo5eh5sQqlo+/zCTqUqWN3Pqn8
N4keQhb+N29o99Bx2UV7SBd1YOBC+w==
=FyJ3
-----END PGP SIGNATURE-----

--i7F3eY7HS/tUJxUd--
