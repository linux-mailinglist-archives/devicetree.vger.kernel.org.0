Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67BBF2EC009
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 16:02:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726700AbhAFPB7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 10:01:59 -0500
Received: from new2-smtp.messagingengine.com ([66.111.4.224]:36225 "EHLO
        new2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726680AbhAFPB7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jan 2021 10:01:59 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id 63103580598;
        Wed,  6 Jan 2021 10:01:13 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Wed, 06 Jan 2021 10:01:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=pq8hbaVaGOc5OfRuGXlFeZiorUD
        Bn36VjDYOTFbKyxs=; b=ShorEpq6Yy/xlS5QvMGkj+VfDauayX3AdBUr1HljprH
        epgaFW4HMvXaU2fu/f4XvWkSl7WdtKSZ4vM6vgzLQGhMhv+jfigzIs78kLH3KZnA
        8GiFsnbb3VoKHbh8vV1B5VKSDGa9Dq9WGAe5hrYOQpjTMNyjRM598D0xRrwtKAYY
        pyc3Byv2GEC/G1is55ynRXo18eQHBrFbtCyODpd+IExfrBd82tffr8lMJPIVSNRE
        LUmpvtYBmRaN4buNBJBlyPY3E7NeBnc2a+XVfoZDmZqIcDO1PQ5YVEeVAtqymKXD
        DkvX8hITuI6W7EoN9i962AkZNhE2Ghp6zeU2SJJyMRA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=pq8hba
        VaGOc5OfRuGXlFeZiorUDBn36VjDYOTFbKyxs=; b=G2+/xdgGTg+7Sb7rGZlocO
        WELj2rOd0jxhZESLpr2idKjVFSpNX+VDdTSrcge64TtopX1VwY4dbEXhg3PoU1BD
        6VUNVYZ6sSe1OC7eye6YnPU/GFzOqKcrBpmkYoTsQSHby3t/9e6z6h8KDa2illXt
        fxGG5KYR/Ubt/XKs4yjJdU4/mtopFR/0iNKXrcT4imw8eL3DpOh+4H4GtVbE5JSp
        djl4fPO7c01hpjfoNI9lpzUkCKTtQ0WgAZ21mb4xuGFhc9DINe/PjYVGLDo66nUO
        QLjt5jIvY7ASaUeKOS1VvTwqBI15dGNEdpxK+YmBOd7hIyAdQJqPrFzfLAPmRNPg
        ==
X-ME-Sender: <xms:ttD1X6DuimkHB60BlhDYf2Kx883cy5xRN-1AAf-yBoF9WgPa_ZOn_g>
    <xme:ttD1X0h2AcYf0LyeV6my4J48yRpLTVvT3-bvHAJO25R6T9MDjrniW-rVdLMItihow
    wZ1upqMtkoyi1ipZls>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrvdefledgjeduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
    gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:ttD1X9lkpBBbiHitDcxmiFduqUaKPEon7-5KIsw_nkro4S_XFnPDJw>
    <xmx:ttD1X4xSiTOqPMceL4g2WaOdhoTu1fw1MebvYOP-ddFQ2r9S_AJKtg>
    <xmx:ttD1X_Sx9Q42PxnPp-eI8qgLlWhuKJsV8P2KWAN27artatgz0DLSpw>
    <xmx:udD1X6E1isxixEyjuMJrjLeRlHORYUcCpiZS2qLNX6btlbvyJ329ig>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 999F0240066;
        Wed,  6 Jan 2021 10:01:10 -0500 (EST)
Date:   Wed, 6 Jan 2021 16:01:08 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Eric Anholt <eric@anholt.net>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: bcm2835-vec: Add power-domains property
Message-ID: <20210106150108.cjb35gbbystmgnhe@gilmour>
References: <1608751473-12343-1-git-send-email-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="dezckgshvmtg3jl4"
Content-Disposition: inline
In-Reply-To: <1608751473-12343-1-git-send-email-stefan.wahren@i2se.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--dezckgshvmtg3jl4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 23, 2020 at 08:24:33PM +0100, Stefan Wahren wrote:
> Adding the missing property power-domains to the bcm2835-vec schema to fix
> the following dtbs_check issue:
>=20
> vec@7e806000: 'power-domains' does not match any of the regexes: ...
>=20
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--dezckgshvmtg3jl4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX/XQtAAKCRDj7w1vZxhR
xYwJAQCFCpfWlhu2SNIDx7JiCMtTUmYbKRmrMFZyFMWDRnbUnAEA/L1wi9hHHfaU
2PEhQ+98gvY1IRnS+Qe0CplsaAWh2AY=
=iFbb
-----END PGP SIGNATURE-----

--dezckgshvmtg3jl4--
