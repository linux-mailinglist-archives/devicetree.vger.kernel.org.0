Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D882B2599F
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 23:04:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727174AbfEUVEz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 17:04:55 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:35536 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727136AbfEUVEy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 17:04:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=d9M7yQ5yVOSEMt8T+B3jEX8ZpiakoXvD5uTaMsNBD5U=; b=IAmIMI5PjJ4StIZLqS2qHjJE3
        +BDscThjnoxlmE0lqyuyituvDJBsLSMqnf3n3vX3KTrNDOsSuKPYB0IJw1ZIcQNY7pZayaKKUmm5X
        kn4Ex7wD8OeJTV8bwAqN4WCx3Gg6vCCrJ5F9PoD74EC9oC11Rq48uXTuiC2NPrren6R9E=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=debutante.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
        (envelope-from <broonie@sirena.org.uk>)
        id 1hTBwH-0002Et-Sl; Tue, 21 May 2019 21:04:49 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
        id 6C9341126D13; Tue, 21 May 2019 22:04:49 +0100 (BST)
Date:   Tue, 21 May 2019 22:04:49 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Kuldeep Singh <kuldeep.singh@nxp.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        Ashish Kumar <ashish.kumar@nxp.com>
Subject: Re: [PATCH] dt-bindings: spi: spi-fsl-qspi: Add ls2080a
 compatibility string
Message-ID: <20190521210449.GB1580@sirena.org.uk>
References: <20190516104046.23830-1-kuldeep.singh@nxp.com>
 <20190516104046.23830-2-kuldeep.singh@nxp.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="gj572EiMnwbLXET9"
Content-Disposition: inline
In-Reply-To: <20190516104046.23830-2-kuldeep.singh@nxp.com>
X-Cookie: Klatu barada nikto.
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--gj572EiMnwbLXET9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 16, 2019 at 10:39:45AM +0000, Kuldeep Singh wrote:
> There are 2 version of QSPI-IP, according to which it can be big endian
> or little endian. There are some other minor changes as well.
> The big endian version uses driver compatible fsl,ls1021a-qspi and little
> endian version uses fsl,ls10280a-qspi

This doesn't apply against current code, please check and resend.

--gj572EiMnwbLXET9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzkZ/AACgkQJNaLcl1U
h9Dcggf/a5SCEOq1f8Uztg6sAxsCy+2TMZDAfoiuy9SH76QY+e6nHxdy+DrXkwPC
RGL2sLSSC9pbd1BqabLJn4+ivFrbs3FN6pG06RXTw8s9bm/jPC80df67eNaLt6Fq
Omyq0iYTAw3KMz3TyhdzmBeCS5T44EG+39ofRW5O2xms+mkXNPB7D5a8UjTj9OXr
vLoM4lx0yWLiMZ1KMZ0pc4/A9O3JXpamPmUn6+sYlVkW9680sM5ve1nzC3x9my0v
f4rFFjcJe/cFZ5PxkRMSeDeyJQTHRk3tWGnMBl81zKY0r+5x2Qfe/xg7tFHBNr7S
z6yi+WirwaH7QY8lCWCfWu9EFdwBSg==
=Titl
-----END PGP SIGNATURE-----

--gj572EiMnwbLXET9--
