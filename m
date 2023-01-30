Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05D44680D94
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 13:26:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234199AbjA3M0R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 07:26:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229965AbjA3M0R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 07:26:17 -0500
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C657B23658
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 04:26:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1675081573; x=1706617573;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=lKJrHep2C/qtcQm0TVHkNmoEgCsza5aoCQOndXPOmJo=;
  b=SLlUGQ+BvT2hye8cxFJuKylFannxy8VYnzShrXs5IifVlqprXZC2HHQt
   ZdzGIs4EaA3xhk0bGqe2S3pBoN9BqTVWVt26dWghFq01yUSa4sddehTiv
   3XVHJY5A2KC8hd/GMQIwEnWds0cGti61+D656CHf+AfBd4nGoL3c2mbJp
   H87zXHKM73mGBkPu2BeYOwsZ8TqmvPQzcHBuFz1ov1z/JjPxbW4DWeh1/
   rf5sSEP9Gw1Hishl8AN77HQOT3N6+c+Lmvpb3oPj3YBC6ITrwC61Swbe3
   VLbNJ0jMZ0+SlcGCbp9ijdt0YuxEKp7fS6ARHgwQ2wPes8upoN3oU0B0L
   g==;
X-IronPort-AV: E=Sophos;i="5.97,257,1669100400"; 
   d="asc'?scan'208";a="197976787"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 30 Jan 2023 05:26:12 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 05:26:05 -0700
Received: from wendy (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16 via Frontend
 Transport; Mon, 30 Jan 2023 05:26:03 -0700
Date:   Mon, 30 Jan 2023 12:25:39 +0000
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Andrew Jones <ajones@ventanamicro.com>
CC:     <linux-riscv@lists.infradead.org>, <kvm-riscv@lists.infradead.org>,
        <devicetree@vger.kernel.org>, 'Heiko Stuebner ' <heiko@sntech.de>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Rob Herring ' <robh@kernel.org>,
        'Jisheng Zhang ' <jszhang@kernel.org>
Subject: Re: [PATCH v3 2/6] dt-bindings: riscv: Document cboz-block-size
Message-ID: <Y9e3Q5M8J8pTWZja@wendy>
References: <20230130120128.1349464-1-ajones@ventanamicro.com>
 <20230130120128.1349464-3-ajones@ventanamicro.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="0UZUfhBsR2lxiI1e"
Content-Disposition: inline
In-Reply-To: <20230130120128.1349464-3-ajones@ventanamicro.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--0UZUfhBsR2lxiI1e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey!

On Mon, Jan 30, 2023 at 01:01:24PM +0100, Andrew Jones wrote:
> The Zicboz operation (cbo.zero) operates on a block-size defined
> for the cpu-core. While we already have the riscv,cbom-block-size
> property, it only provides the block size for Zicbom operations.
> Even though it's likely Zicboz and Zicbom will use the same size,
> that's not specified.

If you end up respinning for some other reason, perhaps:
s/that's not specified/that's not required by the specification/ or
some other wording to that effect?
I'm assuming by "specified" you're referring to the cmobase spec, but
that wording I don't think is particular clear.

> Create another property specifically for
> Zicboz.
>=20
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Document=
ation/devicetree/bindings/riscv/cpus.yaml
> index c6720764e765..f4ee70f8e1cf 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -72,6 +72,11 @@ properties:
>      description:
>        The blocksize in bytes for the Zicbom cache operations.
> =20
> +  riscv,cboz-block-size:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      The blocksize in bytes for the Zicboz cache operations.
> +

I was happy with either keeping them apart entirely or a having this one
default to the value of cbom-block-size, so:
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.


--0UZUfhBsR2lxiI1e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCY9e3QwAKCRB4tDGHoIJi
0rWcAP9r2ZdFD/HLOUeyA8E7JMn9OFNNG/h0sTQyXW6HVG3wswEAps/+KUnEiepK
zpeOl4Wl4Nwdc/JvnLdWEHU/8vpYAAc=
=66lk
-----END PGP SIGNATURE-----

--0UZUfhBsR2lxiI1e--
