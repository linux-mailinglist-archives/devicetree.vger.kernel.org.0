Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 396EA799D85
	for <lists+devicetree@lfdr.de>; Sun, 10 Sep 2023 11:39:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346568AbjIJJjr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Sep 2023 05:39:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239000AbjIJJjr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Sep 2023 05:39:47 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BD95CC9
        for <devicetree@vger.kernel.org>; Sun, 10 Sep 2023 02:39:43 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83C6CC433C8;
        Sun, 10 Sep 2023 09:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1694338783;
        bh=ysgPsq9QspCHPdVZ1NaI1wqrQYbL59Pa0hwTYZh34Nk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=T3i5HiRGNxsKaTMRC+nDxaeScpBzQq2QvqVKltUakavvPuMPRD8hp82/gdKep768f
         S7omkx2VlYsBPhWdmbCgIRVEwPfsQkZxCEcBOYYJbhfkx3anVlHgXSDgy/upQY23F2
         f0SbrOOc7v/H9zLOHoxM3sg88rhmJHbV/658hNtsxI30jJtoDyRHw7Jr4ha6Ksh7Ud
         y5OJl+X/RFb9pnHqDkoS/Z7Mx1BaAf/Dg0JV6cjP4kPkgh/3Vrz4hkQ1evME/SPWfC
         KxIu+9XFxu7tWBgEhzvKiNQoq4CaQ04SAnY4kgixGGBkFZDm8s4Mjb0bYhxBMFXUm5
         NuvAaUogKpa/A==
Date:   Sun, 10 Sep 2023 10:39:38 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     shawnguo@kernel.org, wei.fang@nxp.com, shenwei.wang@nxp.com,
        xiaoning.wang@nxp.com, kuba@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/2] dt-bindings: net: fec: Add imx8dxl description
Message-ID: <20230910-isotope-uncured-53d69b025137@spud>
References: <20230909123107.1048998-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="i7DpLp73U/PzOMoT"
Content-Disposition: inline
In-Reply-To: <20230909123107.1048998-1-festevam@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--i7DpLp73U/PzOMoT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 09, 2023 at 09:31:06AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> The imx8dl FEC has the same programming model as the one on the imx8qxp.
>=20
> Add the imx8dl compatible string.
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/net/fsl,fec.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/net/fsl,fec.yaml b/Documen=
tation/devicetree/bindings/net/fsl,fec.yaml
> index b494e009326e..8948a11c994e 100644
> --- a/Documentation/devicetree/bindings/net/fsl,fec.yaml
> +++ b/Documentation/devicetree/bindings/net/fsl,fec.yaml
> @@ -59,6 +59,7 @@ properties:
>            - const: fsl,imx6sx-fec
>        - items:
>            - enum:
> +              - fsl,imx8dxl-fec
>                - fsl,imx8qxp-fec
>            - const: fsl,imx8qm-fec
>            - const: fsl,imx6sx-fec
> --=20
> 2.34.1
>=20

--i7DpLp73U/PzOMoT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZP2O2gAKCRB4tDGHoIJi
0jpyAP0dvclFyo0iMw+7wMHdalTWBEOGqHTHl9OEZMugJPfSGgD/UmJBuWlsafdS
Tx9lrExixAw10OvS1Ygi/Wl7VGduQQM=
=dscV
-----END PGP SIGNATURE-----

--i7DpLp73U/PzOMoT--
