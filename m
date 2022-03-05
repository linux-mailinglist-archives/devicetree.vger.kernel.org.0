Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A23C4CE746
	for <lists+devicetree@lfdr.de>; Sat,  5 Mar 2022 22:49:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231723AbiCEVuA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Mar 2022 16:50:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229805AbiCEVuA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Mar 2022 16:50:00 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5091E1D0D3
        for <devicetree@vger.kernel.org>; Sat,  5 Mar 2022 13:49:09 -0800 (PST)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 145C93F1AF
        for <devicetree@vger.kernel.org>; Sat,  5 Mar 2022 21:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646516948;
        bh=xIGwC4dMVAbcNM9VbnP/VQuX2kHBkqPx10EnWit2MpM=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=C3WQQ6ZWZJWssoxtQ5iO92qyAkxlBX0zMHFXrG9V2UWmWK5ukzsDQzWaqmZlNHkHx
         2YMMZgab7ZkSMxIxJZ0PxXkJWddDJkeeMB4ohWF31IDuDXgxuebaw5UzIrJJK2ixMp
         3I6KyWP6LcFCw0xbcC3H7kfcPt91MY+MxnGqT63oaAXY406xCbFcDUfoY7X9OLRSZB
         4zxhm1MGMPxMlNQTHEXimgB0vA25a4RdufWF2jLkfOZ9PfKjv14h3iO+/oNLTAZpy/
         oDfGuWKvJEvDSHEsEMpuM6eGuXrEck5Ff2Ouu+7M7YXTZl0wc1VcxxVYb625aLuWkR
         HLehW+TjKlx0Q==
Received: by mail-ej1-f70.google.com with SMTP id go11-20020a1709070d8b00b006cf0d933739so6016864ejc.5
        for <devicetree@vger.kernel.org>; Sat, 05 Mar 2022 13:49:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=xIGwC4dMVAbcNM9VbnP/VQuX2kHBkqPx10EnWit2MpM=;
        b=uIR2BtxM51WEmD4J4qCDYcAf1f9UpL1Td6/QkiOPJDRxSEl1HRjZPQhKH/jPYorxFJ
         DGz9XS4JK4OKovsqRfcA03JshzvYzbHgjuC5x7iVVsnnhydcCzSE0oJNObnUjZNananR
         dH2GuGjxABDL4agBfPxrlBGO2SUXA6j4C+WsbdGxrGd9nNI6LKaK4gaYJuGJDPEyRtjb
         89emODh81q0ikRiQfXuGZXJaaMF4RlyUxmrHPu1dwo+of5rKTSx5XtCaTQSIiGyIaIkF
         hJFBa2scU/InSaoonZMBMb/loKuydhF4yCZtk5bm5ZAyoe/mJ51wJrzc2Ik3sgDlRNFl
         OS3A==
X-Gm-Message-State: AOAM531PLnxoPfpoFfY9OKfFZ387EbSbtcD4mhcC+u4cEebe2bRF/eho
        /LnrIrEWmgald0V82Ix9OydxlzsduzCUPonl2E+943keT5LUDbWoTfZXp8FiAyu5SvLK5EDXLB7
        uKSahTByiXb0dtBQqqM+iECzC2ycIOiP2VEhckck=
X-Received: by 2002:a17:906:a10:b0:6ce:7107:598b with SMTP id w16-20020a1709060a1000b006ce7107598bmr3838144ejf.653.1646516947422;
        Sat, 05 Mar 2022 13:49:07 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyr2kT1aeQLLJO9FBVlLCJJEpNgkXx6haeqI+gPwVq8L5czrgAUT8X08CZ0HwZ0nOoFqxAA7Q==
X-Received: by 2002:a17:906:a10:b0:6ce:7107:598b with SMTP id w16-20020a1709060a1000b006ce7107598bmr3838131ejf.653.1646516947209;
        Sat, 05 Mar 2022 13:49:07 -0800 (PST)
Received: from [192.168.0.140] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id z21-20020a1709063a1500b006da6436819dsm3247439eje.173.2022.03.05.13.49.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Mar 2022 13:49:06 -0800 (PST)
Message-ID: <44308465-db4c-80e7-2beb-b0f676d16edf@canonical.com>
Date:   Sat, 5 Mar 2022 22:49:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 2/2] dt-bindings: gpu: Convert aspeed-gfx bindings to
 yaml
Content-Language: en-US
To:     Joel Stanley <joel@jms.id.au>, Rob Herring <robh+dt@kernel.org>,
        Andrew Jeffery <andrew@aj.id.au>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Lee Jones <lee.jones@linaro.org>
References: <20220304000311.970267-1-joel@jms.id.au>
 <20220304000311.970267-3-joel@jms.id.au>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220304000311.970267-3-joel@jms.id.au>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/03/2022 01:03, Joel Stanley wrote:
> Convert the bindings to yaml and add the ast2600 compatible string.
> 
> The legacy mfd description was put in place before the gfx bindings
> existed, to document the compatible that is used in the pinctrl
> bindings.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  .../devicetree/bindings/gpu/aspeed,gfx.yaml   | 69 +++++++++++++++++++
>  .../devicetree/bindings/gpu/aspeed-gfx.txt    | 41 -----------
>  .../devicetree/bindings/mfd/aspeed-gfx.txt    | 17 -----
>  3 files changed, 69 insertions(+), 58 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/gpu/aspeed,gfx.yaml
>  delete mode 100644 Documentation/devicetree/bindings/gpu/aspeed-gfx.txt
>  delete mode 100644 Documentation/devicetree/bindings/mfd/aspeed-gfx.txt
> 
> diff --git a/Documentation/devicetree/bindings/gpu/aspeed,gfx.yaml b/Documentation/devicetree/bindings/gpu/aspeed,gfx.yaml
> new file mode 100644
> index 000000000000..8ddc4fa6e8e4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpu/aspeed,gfx.yaml
> @@ -0,0 +1,69 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpu/aspeed,gfx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ASPEED GFX display device
> +
> +maintainers:
> +  - Joel Stanley <joel@jms.id.au>
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - aspeed,ast2400-gfx
> +          - aspeed,ast2500-gfx
> +          - aspeed,ast2600-gfx

That's different than original bindings - new patch. It's not currently
supported, so adding it is more than just updating bindings to current
state.

> +      - const: syscon
> +
> +  reg:
> +    minItems: 1

maxItems?

> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  memory-region: true
> +
> +  syscon: true

You need at least description. I see old bindings did not mention it
(except that it is required)... I think you also need a type, because it
is not a standard property.

> +
> +  reg-io-width: true

Some constraints? Can it be anything from syscon schema?

Best regards,
Krzysztof
