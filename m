Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 459C374DBE9
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 19:08:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231330AbjGJRIp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 13:08:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbjGJRIo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 13:08:44 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 096F1D7
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 10:08:43 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9124361121
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 17:08:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1935AC433C7;
        Mon, 10 Jul 2023 17:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689008923;
        bh=3Z4TPRsy8cNNAv+TW7IInp0X7LnEVRi5Jc25+9CNTJg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=f9YvNiIYh23Pv/Hxh1rF/aneANgmBIby+UDNydORAmxfWpr+m9lLf82bqBDrKzKrE
         Cu2jOzwQUxHWIPOOpGxsWDg0bCtRMNq5L5cE2OtLtKhpCpcGqKq/V651+jkqyXnebd
         bGiinvXoOxIWezwcPzgj0Uha0zqKuoZU3ZT7C8quTWCm25F2pDf0v/RBNP0TkN+1zN
         zvhhhKnW5A6q4JKNiwOq6NEz5Su6dZy5bMpauIwrMHsaisMAjNp6PQGyo0B9IptNbX
         aqXANR+6TwlWXYiy6N0exkU9uxnMkezAFJn+3JdL823L86kCgUp0P24Yp7RR2M3Zfm
         9mdCx7DOHT//A==
Date:   Mon, 10 Jul 2023 18:08:39 +0100
From:   Conor Dooley <conor@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] dt-bindings: arm: bcm: add BCM53573 SoCs family binding
Message-ID: <20230710-mahogany-unequal-91830352ffc5@spud>
References: <20230707115302.3491-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="Fh2KFgUN8vnG0j99"
Content-Disposition: inline
In-Reply-To: <20230707115302.3491-1-zajec5@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--Fh2KFgUN8vnG0j99
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 07, 2023 at 01:53:02PM +0200, Rafa=C5=82 Mi=C5=82ecki wrote:
> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>=20
> BCM53573 is a family derived from Northstar with some important
> differences:
> 1. Cortex-A9 replaced by Cortex-A7
> 2. XHCI controller dropped
> 3. Two Ethernet interfaces removed
> 4. Two 802.11ac cores embedded
>=20
> Linux already contains DTS files for some on those devices so add a
> proper binding for it.
>=20
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> ---
>  .../bindings/arm/bcm/brcm,bcm53573.yaml       | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm535=
73.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml=
 b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml
> new file mode 100644
> index 000000000000..6e502d718518
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml
> @@ -0,0 +1,39 @@
> +# SPDX-License-Identifier: GPL-2.0

How come this is not dual licensed?

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/bcm/brcm,bcm53573.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom BCM53573 SoCs family

Title seems a little odd given the description.
"Broadcom Northstar derived Wi-Fi SoCs"?

Otherwise,
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--Fh2KFgUN8vnG0j99
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZKw7FwAKCRB4tDGHoIJi
0iNkAQCxoV2bPjloA9kSJpj91NM4g4mkYYuNW8qp0iiOvTuWQQEAwDdnb2/oUT3+
w19emIjbn6Dgi8Msa6PU7LyPXNfVswU=
=zyl8
-----END PGP SIGNATURE-----

--Fh2KFgUN8vnG0j99--
