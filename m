Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D1C8F34AB1
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 16:45:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727564AbfFDOp1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jun 2019 10:45:27 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:53858 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727385AbfFDOp1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jun 2019 10:45:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=N28LjJkz/Mx7r43eirlH7u4WWvO5iyeKXFG3ckomDW0=; b=IINgz0Wv1nxvpFB4EdBRt3GPR
        BIgOEMg69TUSP8LNtkgFxC5fQtoAn7quvxOvuYgNCQn8VE21LD84sKKNii1mNXZu3NxcigGTLP13L
        Nv6NmS0WC3v7cTI0CWqgzKX6MQkEPW0ADhZMT5kjmtn3smBZkvsLBO8mmASeuS3hPweM4=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=finisterre.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <broonie@sirena.org.uk>)
        id 1hYAgg-0006D5-Eu; Tue, 04 Jun 2019 14:45:18 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
        id AD932440046; Tue,  4 Jun 2019 15:45:17 +0100 (BST)
Date:   Tue, 4 Jun 2019 15:45:17 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        alsa-devel@alsa-project.org, Chen-Yu Tsai <wens@csie.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Marcus Cooper <codekipper@gmail.com>
Subject: Re: [PATCH] ASoC: sun4i-i2s: Change SR and WSS computation
Message-ID: <20190604144517.GF2456@sirena.org.uk>
References: <20190604085449.13195-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="PLVMksexArUZ/iL3"
Content-Disposition: inline
In-Reply-To: <20190604085449.13195-1-maxime.ripard@bootlin.com>
X-Cookie: The other line moves faster.
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--PLVMksexArUZ/iL3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 04, 2019 at 10:54:49AM +0200, Maxime Ripard wrote:
> The current computation for the SR (sample resolution) and the WSS (word
> slot size) register parameters is based on a switch returning the matching
> parameters for a given params width.

This doesn't build for me with current code:

  CC      sound/soc/sunxi/sun4i-i2s.o
sound/soc/sunxi/sun4i-i2s.c:169:28: warning: =E2=80=98struct sun4i_i2s=E2=
=80=99 declared inside parameter list will not be visible outside of this d=
efinition or declaration
  s8 (*get_sr)(const struct sun4i_i2s *, int);
                            ^~~~~~~~~
sound/soc/sunxi/sun4i-i2s.c:170:29: warning: =E2=80=98struct sun4i_i2s=E2=
=80=99 declared inside parameter list will not be visible outside of this d=
efinition or declaration
  s8 (*get_wss)(const struct sun4i_i2s *, int);
                             ^~~~~~~~~

and lots of similar stuff.

--PLVMksexArUZ/iL3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlz2g/wACgkQJNaLcl1U
h9BCIgf/WLTKo7F+GH5yembRxj+jHQz35TZZPqb9mhx/Hyogn+/+bF5LeqEi8hKq
L7Mpzf0KyzhKz/VDRGc3TlsLihsQ0okqybE+/PlOS3Y7DRvd115KYLsOdfVYOucD
bF48im6bMWWARcoIyK6B2vAYx9y28Z4qUgLcJGOcLVwwCC1K/nq6A9kFul0lXXs6
44SRqWz911MOpt3VCP2FHpMnjiHcJP9nZ0pRZTmaV057lQCthPaCNuz+r5nzGy/Z
Oh8Q+0DbkTmOriia5YZ6OY83lRYHBKFEPtc3nf3zuxgesObEJdvPVRur6ZGZSNDL
tKXQOFITXAVWrTfyE+Z809Bz1jgX5g==
=cwPD
-----END PGP SIGNATURE-----

--PLVMksexArUZ/iL3--
