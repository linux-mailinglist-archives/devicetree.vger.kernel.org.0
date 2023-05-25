Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 350F7710D2B
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 15:24:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230464AbjEYNYM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 09:24:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231665AbjEYNYL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 09:24:11 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52543E7
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 06:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1685021051; x=1716557051;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=9uAlFvSjTraKJ9M/pptXefokbD1pb8d6Bu9bGDb2JME=;
  b=vs6mHS2BKzXTy+idbpFtXCPPwIXT+8rdrY+MmSxsA2oKm+MIl8elztJB
   5xm8BipyIZjHmtMSd3T4nL+K1eXfaPNecWqhXBxaLzdrk6EegI9k3P7UQ
   TW334F6auol8H0gNBWd3hj9oft9tTpirV7r5UfgpqH6YnUBvYcIgbJK/a
   exuLvJjj6twZNR8fDIjROxmh7PPBYZLc4HHZO3meGvk7HFPpZCQHnwB+U
   chOxqNxZfIFQmh8PlecEDDzmWFCf8SSmnVb4IPhqeNW1X1/inNpyqr6Pk
   TVBYMC4Dmw9NdfoP7Cm3XbAJIcNluLpzgAFniG1WlBeVarG7APTCbqjdh
   w==;
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; 
   d="asc'?scan'208";a="215457341"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 25 May 2023 06:24:10 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 25 May 2023 06:24:09 -0700
Received: from wendy (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Thu, 25 May 2023 06:24:08 -0700
Date:   Thu, 25 May 2023 14:23:46 +0100
From:   Conor Dooley <conor.dooley@microchip.com>
To:     William Zhang <william.zhang@broadcom.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <f.fainelli@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: dt_binding_check report false alarm?
Message-ID: <20230525-wrench-lushness-f9a1ad022798@wendy>
References: <20230525050241.3700-1-william.zhang@broadcom.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="Ga9X+RSZGFBWt7td"
Content-Disposition: inline
In-Reply-To: <20230525050241.3700-1-william.zhang@broadcom.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--Ga9X+RSZGFBWt7td
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey William,

On Wed, May 24, 2023 at 10:02:41PM -0700, William Zhang wrote:
> Hi,
>=20
> It seems dt_binding_check reports a false error when run on this
> modified yaml. I picked this simple file just to demostrate this issue.
> Basically I made the interrupts and interrupt-names as optional
> properties. But when there are two interrupts present, then
> interrupt-names are required.  However in the example, I don't define
> interrupts and interrupt-name at all, the dt binding check reports error
> that interrupt-names are required:

Rob and Krzysztof would know more than me, but since they're not
around...

> diff --git a/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml b/=
Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
> index 563a31605d2b..c37a3a64a78c 100644
> --- a/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
> +++ b/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
> @@ -32,11 +32,18 @@ properties:
>    clock-names:
>      const: ipg
> =20
> +allOf:
> +  - if:
> +      properties:
> +        interrupts:
> +          minItems: 2

=2E..I don't think you can actually do this and "minItems: 2" will always
evaluate to true because it is an assignment. Don't hold me to that
though! The standard pattern here is to do:
allOf:
  - if:
      properties:
        compatible:
          contains:
            const: foo
    then:
      required:
        - interrupt-names

Cheers,
Conor.

> +    then:
> +      required:
> +        - interrupt-names
> +
>  required:
>    - compatible
>    - reg
> -  - interrupts
> -  - interrupt-names
>    - clocks
>    - clock-names
> =20
> @@ -49,6 +56,4 @@ examples:
>          reg =3D <0x53fac000 0x4000>;
>          clocks =3D <&clks 111>;
>          clock-names =3D "ipg";
> -        interrupts =3D <49>, <50>;
> -        interrupt-names =3D "scm", "smn";
>      };
> --=20
> 2.34.1
>=20



--Ga9X+RSZGFBWt7td
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZG9hYQAKCRB4tDGHoIJi
0phhAP9l457d33t6o2c7o9yk6ZpEY4RPnruQ/B3QocAB66AdgAD7BHnHxedwMmaN
VDdil5A9Aj9/W1I05zX820VhRMeZPwc=
=RQCP
-----END PGP SIGNATURE-----

--Ga9X+RSZGFBWt7td--
