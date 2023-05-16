Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA5867054F3
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 19:26:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbjEPR0E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 13:26:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231806AbjEPR0C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 13:26:02 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74336AD20
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 10:25:58 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B2B6F63D20
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 17:25:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0549C433D2;
        Tue, 16 May 2023 17:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684257957;
        bh=vUcoZiR6Wd7Qdl3zDbsPNnTPRCbXw5HosVCCxOHOvpc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=l9OyjwwrYVgRp5hmrlhfzrNFco2Dv9NcwisxrwdXKtziKYdXjItRo00AUxfMHbhLa
         owk6JFywAeTjbu6lwX2t47yGH2dJ7JixP/jOYSilLsP39BvigB7frGCcGeD9tr/J0p
         VoNlPuMGAKrZEIKjllAz73v5IvYWt98RaQwEufyy3MkXI/GdxOM83bXzFIHjC2Pu0l
         8I3DmLDPOXAYrEiABkD3I0JPCF3HVa7lPo6RxrXIqbi8Cr+ryE6zh/ghs/6Rmw1e4V
         f67eHgnQv3Btv6zO68GIYrCvNmaDol4ey/QPaLFaByEd9TEIwPETq4pRexmlYhybr8
         K74vjBeVIdCSw==
Date:   Tue, 16 May 2023 18:25:52 +0100
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
Message-ID: <20230516-valiant-reach-910a7929a912@spud>
References: <20230516085713.109309-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="v2XB5x5DrhvSi+HR"
Content-Disposition: inline
In-Reply-To: <20230516085713.109309-1-marex@denx.de>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--v2XB5x5DrhvSi+HR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 16, 2023 at 10:57:13AM +0200, Marek Vasut wrote:
> Fix the following error by replacing tab indent with spaces.
> "
> Documentation/devicetree/bindings/arm/fsl.yaml:930:46: [error] syntax err=
or: found character '\t' that cannot start any token (syntax)
> "
>=20
> Fixes: d2bf7abfd235 ("dt-bindings: arm: fsl: Add Emtop SoM & Baseboard")
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--v2XB5x5DrhvSi+HR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZGO8oAAKCRB4tDGHoIJi
0p9mAQD75buPHFYet0iK+nzjL2ER7I4kwaoeSveJ4vjR81/oHQEA9eZIcxOmFuKF
RXWiiybINMzJqQI07PzPkTPKi3AI1QQ=
=gvEf
-----END PGP SIGNATURE-----

--v2XB5x5DrhvSi+HR--
