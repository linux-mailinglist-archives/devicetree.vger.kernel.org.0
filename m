Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F5415BF691
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 08:44:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229578AbiIUGoZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 02:44:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229498AbiIUGoY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 02:44:24 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FF3A80F4C
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 23:44:23 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id u18so7586524lfo.8
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 23:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=v+BK8fWr5o8R3xHR5T/zVf62rRZ/+FcSmBt1uS4p3+Q=;
        b=z44THoWotTWBJAjjAQnbraZ1vLmGNOSXza8LWi41JGORwQZ625ugaWZvUT6wuWO6Tu
         AiAux3M5KnvNmC7OM61qR8BgTIbcwBtSvM3ykoj6Te1NIUKPbIvYlKojXXYGPWFdpRDf
         DvzWkkUi+/mYXTg2boX/eDzzJ26WNNkf+eXIdc3x9xVcnLQH5Q8c31Zc7zI8sfkpRZPu
         1Rmb7GLCIhnBBa3bWIx4f6td61nx49vMDsnMGJo9QKoQL0Oq+EnNT0fcYCAhhAsAq/Tt
         JR7Atg+gTORlVyvvkcRt3mufsQ/gozHL9lQa4ovLahxlfg5QT3iuqVYa+O2aqa+UpuV+
         e2Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=v+BK8fWr5o8R3xHR5T/zVf62rRZ/+FcSmBt1uS4p3+Q=;
        b=Ds0Zo/4SOnnyQU/TVQrhYUImu8QQTFyK1V/yZ1b6wwEmUtqrKsmrxfbJqdx5RSLpNG
         8eKE1K7PDB5ODckajYHrUsbkDlQlz9pz74WzgvwIkdA9awKDHA1W5Ehqn6a55ErOHB/O
         5Hyt/KemXhlIPYryyk0ZqNS1UA36JwmJYPiZPHm04zErz7sPSvzNL5Yh1HkSmSiQ1ttQ
         DEQT1JO3NHSVExluopMoGS35mFbFp2w+Ae5dZlGJSDRgx3OGYJFiOGzPuDmT7NAyIJkF
         5RcqejIbslWLHXhLFSaGNGkxfh3zVPje1V6HknGwqELKi9xf+12sKj0WOBOQ2DQAwJVc
         hwLA==
X-Gm-Message-State: ACrzQf29JVCVrUeJCNXfgffyNFuCSQOSyFerQrXqm7YY37r8RGlONzVG
        LHUFDojy6LFX8JDXo16O2c2Wkc1BbXZYlQ==
X-Google-Smtp-Source: AMsMyM4ptZOYIyFFFyi7qPhxY73nn+aTTcJnUHDn8l66FSHe1KaknZA5ajcEegT4w/v1SJA6KrZi9w==
X-Received: by 2002:ac2:5107:0:b0:497:adac:7305 with SMTP id q7-20020ac25107000000b00497adac7305mr9798236lfb.32.1663742661372;
        Tue, 20 Sep 2022 23:44:21 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q29-20020ac2515d000000b0049fa185f6e6sm308039lfd.34.2022.09.20.23.44.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 23:44:20 -0700 (PDT)
Message-ID: <4a6d5f62-a0af-3117-1dff-2dee955dded5@linaro.org>
Date:   Wed, 21 Sep 2022 08:44:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2] dt-bindings: spi: migrate mt7621 text bindings to YAML
Content-Language: en-US
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>,
        devicetree@vger.kernel.org
Cc:     tsbogend@alpha.franken.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, arinc.unal@arinc9.com
References: <20220920052735.582768-1-sergio.paracuellos@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220920052735.582768-1-sergio.paracuellos@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/09/2022 07:27, Sergio Paracuellos wrote:
> SoC MT7621 SPI bindings used text format, so migrate them to YAML.
> There are some additions to the binding that were not in the original
> file. This binding is used in MT7621 and MT7628a Ralink SoCs. To
> properly match both dts nodes in tree we need to add to the schema
> 'clocks', 'clock-names' and 'reset-names'. Both 'clock-names' and
> 'reset-names' use 'spi' as string so maintain that as const in
> the schema.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

(plus one more comment)

> ---
> Changes in v2:
> - Address review comment from Krzysztof:
>     - Rebase onto last kernel version.
>     - Drop address-cells and size-cells.
>     - Explain deviations from the original file in commit message.
>     - Drop reset-names as required property.
> 
>  .../bindings/spi/ralink,mt7621-spi.yaml       | 61 +++++++++++++++++++
>  .../devicetree/bindings/spi/spi-mt7621.txt    | 26 --------
>  2 files changed, 61 insertions(+), 26 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/spi/spi-mt7621.txt
> 
> diff --git a/Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml b/Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml
> new file mode 100644
> index 000000000000..22879f7dcb77
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/spi/ralink,mt7621-spi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +maintainers:
> +  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
> +
> +title: Mediatek MT7621/MT7628 SPI controller
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-controller.yaml#
> +
> +properties:
> +  compatible:
> +    const: ralink,mt7621-spi
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: spi
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: spi
> +
> +required:
> +  - compatible
> +  - reg
> +  - resets
> +  - "#address-cells"
> +  - "#size-cells"

You could make clocks required, if you know that they are in fact
required for hardware to operate and they are always provided (e.g. not
hard-wired internally somehow).

Best regards,
Krzysztof
