Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CC12724B1E
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 20:21:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238386AbjFFSVN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 14:21:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238277AbjFFSVI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 14:21:08 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A47F01707
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 11:21:07 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 3812B62EA6
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 18:21:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97451C4339B;
        Tue,  6 Jun 2023 18:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686075666;
        bh=ljqurGBoA0H7WQzAb4F6v9Hp/eKC0Sg99g1tREoBxqo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=DIfRPazOwePfOs8ItJHcVxQd/JaMVUVirQtozSQPh62uj7KLmHQuAGoTIBmAlrcx3
         Q4tm8cXhsn3Lg/13OJrXi8SfIcnfgDnLZqMOdCQ3iPCNzpOMDgjdk88hRTN8Z/OYuU
         +XQZpHcfgvssoVtFQObRWcsfi4zGH+xGM8r2IqpE3aU3HP+DDy1kHK8bQDWtMY56tU
         bmBnFtUl79QXkorGmYshMMbAmLZ+agt/UBwEv/9T9DwKrZsTIUAOInqq08Myf8yD0O
         LkgfiZq7ifSbMr8JOV/pMN0XF6lZLt5et+64o+jOxqq7sq7BjQqra3sQEcutkyZD9Y
         nqGYxztA1u17w==
Date:   Tue, 6 Jun 2023 19:21:02 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Liu Ying <victor.liu@nxp.com>, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] dt-bindings: phy: mixel,mipi-dsi-phy: Remove
 assigned-clock* properties
Message-ID: <20230606-implement-canning-0353ca9afddb@spud>
References: <20230606144447.775942-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="zYuBaMqGZQxpQNI4"
Content-Disposition: inline
In-Reply-To: <20230606144447.775942-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--zYuBaMqGZQxpQNI4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 06, 2023 at 04:44:46PM +0200, Alexander Stein wrote:
> These properties are allowed anyway and some SoC (e.g. imx8mq) configure
> more than just one clock using these properties.

What does "allowed anyway" mean?
And following from that, why not modify the min/maxItems to suit
reality, rather than remove them. Is there enforcement from elsewhere?

> Fixes: f9b0593dd4fc6 ("dt-bindings: phy: Convert mixel,mipi-dsi-phy to js=
on-schema")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> I can't reproduce the mentioned mis-matches in commit f9b0593dd4fc6
> ("dt-bindings: phy: Convert mixel,mipi-dsi-phy to json-schema").

I suspect that meant that the property was in the dt but not in the
binding at the time of the conversion.

Cheers,
Conor.

>=20
> Since commit 62270eeb2b639 ("arm64: dts: imx8mq: Add clock parents for
> mipi dphy") imx8mq.dtsi configures several clocks using assigned-clocks*
> properties.
>=20
>  .../devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml      | 9 ---------
>  1 file changed, 9 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yam=
l b/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml
> index 786cfd71cb7eb..3c28ec50f0979 100644
> --- a/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml
> @@ -32,15 +32,6 @@ properties:
>    clock-names:
>      const: phy_ref
> =20
> -  assigned-clocks:
> -    maxItems: 1
> -
> -  assigned-clock-parents:
> -    maxItems: 1
> -
> -  assigned-clock-rates:
> -    maxItems: 1
> -
>    "#phy-cells":
>      const: 0
> =20
> --=20
> 2.34.1
>=20

--zYuBaMqGZQxpQNI4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZH95DgAKCRB4tDGHoIJi
0rvVAQDERPS8mYHAeyrLw9/psX3Krt144EkLLSbL9ZBnSfTzdAD+MprMmNGN1NUt
KeSL/x1kVbv2OiE9zwyJBdXs6CJeswE=
=fngN
-----END PGP SIGNATURE-----

--zYuBaMqGZQxpQNI4--
