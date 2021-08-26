Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 695273F8C6D
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 18:47:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232835AbhHZQr5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 12:47:57 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:49266 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229810AbhHZQr4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 12:47:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=4iePUfVCoqQTU+Jkn94t4cw64850bMiYuuSedSykd+o=; b=IWO/WE20Q/eE06wvl1XfiRgbYO
        GI6iHwGJE+BJFdsRSgVjxM5O0oA6OHTn5DflXEPoDcNcEWiETt6hMGxE3eslL/jX0/qiZ0ggQhcPJ
        QsPkVfttesRFH+jWF3GztZg/wS4Ypua1j9Qv2asYvPE+L0yDNp4uOLDuGcXjM1Ym9f64=;
Received: from 94.196.104.219.threembb.co.uk ([94.196.104.219] helo=fitzroy.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <broonie@sirena.org.uk>)
        id 1mJIWs-00FVed-Vn; Thu, 26 Aug 2021 16:47:03 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
        id 203C3D123A5; Thu, 26 Aug 2021 17:46:45 +0100 (BST)
Date:   Thu, 26 Aug 2021 17:46:45 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     robh+dt@kernel.org, alsa-devel@alsa-project.org,
        jiaxin.yu@mediatek.com, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] ASoC: dt-bindings: mediatek: mt8192: re-add audio afe
 document
Message-ID: <YSfFdQLzZkZ4Inxf@sirena.org.uk>
References: <20210826163329.3903340-1-tzungbi@google.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="LUR/zvNV20WmbNxR"
Content-Disposition: inline
In-Reply-To: <20210826163329.3903340-1-tzungbi@google.com>
X-Cookie: I can relate to that.
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--LUR/zvNV20WmbNxR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 27, 2021 at 12:33:29AM +0800, Tzung-Bi Shih wrote:

> dt-bindings/clock/mt8192-clk.h now can be found in linux-next per [4],
> re-adds the document back.

OK, so that means we need to wait until after -rc1 to apply this
- it needs to be in mainline or otherwise cross merged with the
ASoC tree to avoid bisection issues.  I'll queue it up for -rc1.

--LUR/zvNV20WmbNxR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEnxXQACgkQJNaLcl1U
h9C5qQf+IUkLO9vzpKVDHaBOp7ERntEwOmwTLhF7FfUq26hlDK+Z3++0N1gaMGK5
x+cQtwLw64YMbGNL70rGMJAdQaDAiNvssB3De2uNTrugXkD0Jtfsk+C7GvVYDiNh
nDBn03GrDIdvOOLKbqCt4+TmHdXe2+gOIbBcanp0V9auvjiuGDys1blzcEefxQ+T
oLxnVtjyF5fJmgr9RfS3/Wsf3rLk0PGdISy0e9fgvmzGoPIJsmi/VUbik4ohUr4t
CAZGrJ5nYa42qCwEfwop7OyRs5OOSVydXCMhjKBSBBblAD6ddKoLrbhqOUX9NlQm
9J3Oau3mVbIDPNXm/YJeGtnXvp+09A==
=U92Y
-----END PGP SIGNATURE-----

--LUR/zvNV20WmbNxR--
