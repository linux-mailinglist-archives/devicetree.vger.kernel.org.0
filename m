Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 409052599D
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 23:04:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727156AbfEUVEn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 17:04:43 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:35220 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727136AbfEUVEn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 17:04:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=Lf74MmlnwlqtCdDja2iANRseC3EzphEbvnFJ2OJtzSw=; b=FMU+Vxyn1gwlgIJAIeG/efv6e
        dNzYZ6Nd4YBOJfKY/6Fr3gOQlWMmuLUS12PmHYTh47j0SVall3ZA03RP40A/I3JOB5kG3vjACr49p
        huaNhz3iRq2rhRehBsP0wKhVDDc5I9lBk8fTBKxcioMVw+ydrFNP6xXVaEBbxD/hZYyOQ=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=debutante.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
        (envelope-from <broonie@sirena.org.uk>)
        id 1hTBw5-0002Ek-6C; Tue, 21 May 2019 21:04:37 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
        id A17D91126D13; Tue, 21 May 2019 22:04:36 +0100 (BST)
Date:   Tue, 21 May 2019 22:04:36 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Kuldeep Singh <kuldeep.singh@nxp.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        Ashish Kumar <ashish.kumar@nxp.com>
Subject: Re: [PATCH] dt-bindings: spi: spi-fsl-qspi: Add bindings of ls1088a
 and ls1012a
Message-ID: <20190521210436.GA1580@sirena.org.uk>
References: <20190516104046.23830-1-kuldeep.singh@nxp.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="qDbXVdCdHGoSgWSk"
Content-Disposition: inline
In-Reply-To: <20190516104046.23830-1-kuldeep.singh@nxp.com>
X-Cookie: Klatu barada nikto.
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--qDbXVdCdHGoSgWSk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 16, 2019 at 10:39:44AM +0000, Kuldeep Singh wrote:
> Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> ---

This doesn't apply against current code, please check and resend.

--qDbXVdCdHGoSgWSk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzkZ+MACgkQJNaLcl1U
h9ConQf8DxUshxU2LvQL9Rur0EMgkGTiclmopbPNfSEPKCIyykDv0DB5Po34Lt91
b2n4r4A2ohe4Huy8/tNniwrXPDqam8fuxSqE9HxYnFIiWkBcvR+fWYXxvHb/hASS
ZMISJFt7Y2HCyqad0X6zB4Q5V8zvu/iukNCuMY3X4x/9fQVdUvbcpDEeDxFdAt3I
ZQsQZ4CkP6JkRwlXNADuGgvWvnnH5XZSBonz/AuUSQuul59EnaxfB9NHTort0bu1
6dI7IVOkGaf3gbxuPxOcSME/f0yUGQw9H180Ulf8w/r5O0MYer6F6exCQbHkWne/
HVm6I+571Rqbr/Ob8J9BBVGT57TLAA==
=be/b
-----END PGP SIGNATURE-----

--qDbXVdCdHGoSgWSk--
