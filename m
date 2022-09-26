Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 360D25EB483
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 00:26:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231197AbiIZW0K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 18:26:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229734AbiIZW0J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 18:26:09 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9620F8E9AB
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 15:26:07 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 56363B81598
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 22:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F903C433D6
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 22:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1664231165;
        bh=klJE1A72ytoccdNalFwjQEyU1raaYluEvz2uA7jDiyM=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=C9lUllbZe8EAJXslV4d6LGmvGXUwjcpCgroXy36rnk35P2zr7ptn5d9r8K1aiZJDo
         alrDrNDq/RXqV0lwGFLWGKOzlWCbA1yAgUPORQvikXjkt6tEszpbvybgaI5gTQhL69
         379pRSMSZeh4UUU1GWCH2PDZhSFXEzkm0UDC4YcW53TIWpoBdE1/nki4xyhU9NrPQU
         x31RFEDu0UkRnxURnVCHjgNzn9FwXy1XHyr2HA0EWchc8xDbB3wand7ZBxf2Dvly6A
         aADW53CMuGzEvc4Mqcrl/eR0NG9qyKIHGiwNEJxqjN2+LDfC9Xd03wXuThJ0ObUV29
         v0YjHugM41QcQ==
Received: by mail-vs1-f44.google.com with SMTP id q26so8024177vsr.7
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 15:26:05 -0700 (PDT)
X-Gm-Message-State: ACrzQf3+3s11CXp/h/L8f1g/Wg4zVj3nA1qD3WcRL4glNrgzyOrumXfY
        uRkvedB+DGfj6WUuFL2Lw3luUvs2W0+/CDo6xA==
X-Google-Smtp-Source: AMsMyM4xZtUZ0hzLy/baDwwOnesblmfVIVWpsOnvhMWrHZULUdTtlo+RTvyp/RlqGZorNjNtQ1vcVb5ZpjpH/Jy/ojo=
X-Received: by 2002:a67:c18a:0:b0:398:4c72:cafb with SMTP id
 h10-20020a67c18a000000b003984c72cafbmr8945997vsj.53.1664231163988; Mon, 26
 Sep 2022 15:26:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220926221635.526676-1-marex@denx.de>
In-Reply-To: <20220926221635.526676-1-marex@denx.de>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 26 Sep 2022 17:25:52 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLpezumZF_kdD45yYjMBoLY0BfMTx9AtQj033oTNYxUug@mail.gmail.com>
Message-ID: <CAL_JsqLpezumZF_kdD45yYjMBoLY0BfMTx9AtQj033oTNYxUug@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: memory-controller: st,stm32: Split off MC properties
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Christophe Kerello <christophe.kerello@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 26, 2022 at 5:16 PM Marek Vasut <marex@denx.de> wrote:
>
> Split st,stm32-fmc2-ebi.yaml specific properties into st,stm32-fmc2-ebi-p=
rops.yaml ,
> split memory-controller bus peripheral properties into mc-peripheral-prop=
s.yaml ,
> reference the st,stm32-fmc2-ebi-props.yaml in mc-peripheral-props.yaml an=
d
> reference the mc-peripheral-props.yaml in micrel,ks8851.yaml .
>
> This way, the FMC2 controller properties in Micrel KSZ8851MLL ethernet
> controller node can be properly validated.
>
> Fixes the following warning:
>
> "
> arch/arm/boot/dts/stm32mp153c-dhcor-drc-compact.dtb: ethernet@1,0: Uneval=
uated properties are not allowed ('bank-width', 'st,fmc2-ebi-cs-mux-enable'=
, 'st,fmc2-ebi-cs-transaction-type', 'st,fmc2-ebi-cs-buswidth', 'st,fmc2-eb=
i-cs-address-setup-ns', 'st,fmc2-ebi-cs-address-hold-ns', 'st,fmc2-ebi-cs-b=
us-turnaround-ns', 'st,fmc2-ebi-cs-data-setup-ns', 'st,fmc2-ebi-cs-data-hol=
d-ns', 'st,fmc2-ebi-cs-write-address-setup-ns', 'st,fmc2-ebi-cs-write-addre=
ss-hold-ns', 'st,fmc2-ebi-cs-write-bus-turnaround-ns', 'st,fmc2-ebi-cs-writ=
e-data-setup-ns', 'st,fmc2-ebi-cs-write-data-hold-ns' were unexpected)
> "
>
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Christophe Kerello <christophe.kerello@foss.st.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
>  .../mc-peripheral-props.yaml                  |  36 +++++
>  .../st,stm32-fmc2-ebi-props.yaml              | 144 ++++++++++++++++++
>  .../memory-controllers/st,stm32-fmc2-ebi.yaml | 137 -----------------
>  .../bindings/net/micrel,ks8851.yaml           |   1 +
>  4 files changed, 181 insertions(+), 137 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/=
mc-peripheral-props.yaml
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/=
st,stm32-fmc2-ebi-props.yaml
>
> diff --git a/Documentation/devicetree/bindings/memory-controllers/mc-peri=
pheral-props.yaml b/Documentation/devicetree/bindings/memory-controllers/mc=
-peripheral-props.yaml
> new file mode 100644
> index 0000000000000..442744a9b711d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/memory-controllers/mc-peripheral-=
props.yaml
> @@ -0,0 +1,36 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/memory-controllers/mc-peripheral-prop=
s.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Peripheral-specific properties for a Memory Controller bus.
> +
> +description:
> +  Many MC controllers need to add properties to peripheral devices.

Memory Controller controllers?

> +  They could be common properties like reg or they could be controller
> +  specific like delay in clock or data lines, etc. These properties need
> +  to be defined in the peripheral node because they are per-peripheral
> +  and there can be multiple peripherals attached to a controller. All
> +  those properties are listed here. The controller specific properties
> +  should go in their own separate schema that should be referenced
> +  from here.
> +
> +maintainers:
> +  - Marek Vasut <marex@denx.de>
> +
> +properties:
> +  reg:
> +    description: Bank number, base address and size of the device.
> +
> +  bank-width:
> +    description: Bank width of the device, in bytes.

This needs a type and constraints (enum: [ 1, 2, 4 ]).

Other than that,

Reviewed-by: Rob Herring <robh@kernel.org>

(I'm assuming Krzysztof takes this)
