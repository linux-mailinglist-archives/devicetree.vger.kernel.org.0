Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA4DC70FA02
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 17:24:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230316AbjEXPX6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 11:23:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234198AbjEXPXb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 11:23:31 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9FBB122
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 08:23:30 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 504FB63E4E
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 15:23:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A57CC4339B;
        Wed, 24 May 2023 15:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684941809;
        bh=2p/132mDUba6j9e8CrkBA1UOPyiVQ00Ct1fVGbuNZ3A=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=BMD0an8AkWZ/gIBiqnqkW7+8XbHn5qawWrUmodpKDICzAA+y/wpTz/YrUjgQzw7Mf
         xXlbwFrT5alKXgxRB0P/srXecNPxJLdwq9hNrb2FY6V1SL8IelyIcY6jIXXI7PI3G8
         NmKJHJCI9SfiOdYXwbuur3fkVxZxIl3Tut3FSadoIXT3V50spkrud065vf197jD0gn
         htEYu9QMcxwbQZi0Mw/MJzZzN/YarJI2/JOFDt0zBSqwVQS5peLSdVBYEex+6KGPGa
         MjfpG7goywKTzAZr5DgSaayB4CrrI8+SSpi7hoNsVGPQtpLPNRmVVXMW7A/W4Vzys9
         N3hFo+7pTCR6w==
Date:   Wed, 24 May 2023 16:23:24 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Stefan Wahren <stefan.wahren@chargebyte.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: fsl: Fix syntax error
Message-ID: <20230524-viselike-absolve-43c0df26f2d8@spud>
References: <20230516085713.109309-1-marex@denx.de>
 <20230516-valiant-reach-910a7929a912@spud>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="y6nu4KonEkrKys/w"
Content-Disposition: inline
In-Reply-To: <20230516-valiant-reach-910a7929a912@spud>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--y6nu4KonEkrKys/w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Shawn,

On Tue, May 16, 2023 at 06:25:52PM +0100, Conor Dooley wrote:
> On Tue, May 16, 2023 at 10:57:13AM +0200, Marek Vasut wrote:
> > Fix the following error by replacing tab indent with spaces.
> > "
> > Documentation/devicetree/bindings/arm/fsl.yaml:930:46: [error] syntax e=
rror: found character '\t' that cannot start any token (syntax)
> > "
> >=20
> > Fixes: d2bf7abfd235 ("dt-bindings: arm: fsl: Add Emtop SoM & Baseboard")
> > Signed-off-by: Marek Vasut <marex@denx.de>
>=20
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Could you pick this up please to unbreak dt_binding_check in next?

Thanks,
Conor.

--y6nu4KonEkrKys/w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZG4r7AAKCRB4tDGHoIJi
0iQPAQDybe2++gfY/kFlP+Q4m7L8xbZhmWGYfL/FwPcvlAIXZgD+IXxQs1ykxBc+
uCAhsRLc0slYHFks3ZyXaBt5mQGsSwg=
=hjUv
-----END PGP SIGNATURE-----

--y6nu4KonEkrKys/w--
