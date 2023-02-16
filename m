Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E9CA698F7B
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 10:14:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230003AbjBPJOp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 04:14:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229973AbjBPJOn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 04:14:43 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2389C2311C
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 01:14:37 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id gs13so988187ejc.1
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 01:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fva50b8GrxlgxldYtMJBliwxYf7DEDUsjT9ufEpVuWs=;
        b=sMpHhFntXLyf3Jmld4QJX2eireDFCwQQBDBI2jY8bPjcAMN2ZHhutIKyFktb5S6PlV
         HEokQ7CW+nKEDlYPDP5tZr7VEITH/0Zx359EJ8GCekCBnunuWOcWABiGHtqjMLt0UX9c
         ik4nglpIBLWtAGoUcpXE2lQ8YAmqiBP6QVt//6+j2fyB4gjGtj0cUGKa4X0rdCyuPXtu
         LdCcZ468MwpYGNdZ+diXyQDYCAdbcLA3UKa0Ml9eFyWKIJEidfRuZPAZJMhgrdIGPzkI
         tI2GGGT67SF7JCDvLRZoqOhHNbYErSZUJLWK0c4moESSFf85KQ6uAU/S14VcnfAhqjqR
         HjHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fva50b8GrxlgxldYtMJBliwxYf7DEDUsjT9ufEpVuWs=;
        b=un2Ba7+i/2A3ewKjGWRpfhxSAms22tqMMgic5QxC1qa3/RUaqeIIed1aONqeGKDLRO
         KU4lkJYmNkZGgEhCRk3pOmkOBqrX2wQd0I0Fs9cWiy7Y4OQKWjaGjovzwKwayprYTznM
         T4C5jNOfT1yqyWqeEYafJchb82I81MPYosP7PU54cUWa6aDvV4U/MAAPoaqiHzrqyE/N
         tShT4LfkXQReDw7TFxVlybpiUdyTzwwZaBYQC/A34I8Qd2+lcQw3tAEQnej9d1kr6uDW
         MATc2BW72RJ+Yn1n8H7Q5XGWp6EeQHMfaWHmVTBAWuKvYQeXlH5eksghaKqfwYA629+V
         Z+jg==
X-Gm-Message-State: AO0yUKUkyWwiy8v+j5CYiYXAi22GGMoNZGZ0sdkF4x/BpfwWBACyYaEX
        DK2t0V5AKFJgs2HPjbE94bFPxw==
X-Google-Smtp-Source: AK7set+yGgy9zHqyv9fI0T0DsAMPct9xvmoV8QwrREKROJoG352EmfWtwXagqgHQklpXsy91twxdqg==
X-Received: by 2002:a17:907:174d:b0:880:3129:d84a with SMTP id lf13-20020a170907174d00b008803129d84amr5500539ejc.60.1676538875587;
        Thu, 16 Feb 2023 01:14:35 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id kj9-20020a170907764900b008b163745b7dsm447510ejc.120.2023.02.16.01.14.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 01:14:35 -0800 (PST)
Message-ID: <5341d0fa-1415-b711-30f0-f0a867af0bc4@linaro.org>
Date:   Thu, 16 Feb 2023 10:14:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 2/2] dt-bindings: rng: Add MediaTek MT7981 TRNG
Content-Language: en-US
To:     Daniel Golle <daniel@makrotopia.org>, devicetree@vger.kernel.org,
        Sean Wang <sean.wang@mediatek.com>,
        Olivia Mackall <olivia@selenic.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        Mingming Su <Mingming.Su@mediatek.com>,
        linux-crypto@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <89865515728cb937b6591160ad9c30b4bcc8dd41.1676467500.git.daniel@makrotopia.org>
 <c750e786ad0f529d2ae63c8f766d3c294808ff53.1676467500.git.daniel@makrotopia.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c750e786ad0f529d2ae63c8f766d3c294808ff53.1676467500.git.daniel@makrotopia.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/02/2023 14:27, Daniel Golle wrote:
> Add documentation to describe the MediaTek true random number generator
> which is provided by ARM TrustedFirmware-A of the MT7981.
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>  .../bindings/rng/mediatek,mt7981-rng.yaml     | 39 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 40 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/rng/mediatek,mt7981-rng.yaml
> 
> diff --git a/Documentation/devicetree/bindings/rng/mediatek,mt7981-rng.yaml b/Documentation/devicetree/bindings/rng/mediatek,mt7981-rng.yaml
> new file mode 100644
> index 000000000000..d577d60538d8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/rng/mediatek,mt7981-rng.yaml
> @@ -0,0 +1,39 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/rng/mediatek,mt7981-rng.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek Random number generator (v2/SMC)
> +
> +maintainers:
> +  - Daniel Golle <daniel@makrotopia.org>
> +
> +properties:
> +  $nodename:
> +    pattern: "^rng$"

1. We don't enforce it in device bindings, so drop it.
2. It's not even correct. You have reg.


> +
> +  compatible:
> +    enum:
> +      - mediatek,mt7981-rng
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: rng

Drop clock-names and rely on index.

> +
> +required:
> +  - compatible

and reg?

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    rng {
> +      compatible = "mediatek,mt7981-rng";
> +    };

Best regards,
Krzysztof

