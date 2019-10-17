Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E159DDAB5F
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 13:43:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405982AbfJQLnN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Oct 2019 07:43:13 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:57252 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727991AbfJQLnN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Oct 2019 07:43:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=fLFd7LzF6yq9UZSwX1XeG9QvY/4tQpRIA8giSgYZH9Q=; b=BnAw9avpmlEstxbFUi4F2lH9M
        kswYTuDgvgJuSt4yuRpikoUxBKl6HEdT/g5Nlz9N+kblWycf/P/Oe5s6dboVnXTwe7uVbNcQd+492
        0760QGFvuLkB/mYVJ8koh3k+zL9n10/vUJHrWqBoSBD059V9VK/w10bvzOFgwzeVNXh74=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.co.uk>)
        id 1iL4BL-0000rn-3v; Thu, 17 Oct 2019 11:43:03 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
        id 56B7B27429C0; Thu, 17 Oct 2019 12:43:02 +0100 (BST)
Date:   Thu, 17 Oct 2019 12:43:02 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
        Gwendal Grignou <gwendal@google.com>,
        devicetree@vger.kernel.org,
        ALSA development <alsa-devel@alsa-project.org>,
        Jimmy Cheng-Yi Chiang <cychiang@google.com>,
        Nicolas Boichat <drinkcat@google.com>, robh+dt@kernel.org,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Benson Leung <bleung@google.com>,
        Dylan Reid <dgreid@google.com>
Subject: Re: [alsa-devel] [PATCH v3 07/10] ASoC: cros_ec_codec: support WoV
Message-ID: <20191017114302.GE4976@sirena.co.uk>
References: <20191014180059.07.I5388b69a7a9c551078fed216a77440cee6dedf49@changeid>
 <201910150924.II2vi71d%lkp@intel.com>
 <CA+Px+wXEpPbWgsQcrz3YVbH1-3z9Jgy3KM3H8o=O6T3M2Gbb2A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="WK3l2KTTmXPVedZ6"
Content-Disposition: inline
In-Reply-To: <CA+Px+wXEpPbWgsQcrz3YVbH1-3z9Jgy3KM3H8o=O6T3M2Gbb2A@mail.gmail.com>
X-Cookie: Shut off engine before fueling.
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--WK3l2KTTmXPVedZ6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 15, 2019 at 02:49:41PM +0800, Tzung-Bi Shih wrote:
> On Tue, Oct 15, 2019 at 9:34 AM kbuild test robot <lkp@intel.com> wrote:

> >       priv->ec_shm_addr = of_read_number(regaddr_p, 2);
> >                           ^~~~~~~~~~~~~~
> >                           wov_read_audio
> >    cc1: some warnings being treated as errors

> The error is caused by EC_CODEC=y but CONFIG_OF is not set:
> $ grep -e 'CONFIG_OF.*' -e 'EC_CODEC' config
> # CONFIG_OF is not set
> CONFIG_SND_SOC_CROS_EC_CODEC=y

If that can happen there's missing dependencies in Kconfig or missing
ifdefs in the code.

--WK3l2KTTmXPVedZ6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2oU8UACgkQJNaLcl1U
h9A7/wf+LvKUAV7H+vgj/Q6qc7dRiYEn9n3hdiKSBQN1pDXOxHlDbTFhg21WyZOZ
IcmOiGga1iRv7w3qV5geKJGXnR0W5WwTcmiwOYRhBlTjO/0C8wvnWn9PnpGZTR4i
VxidkVnUx67DATwTDwbcHnXS0QSGNZOJofa84byEy2Rn/Ctd1c84dNzFbsxQxHDV
rC25xFZLE+CkFAo8+MN00xW0ZR14YzhrGyJvIwbapx9NThyuf03Tx4CnHWyz1/ia
klhfcyX9Gaozl5mkGTcLSpk3+rO/VZUwK99XrheSXHwsyGKJAvffg+VeL5lUQDAu
IexVAZk0pMTQVnB20o/LoHcirDt0iw==
=V6Ke
-----END PGP SIGNATURE-----

--WK3l2KTTmXPVedZ6--
