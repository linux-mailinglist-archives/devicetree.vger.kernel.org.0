Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 651B31D30B0
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2020 15:09:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726067AbgENNJI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 May 2020 09:09:08 -0400
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:53917 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725955AbgENNJI (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 May 2020 09:09:08 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id 385C05C026D;
        Thu, 14 May 2020 09:09:07 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Thu, 14 May 2020 09:09:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm2; bh=X49GiuDf4PDo5pvDp+DDj6/4ujD
        zydI+cxg5rjxkb8Q=; b=PMerBt88FGdPWZPyvTAHbMuJPJC341fKMF5zRi+s8Yy
        sZ/jhoiFho0eotjCCkvOGfE3EjaA+h1BGB4VnqSLyxKdcAl6nSECocL0dRG240lq
        geze6iYR/nf74YzyrqtNNnTjhqbRkUV/UvFI/6asa2AAYUUUQZxrPlevbZ9dqBKg
        hkxumwuQ0a76LGI1Qe9OEIGV23M4/jles+c3qVaz+roiO9+k8FPNS88qaPUiltR4
        unHADLGOO7feMHaHDlHxe7zfm23BBmiNf/B062YQ9tg1L4C0JAYkjz2udGBQ7luO
        U9pZWgWAGnChEC0e6omE7QNSdnOmf/WuABIZ3TtFpQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=X49Giu
        Df4PDo5pvDp+DDj6/4ujDzydI+cxg5rjxkb8Q=; b=B9P7z/rmXlEX8CrBMT5DbM
        ts901KvCWNbr71aaWaADAtx7EvkDKhq3KKjSQtGcYFsNx3/B7tnBXdU30sH+EfVw
        BZG6v1A4RSwqRXTyDqb5ne4sN9cOH/6GnueHAbiZQknBJt+wC+4NvfzjUZQCjK4b
        xkjrS7YL82gQWvFcTwV3Nsa31TFsn40hvr1Aug5NnPVHEB3DYAl5crDR3EghiyWg
        x6GYafx9/irgX0/LQikdzbq/jx1R5R/+nGFjhKsNIJLatUlpSzZCjqFMRJ7Jcxyj
        AKuT8Os4CC1Qpi8ILIUS9KBsILYNmW6PNjnyvueJlf8T5its0GPcr6E7x1911dVg
        ==
X-ME-Sender: <xms:7kK9XuqXZVmzoOgqAGSvzonpQKadd_8xBmGKTLQh2quEw5oekYZ9Fw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrleeigdehjecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
    udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:7kK9XsoGbJbl7LISqne3Lv1MsLtKo0Ie8szc4RWVjI3JENzynBmb7g>
    <xmx:7kK9XjO4sH_omPfFJKa7yynl-MI9OuhJtfE6LWariLVqyUGuQZ_4OA>
    <xmx:7kK9Xt6ro3GOIJ9rIbp0jbLDVtiUps4BawGqnAyZYunheIqksT-aDA>
    <xmx:80K9Xg0hp1EhaAhLTnMC_e0UQ1wDwKMBo44WjMOJJoUA0w7VrV2zvA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 39825328005A;
        Thu, 14 May 2020 09:09:02 -0400 (EDT)
Date:   Thu, 14 May 2020 15:09:00 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Joerg Roedel <joro@8bytes.org>
Cc:     Chen-Yu Tsai <wens@csie.org>, Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux-foundation.org
Subject: Re: [PATCH v4 0/5] iommu: Add Allwinner H6 IOMMU driver
Message-ID: <20200514130900.k4gvr3zcajg3rouc@gilmour.lan>
References: <cover.b27dedd61e008ffcf55a028ccddda3bb4d21dfc8.1589378833.git-series.maxime@cerno.tech>
 <20200514123855.GI18353@8bytes.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="nqnml6fovdrucnar"
Content-Disposition: inline
In-Reply-To: <20200514123855.GI18353@8bytes.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--nqnml6fovdrucnar
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 14, 2020 at 02:38:55PM +0200, Joerg Roedel wrote:
> On Wed, May 13, 2020 at 04:07:19PM +0200, Maxime Ripard wrote:
> > Maxime Ripard (5):
> >   dt-bindings: iommu: Add Allwinner H6 IOMMU bindings
> >   dt-bindings: display: sun8i-mixer: Allow for an iommu property
> >   iommu: Add Allwinner H6 IOMMU driver
> >   arm64: dts: allwinner: h6: Add IOMMU
> >   drm/sun4i: mixer: Call of_dma_configure if there's an IOMMU
>=20
> Applied all to the IOMMU tree, thanks. The code lives in the
> arm/allwinner branch.

Did you also merge the DTS and DRM patches?

Ideally, they should be merged through other trees to avoid the conflicts as
much as possible (arm-soc and drm-misc respectively).

If it's an option, could you drop all of them but "dt-bindings: iommu: Add
Allwinner H6 IOMMU bindings" and "iommu: Add Allwinner H6 IOMMU driver"?

> Please use 'iommu/sun50i: <Capital Letter>...' as the pattern for your fu=
ture
> subject lines when changing the driver.

I'll try to remember that, thanks! :)

> I also have two fixes on-top which I will send out shortly and add to
> that branch.

Ugh. I'm not sure how the first one slipped through.. Sorry for that, I'm f=
ine
with both.

Thanks!
Maxime

--nqnml6fovdrucnar
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXr1C7AAKCRDj7w1vZxhR
xXGkAP0Y56azc0zLB0nzAvlu6+1IBmkd/BHghzQYprbgXKwlHgEAq0vPPaxdykZf
e5mP7oAXBQpOFWak0Bg5vMTZ6fX92Q0=
=33ck
-----END PGP SIGNATURE-----

--nqnml6fovdrucnar--
