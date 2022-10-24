Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D44660A1E8
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 13:36:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230451AbiJXLgE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 07:36:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230458AbiJXLf2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 07:35:28 -0400
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03525B1DB
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 04:34:52 -0700 (PDT)
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id 7065640009;
        Mon, 24 Oct 2022 11:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1666611261;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=l50acSaTRq2lfq5s7vFuvlRNNdSOT8XKkXCz2mNT1H4=;
        b=IVma01dc9PKBQhEbgN+1NOnc8F7NihDYsvBUBJvDJXos3DvVqmuv4cmVuiBC0NTOHgmIQa
        uxxpZZYfsOpM6Ubmm3m53lnKgDpt1YcfSTWVZTGQCHi4Ht6tZLurMOF/mY3Azd7uIGevk5
        LgM1B5yNQWfLqQcnYZfwbS52JjhEKKAKBIFQmgOntHTJTKoF/pLWFDURxMdKJmyvLr6PHa
        2ecT534zQowtUGVST+XewUS7QpHPgpDC60x9XQFnohoMNm1AxSFUvh2Db8uyO1ZCe1nMAi
        v8fntiLMNapKCX0gLlPsLnkHuykuNS7kLcjJTfg0NzbHqSo3P3LCPdaQht9Hrg==
Date:   Mon, 24 Oct 2022 13:34:20 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Matt Ranostay <mranostay@ti.com>
Cc:     <lee@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: mfd: ti,am3359-tscadc: change clock-names
 property to enum
Message-ID: <20221024133420.72c2d8ed@xps-13>
In-Reply-To: <20221024100706.386286-1-mranostay@ti.com>
References: <20221024100706.386286-1-mranostay@ti.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Matt,

mranostay@ti.com wrote on Mon, 24 Oct 2022 03:07:06 -0700:

> Several J7 platforms use adc_tsc_fck instead of fck for clock naming. To
> avoid warnings from dt-schema on invalid clock naming; create an enum with
> both fck, and adc_tsc_fck options.

Looks like I've missed this definition when introducing the bindings.
But in practice this property looks very k3 specific and is not used
anywhere else so would it be worth considering renaming the properties
in the DT instead? There won't be any backward compatibility issue
apparently.

> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---
>  Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml =
b/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
> index 34bf6a01436f..fbb44531ed88 100644
> --- a/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
> +++ b/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
> @@ -28,7 +28,9 @@ properties:
>      maxItems: 1
> =20
>    clock-names:
> -    const: fck
> +    enum:
> +      - fck
> +      - adc_tsc_fck
> =20
>    dmas:
>      items:


Thanks,
Miqu=C3=A8l
