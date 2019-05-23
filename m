Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EACFF27E9F
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2019 15:48:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730684AbfEWNsh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 09:48:37 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:44112 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730495AbfEWNsg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 May 2019 09:48:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=X6yLgBlALTmm8f+P1P/St4oPtsvR1/9CNsOiFiXV8xg=; b=KQ6R6tGNyApe5h8pwVsVlYGGZ
        NOR2ifx6p/cw3HqGvkJUeYMNLd0l4wHKzmL+jm/XlTB6BAXT0PfMNpDMBsX1f1ZRJv/8zwR+8Q6U2
        Y7ugrn80U037qfUn8jDKCssIerp3fWltxBuFlYgmscfhxJwQqOezW9qjZf8sDmVLHpmPg=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=debutante.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
        (envelope-from <broonie@sirena.org.uk>)
        id 1hTo59-0000Do-Ab; Thu, 23 May 2019 13:48:31 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
        id 36A361126D24; Thu, 23 May 2019 14:48:27 +0100 (BST)
Date:   Thu, 23 May 2019 14:48:27 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Kuldeep Singh <kuldeep.singh@nxp.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        Ashish Kumar <ashish.kumar@nxp.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: spi: spi-fsl-qspi: Add bindings of
 ls1088a and ls1012a
Message-ID: <20190523134827.GH17245@sirena.org.uk>
References: <20190522070133.24953-1-kuldeep.singh@nxp.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="9sSKoi6Rw660DLir"
Content-Disposition: inline
In-Reply-To: <20190522070133.24953-1-kuldeep.singh@nxp.com>
X-Cookie: I brake for chezlogs!
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--9sSKoi6Rw660DLir
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 22, 2019 at 07:00:32AM +0000, Kuldeep Singh wrote:
> Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> ---
> Update v2:
> 	Convert to patch series and rebasing done on top of tree

These still don't apply against current code (for-5.3 or for-next of
git://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git).  Please
check and resend.

Please use subject lines matching the style for the subsystem.  This
makes it easier for people to identify relevant patches.

--9sSKoi6Rw660DLir
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzmpKoACgkQJNaLcl1U
h9AeXgf+K/fyUAneVeSKJB2PlpJY0/l0sSrrEho/KS2x1MPK84BO5He4Q7R56mZ4
qPJSsRMJwhj62P5Zj8SoxbLdWKGYqs8AAwzvVztBMhOKmj3vbYeIK/2/ArKc1xLQ
GVYEcU8HpbFCQcxhsjpUQKDpBurkZUJ2+soa7IufJM2CF9+xXopqZt6bTcbIR8/P
bGg17RQIpq6Oukz30eyRDUVoTzTyCxEFK/M34nb/+O5wK0K2cKN6NWxGxoZNFNAx
jcFXRP/k3i9aZPISHZe3nCzIyPDoq7Z1Ez5o1Xd9rSy2VajZOdaDAPxlxbEbkYIx
eiSXwFFZvSye+r7wPu1w5NDriw7MYg==
=isZA
-----END PGP SIGNATURE-----

--9sSKoi6Rw660DLir--
