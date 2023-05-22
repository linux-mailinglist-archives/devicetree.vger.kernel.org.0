Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 981B370BCF0
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 14:08:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233155AbjEVMID (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 08:08:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233141AbjEVMIC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 08:08:02 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A14BCA
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 05:07:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1684757278; x=1716293278;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=cds4ledsHAK2/w9AwuoI+8UzupeRMd8dRiUzVMetZDs=;
  b=OfOoczHZ8/QgzBV3g0MWtvORb3E5RDekUEtxK6M1FPmaWD1bIg2v+WM4
   Rr7U8J7PigUWFFc4We3CNIj7Vht8Uj8yfGcQsjhcgvm+azZ952JCuRokZ
   zJFsAyWwKsffKh7bcWnjfBoCUilgv0QlXUhm0ctKef0dkbXtY6Ve6ILPN
   LbjzSXng2cb7GWIiKpB2i1VAOD8GZgfiL5t5S7fqM2KGfuYhApLRooOLH
   iepg3dYW5lgfFcXI7xQGH8nibzEISlbGe+qAFTJpM3KoJ3O9P7v9BiNoK
   5u1bi59KwfG2/FsRKetBAAEt/Fa0OQlQxi6BekuZlxtd0dX5RJZdu0vJo
   Q==;
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; 
   d="asc'?scan'208";a="226388335"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 22 May 2023 05:07:58 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 22 May 2023 05:07:41 -0700
Received: from wendy (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Mon, 22 May 2023 05:07:39 -0700
Date:   Mon, 22 May 2023 13:07:17 +0100
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Fabio Estevam <festevam@denx.de>
CC:     Conor Dooley <conor@kernel.org>,
        Fabio Estevam <festevam@gmail.com>, <shawnguo@kernel.org>,
        <marex@denx.de>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <conor+dt@kernel.org>
Subject: Re: [PATCH v4 2/4] dt-bindings: soc: Add i.MX6SX General Purpose
 Register
Message-ID: <20230522-fraying-swear-3438ac24a2b7@wendy>
References: <20230519125236.352050-1-festevam@gmail.com>
 <20230519125236.352050-2-festevam@gmail.com>
 <20230519-floral-diagram-894858b940c1@spud>
 <e5ec645a717b13cf9b0e11aa59ea5a81@denx.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="GasPvtGPCBk96Uou"
Content-Disposition: inline
In-Reply-To: <e5ec645a717b13cf9b0e11aa59ea5a81@denx.de>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--GasPvtGPCBk96Uou
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 22, 2023 at 08:49:35AM -0300, Fabio Estevam wrote:
> On 19/05/2023 16:23, Conor Dooley wrote:
>=20
> > > +  bridge@18:
> > > +    type: object
> > > +    $ref: /schemas/display/bridge/fsl,ldb.yaml#
> > > +    unevaluatedProperties: false
> >=20
> > How come you need to upgrade the additionaProperties: false, and the
> > "plain old" $ref is not sufficient?
>=20
> I am passing unevaluatedProperties: false, not additionaProperties: false
> here,
> so I am not sure I understood your comment.

I was referring to the additionalProperties: false in the schema in the
$ref:, but I had myself confused and doing s/unevaluated/additional/
here would cause complaints about the properties being undefined.

> So I will keep it like this.

Yeah, sorry for the confusion!

--GasPvtGPCBk96Uou
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZGta9QAKCRB4tDGHoIJi
0o7YAPoDXWfR1ZZq3j9UJ0Z5ph06erA56cYtJbLKBz8/NiTEXAEAo4aDCSQUjGb1
CH4K2FweiTBnuZU1UZvWOFKlnY/VHg8=
=nTT2
-----END PGP SIGNATURE-----

--GasPvtGPCBk96Uou--
