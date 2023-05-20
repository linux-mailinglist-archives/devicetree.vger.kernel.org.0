Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59E5B70A71F
	for <lists+devicetree@lfdr.de>; Sat, 20 May 2023 12:15:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231290AbjETKPR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 May 2023 06:15:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229779AbjETKPP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 May 2023 06:15:15 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 898B0189
        for <devicetree@vger.kernel.org>; Sat, 20 May 2023 03:15:14 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 28FC160F60
        for <devicetree@vger.kernel.org>; Sat, 20 May 2023 10:15:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3128C433EF;
        Sat, 20 May 2023 10:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684577713;
        bh=1UyIWQbHOjjifaKW/wUJ5oCv3edwmlXJyp5rWIZCdoY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=jO1yoL5bi8d5nD77WswNtJkR1D1REN/MPbJLydBQcE3jbNeRezp2sbnsoENET5KfH
         B+VQgnUydvJoFW/KXC8fP1BI12qxiE8T0b+i6iNoCW3+MCA51a9zfLPY3VOkTcmhYb
         U1Ru27TcevIBZY8kamZVK24T/Yw5r1ipOBAYtZo6Q8fnTXgc2tUs+TfhyLrcD3xdpO
         Zz21v1OGG99dv4zGRMBi1HV+cLMFtcuEpa8ZUNrCiksL77gzYubmtf/9P0FwNn4/sZ
         f0S//CzKnINPwFGJo+Jd6SXZPaGqTBXoIdhtRX5rc2oLFc9ubCHcp0m6B5YvB3+XD8
         +ZXWSZq4H+ewg==
Date:   Sat, 20 May 2023 11:15:09 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     shawnguo@kernel.org, marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v4 1/4] dt-bindings: display: bridge: ldb: Adjust imx6sx
 entries
Message-ID: <20230520-iphone-outreach-14f46c57b7cd@spud>
References: <20230519125236.352050-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2hAHGAC7SPIHZrqZ"
Content-Disposition: inline
In-Reply-To: <20230519125236.352050-1-festevam@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--2hAHGAC7SPIHZrqZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 19, 2023 at 09:52:33AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> On the i.MX6SX there is a single entry for 'reg' and 'reg-names', so add
> some logic to reflect that.
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Whoops, didn't see this patch yesterday..

> ---
> Changes since v3:
> - None.
>=20
>  .../bindings/display/bridge/fsl,ldb.yaml      | 28 +++++++++++++++++--
>  1 file changed, 25 insertions(+), 3 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yam=
l b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
> index 07388bf2b90d..cd63f9ef9484 100644
> --- a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
> @@ -28,12 +28,12 @@ properties:
>      const: ldb
> =20
>    reg:
> +    minItems: 1
>      maxItems: 2
> =20
>    reg-names:
> -    items:
> -      - const: ldb
> -      - const: lvds
> +    minItems: 1
> +    maxItems: 2
> =20
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
> @@ -74,6 +74,28 @@ allOf:
>            properties:
>              port@2: false
> =20
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,imx6sx-ldb

Why not const: for the single item?
Trying to avoid churn when you add your next one?

> +    then:
> +      properties:
> +        reg:
> +          maxItems: 1
> +        reg-names:
> +          items:
> +            - const: ldb

Again, can drop the items: for const: for the single item, no?

Thanks,
Conor.

--2hAHGAC7SPIHZrqZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZGidrQAKCRB4tDGHoIJi
0odmAP95ZzVecxynXaUYOB6Og+zWPzH4Te9jVQR2kWPmJUJlCAEAvqI5ikywLztJ
f18x/dT9xWppzV0XCmIJJXEjhqdYjwI=
=NLRi
-----END PGP SIGNATURE-----

--2hAHGAC7SPIHZrqZ--
