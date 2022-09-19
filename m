Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA8F15BCAC4
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 13:31:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229587AbiISLbL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 07:31:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229498AbiISLbK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 07:31:10 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D389113C
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 04:31:09 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id a10so628218ljq.0
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 04:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=9PKaV/RvFlzBJAGuK7i7e4+H39Q6kOLNX4cWQ7W3wQA=;
        b=o8hsT8h9RRK8ydKfIILKIFgtlqx5Cbs/EG0Rvyu+yiIj1temtivC5Yggy01VwvUNpA
         0xWj9Rq1Ramfmy3y98uarEdXakJth6nPaOC4aWgenEFYCRlrJhxBwbTA+xXgCHfi+xPy
         5ifk22GVq/ltLikfbhhRFgqP/3gTCieOQfTZi58dzArfy9PF4bM1GiZKjEFfqRnCNRjw
         Y5LW8fuBS6anIgqXArSIB4zhpKzDssHextAPF1o1PtWZAg5eC7KrQSoJKbrg1W8mBh0L
         wnT83KnRwORSXkv/u7P0q+rd4O+BHB+Z3hLTjL0xhiw35sjGJfx9asbU04//4cs+X+DY
         7Gsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=9PKaV/RvFlzBJAGuK7i7e4+H39Q6kOLNX4cWQ7W3wQA=;
        b=yzBMfEyufBHOtdHyEvwAE1eJU248tJYaHYOZsl57lpMPqi8BJsnu3UMidXX6GUEi9j
         bkD0gnMPR5kEPGDqUkVzFyhiOwUBQdUzOTDjHID9ZHZcm9erWRkfO88BkOpk5/bkdHx2
         r2LxXLjNTnSTSdMNu7o4Hiu0AfbSUBmAlCSZpYTxqirQbKzsBYDoE4hNmSA+tOW7SLPw
         k6qWdpeBu3s3qzDI+4VtKRWSALpjofNyxpXkveXoDML2QTQ5hpOu7TUIV0FosvuE5l9q
         U0GM+AKHO3cy2y1d9RiiuXv/oXCXJbHjeqGEHIYNEyYs0kWr2T4MJklTqvsGEMRb9ODg
         Bfng==
X-Gm-Message-State: ACrzQf2LwsTAhI1seUXwGIJXhPzgkPrFADEtwsDJuOD1I95IPE4fu0TY
        0yrotLuYIu5+DS9xjsuOgTUcmQ==
X-Google-Smtp-Source: AMsMyM7qui24XGlvJZE9nNvV2psU4PJERt1XrET2RJiMgzSGHFku1AQP2RdVjCFEJmmt5Chm3GioQA==
X-Received: by 2002:a2e:96da:0:b0:26c:4e11:5178 with SMTP id d26-20020a2e96da000000b0026c4e115178mr1699176ljj.380.1663587067857;
        Mon, 19 Sep 2022 04:31:07 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id bg40-20020a05651c0ba800b0026bddcf75d1sm3581600ljb.44.2022.09.19.04.31.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Sep 2022 04:31:07 -0700 (PDT)
Message-ID: <67080aaa-3cfb-9190-4b5e-99a793677c7d@linaro.org>
Date:   Mon, 19 Sep 2022 13:31:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] dt-bindings: spi: migrate mt7621 text bindings to YAML
Content-Language: en-US
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>,
        devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, krzk+dt@kernel.org, arinc.unal@arinc9.com
References: <20220916040044.487748-1-sergio.paracuellos@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220916040044.487748-1-sergio.paracuellos@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/09/2022 06:00, Sergio Paracuellos wrote:
> SoC MT7621 SPI bindings used text format, so migrate them to YAML.
> 

Rebase your patch on recent Linux kernel.

> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  .../bindings/spi/ralink,mt7621-spi.yaml       | 68 +++++++++++++++++++
>  .../devicetree/bindings/spi/spi-mt7621.txt    | 26 -------
>  2 files changed, 68 insertions(+), 26 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/spi/spi-mt7621.txt
> 
> diff --git a/Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml b/Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml
> new file mode 100644
> index 000000000000..a602406e2669
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml
> @@ -0,0 +1,68 @@
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
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0

Aren't these coming from spi-controller?

> +
> +  clocks:
> +    maxItems: 1

You need to describe changes done. This does not look like pure conversion.

> +
> +  clock-names:
> +    const: spi

Why?
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: spi

Why?

> +
> +required:
> +  - compatible
> +  - reg
> +  - resets
> +  - reset-names

Why?

> +  - "#address-cells"
> +  - "#size-cells"

Use same style of quotes.

> +
> +unevaluatedProperties: false
> +


Best regards,
Krzysztof
