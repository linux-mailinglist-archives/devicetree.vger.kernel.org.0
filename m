Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49C8777E40B
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 16:45:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343784AbjHPOoh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 10:44:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343818AbjHPOoQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 10:44:16 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8540B273C
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 07:44:07 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 187CD669F5
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 14:44:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 276D4C433C8;
        Wed, 16 Aug 2023 14:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692197046;
        bh=tcqmYa54811A76E8Jq5MKZDy0RpsZttAXtcS4lKyfWY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=JcVHmcUEp0f4lyO20iOay7vaTHF26sT8qMhEsl3NoL8lG8ruovSfzt2sj4rWuGysA
         rKwSHo0Gkld8gqU6AlDRPWnFqWuRxtN3d3sbxP2Fx3/N92FutoIqGKeVwZfAJZPEOI
         VaoAp1yQQGwCocjBDKlHLMnd9SUCKlL887jA0fGyww+EUkWQ/buhuImmG/iSpIsdOS
         y0jE1jaDr7vnnMu+hAfskcpcCmeetJRw5o3Jb4nMYIKP5/G/Y00JBI3u/6P5UlbOim
         Xr80Dm+86agZZNOMeT/2xdrt+t4Oaer6W5lJQdN1zX2LYszrtfg0ATRxOzW+9+75Cr
         EIvoOGg8Y4urw==
Date:   Wed, 16 Aug 2023 15:44:02 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Sarah Walker <sarah.walker@imgtec.com>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        Frank Binns <frank.binns@imgtec.com>
Subject: Re: [PATCH v5 02/17] dt-bindings: gpu: Add Imagination Technologies
 PowerVR GPU
Message-ID: <20230816-paving-undergo-7ef893c09f5c@spud>
References: <20230816082725.164880-1-sarah.walker@imgtec.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="pjkcYgl3S1v+XEbh"
Content-Disposition: inline
In-Reply-To: <20230816082725.164880-1-sarah.walker@imgtec.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--pjkcYgl3S1v+XEbh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 16, 2023 at 09:27:25AM +0100, Sarah Walker wrote:
> Add the device tree binding documentation for the Series AXE GPU used in
> TI AM62 SoCs.
>=20
> Co-developed-by: Frank Binns <frank.binns@imgtec.com>
> Signed-off-by: Frank Binns <frank.binns@imgtec.com>
> Signed-off-by: Sarah Walker <sarah.walker@imgtec.com>

This seems okay to me,
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
> Changes since v4:
> - Add clocks constraint for ti,am62-gpu
> - Remove excess address and size cells in example
> - Remove interrupt name and add maxItems
> - Make property order consistent between dts and bindings doc
> - Update example to match dts
>=20
> Changes since v3:
> - Remove oneOf in compatible property
> - Remove power-supply (not used on AM62)
>=20
> Changes since v2:
> - Add commit message description
> - Remove mt8173-gpu support (not currently supported)
> - Drop quotes from $id and $schema
> - Remove reg: minItems
> - Drop _clk suffixes from clock-names
> - Remove operating-points-v2 property and cooling-cells (not currently
>   used)
> - Add additionalProperties: false
> - Remove stray blank line at the end of file
>=20
>  .../devicetree/bindings/gpu/img,powervr.yaml  | 75 +++++++++++++++++++
>  MAINTAINERS                                   |  7 ++
>  2 files changed, 82 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpu/img,powervr.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/gpu/img,powervr.yaml b/Doc=
umentation/devicetree/bindings/gpu/img,powervr.yaml
> new file mode 100644
> index 000000000000..40ade5ceef6e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpu/img,powervr.yaml
> @@ -0,0 +1,75 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (c) 2023 Imagination Technologies Ltd.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpu/img,powervr.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Imagination Technologies PowerVR GPU
> +
> +maintainers:
> +  - Sarah Walker <sarah.walker@imgtec.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - ti,am62-gpu
> +      - const: img,powervr-seriesaxe
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 3
> +
> +  clock-names:
> +    items:
> +      - const: core
> +      - const: mem
> +      - const: sys
> +    minItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - interrupts
> +
> +additionalProperties: false
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: ti,am62-gpu
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 1
> +        clock-names:
> +          const: core
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/soc/ti,sci_pm_domain.h>
> +
> +    gpu: gpu@fd00000 {
> +        compatible =3D "ti,am62-gpu", "img,powervr-seriesaxe";
> +        reg =3D <0x0fd00000 0x20000>;
> +        clocks =3D <&k3_clks 187 0>;
> +        clock-names =3D "core";
> +        interrupts =3D <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
> +        power-domains =3D <&k3_pds 187 TI_SCI_PD_EXCLUSIVE>;
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index cd882b87a3c6..f84390bb6cfe 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -10138,6 +10138,13 @@ IMGTEC IR DECODER DRIVER
>  S:	Orphan
>  F:	drivers/media/rc/img-ir/
> =20
> +IMGTEC POWERVR DRM DRIVER
> +M:	Frank Binns <frank.binns@imgtec.com>
> +M:	Sarah Walker <sarah.walker@imgtec.com>
> +M:	Donald Robson <donald.robson@imgtec.com>
> +S:	Supported
> +F:	Documentation/devicetree/bindings/gpu/img,powervr.yaml
> +
>  IMON SOUNDGRAPH USB IR RECEIVER
>  M:	Sean Young <sean@mess.org>
>  L:	linux-media@vger.kernel.org
> --=20
> 2.41.0
>=20

--pjkcYgl3S1v+XEbh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZNzgsgAKCRB4tDGHoIJi
0tqXAP9vggSitauxJL6/hc1qAFFWiIvfFYz+V308Yza5P+EtQwEA29aW3ELHFsTw
qQWo9Tfx1Ylt3KIxi8RBhn1/AZaGYwY=
=/WK0
-----END PGP SIGNATURE-----

--pjkcYgl3S1v+XEbh--
