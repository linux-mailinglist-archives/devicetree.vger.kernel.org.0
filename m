Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A54F660C66C
	for <lists+devicetree@lfdr.de>; Tue, 25 Oct 2022 10:28:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232187AbiJYI2s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Oct 2022 04:28:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232258AbiJYI2r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Oct 2022 04:28:47 -0400
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48296FB73E
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 01:28:45 -0700 (PDT)
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id CF433240016;
        Tue, 25 Oct 2022 08:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1666686524;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=L0iH33vHqfhlbDqT2+HQxHHvCqCXB/mta+sWzhuV11I=;
        b=GY5OHEdNb0k2CYtkc/MQ86hZp0vdxR0Raf2LXFZX9nqdFMrV5D277V6DK/NbTrQhT1SdL2
        EC+wjuTfMNAsdeE242qk+ULxMMbflgeE7bqVZGBUYAkQq8v5qFKtVxkhcWlFMUeoslJx3Y
        TMg3xC5RP3P2ZD+/5P33iFbYFdJ/9v9iCBGzaznNNRjpEdZGScEV8FIk6w6BCTYjd11jMj
        C8qU1DdGZIOKyus7TDqt+Lew7thshVihZtEM7OI4+/4kiEI/Hjzt6yf3aIyf21LJhNfVcy
        Snzcq4xfic9F5eMsjvSMCyicHVDfKdlE8+twFYRjRNz0SGZ9bNFRes17v8GOww==
Date:   Tue, 25 Oct 2022 10:28:42 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Matt Ranostay <mranostay@ti.com>
Cc:     <lee@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] dt-bindings: mfd: ti,am3359-tscadc: add missing
 power-domains property
Message-ID: <20221025102842.3de6b3c2@xps-13>
In-Reply-To: <20221025080014.403457-1-mranostay@ti.com>
References: <20221025080014.403457-1-mranostay@ti.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Matt,

mranostay@ti.com wrote on Tue, 25 Oct 2022 01:00:14 -0700:

> Add optional power-domains property to avoid the following dt-schema
> failures:
>=20
> tscadc@40200000: 'power-domains' does not match any of the regexes: 'pinc=
trl-[0-9]+'
>=20
> Signed-off-by: Matt Ranostay <mranostay@ti.com>

Looks legitimate.

Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

> ---
>  Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml =
b/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
> index 34bf6a01436f..23a63265be3c 100644
> --- a/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
> +++ b/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
> @@ -52,6 +52,9 @@ properties:
>      type: object
>      description: Magnetic reader
> =20
> +  power-domains:
> +    maxItems: 1
> +
>  required:
>    - compatible
>    - reg


Thanks,
Miqu=C3=A8l
