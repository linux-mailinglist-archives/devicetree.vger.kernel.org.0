Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12E9F732BEE
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 11:37:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234151AbjFPJhN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 05:37:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232489AbjFPJhM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 05:37:12 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B611172A
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 02:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1686908230; x=1718444230;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=HQvWz81Ld93c01HSutLc5bamb4ebTB0r8Bnb201rjcs=;
  b=YfbvdeACB8K5AgHSYyZSDTX8LFgSBHtETk5h3nBCgBF8IMW84gdvLzIF
   lOGfEPrh9d4O/Qc28A+ptR0jX5x+T18rCh1yfM99dPgAHJ6HLAz11yU9g
   Vy8lNkLTSQNWVPNNJ0vYJDMGEPVFHT39x12DbEXJ1Gd7lJ+92wQQ//lxN
   0vdGwOJy0go5Eg06RAXOGel1p8iiDhscwM3jfvuQkI0sBhE/nFjRj1K/N
   XqcysUewoJs8iT/IETVLwGP7UN9pmcm2eXE6x3IxVg5yBjHAP3oEc6Rce
   CwW+oigqE89Gjezg1IIOhvCCUfeX2ylbFAywbVPO40seB0F6aYQKT14AY
   A==;
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; 
   d="asc'?scan'208";a="230503115"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 16 Jun 2023 02:37:09 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 16 Jun 2023 02:37:08 -0700
Received: from wendy (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Fri, 16 Jun 2023 02:37:06 -0700
Date:   Fri, 16 Jun 2023 10:36:40 +0100
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Binbin Zhou <zhoubinbin@loongson.cn>
CC:     Binbin Zhou <zhoubb.aaron@gmail.com>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>, Huacai Chen <chenhuacai@kernel.org>,
        <loongson-kernel@lists.loongnix.cn>,
        Xuerui Wang <kernel@xen0n.name>, <loongarch@lists.linux.dev>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
Subject: Re: [PATCH 2/6] dt-bindings: loongarch: Add Loongson SoC boards
 compatibles
Message-ID: <20230616-endocrine-container-d2625622a56e@wendy>
References: <cover.1686882123.git.zhoubinbin@loongson.cn>
 <3b2ba830d81f85130e89316dc0c4d478482cd79d.1686882123.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="gxUJ7EXtOGyJtlEQ"
Content-Disposition: inline
In-Reply-To: <3b2ba830d81f85130e89316dc0c4d478482cd79d.1686882123.git.zhoubinbin@loongson.cn>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--gxUJ7EXtOGyJtlEQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 16, 2023 at 02:10:39PM +0800, Binbin Zhou wrote:
> Add Loongson SoC boards binding with DT schema format using json-schema
>=20
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  .../devicetree/bindings/loongarch/boards.yaml | 31 +++++++++++++++++++
>  1 file changed, 31 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/loongarch/boards.ya=
ml
>=20
> diff --git a/Documentation/devicetree/bindings/loongarch/boards.yaml b/Do=
cumentation/devicetree/bindings/loongarch/boards.yaml
> new file mode 100644
> index 000000000000..3ef87b732668
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/loongarch/boards.yaml
> @@ -0,0 +1,31 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/loongarch/boards.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Loongson SoC-based boards
> +
> +maintainers:
> +  - Binbin Zhou <zhoubinbin@loongson.cn>
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: Loongson-2K0500 processor based boards
> +        items:
> +          - const: loongson,ls2k0500
> +
> +      - description: Loongson-2K1000 processor based boards
> +        items:
> +          - const: loongson,ls2k1000
> +
> +      - description: Loongson-2K2000 processor based boards
> +        items:
> +          - const: loongson,ls2k2000

=46rom what I do know of loongarch stuff, these are all compatibles
for SoCs, not boards. The usual model would be to do something like
items:
  - const: loongsoon,ls2k1000-dev-kit
  - const: loongsoon,ls2k1000

Where you have a compatible for the SoC and one for the board.

Cheers,
Conor.

--gxUJ7EXtOGyJtlEQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZIwtKAAKCRB4tDGHoIJi
0ghpAQCaA0pckhxQPaKLBZ9TXJCNQUIUIbBNNCrD8NHwpPe+EAD/QtT5jczbOJrS
keY6X3oqCjvD5sAL73q2TPM55lt8Lwo=
=8w59
-----END PGP SIGNATURE-----

--gxUJ7EXtOGyJtlEQ--
