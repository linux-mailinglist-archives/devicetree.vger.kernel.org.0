Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D35E3631DC7
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 11:09:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229702AbiKUKJ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 05:09:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231313AbiKUKJI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 05:09:08 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D22DFAD0
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 02:09:06 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id c1so18066384lfi.7
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 02:09:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TxrwoV4uWAErf9DL6sbWjIb3t+zcjaVCbt4w4586XkY=;
        b=Wed0FFJ81XFeo/OAhCrlzD6g9EDFNqhjFc6GWDE+gFplOeMHnMYKzJe06LfyI8dihk
         dX2CQCikjWSKjz+bBsAMq6DXgQRrR4f4jjYOH1cEFlxtN4/OSlU/ZxBFc+R/E3hmh4lQ
         yrfzBynHDAvigzlXz2rwhPv7+aKa09hrMZ0VcOiXsU1cZ+1YtaCgRFV7vw6LL0oahIYB
         Sx+eHl44hLwcd1qhkHn4pUilfYQdfKDa9WC3VtsavFbS1pA64Wen1F23TqyRWG18s5kP
         j4z8qQOtl+0nLwm4XB0KOlMz/zoA7hc6eVozDfFiv0wS6wk/zAg8oEcAxs/QxdT03ay3
         vC9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TxrwoV4uWAErf9DL6sbWjIb3t+zcjaVCbt4w4586XkY=;
        b=kxHBBOpvXc/KvtjWswsh7i/TQ0wziy+aBLPa0FjEgmahCl3Q0qeRmKwbBxEalKIEXe
         COFYEEGJ+8+xeUTH6SF/kIDlalwU7R0rs7rK9HvLjDvDC+AAFM5NEiMp8C24yqJf8Bky
         RJtwlll1NrnSpq0MKo3qyrZUcbuWFfkX9yhG8Hp5ELyQ4X6NGspSuItA+pXyIoXpfNiW
         UWc2giRV7fxyCpiHcOhP10MqAEy1c0485De2sTex/zqorA6MemyouNJYdEbtMdQEJnIE
         QLP45a2t6DmwQElPIm0mXcfcH2VUbdTSKiTsCRM+ImdKJatfzkdFPOL/FFOwL+Wh3dsR
         vHpQ==
X-Gm-Message-State: ANoB5pk8VejI2EN20KQXcneiDAwocfvkzcV7hQdexdsZcVQrYN8Cnjti
        h2pCCDRpu7IRqI9xjy1pJFXJ9A==
X-Google-Smtp-Source: AA0mqf5GeXjgbrXXdWAXxvd6orgjBRuVp8zzcCyfmnYfi/NNmTb9WEE8schAAo/sbXXSZ/qNgDNyxA==
X-Received: by 2002:a19:7001:0:b0:4b1:8fbb:d3f4 with SMTP id h1-20020a197001000000b004b18fbbd3f4mr5968366lfc.70.1669025344352;
        Mon, 21 Nov 2022 02:09:04 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id d20-20020ac25454000000b004948378080csm1953159lfn.290.2022.11.21.02.08.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 02:09:03 -0800 (PST)
Message-ID: <1774dce0-b9eb-6b75-c9c2-98dbc05db04a@linaro.org>
Date:   Mon, 21 Nov 2022 11:08:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/7] dt-bindings: serial: add bindings doc for Bouffalolab
 uart driver
Content-Language: en-US
To:     Jisheng Zhang <jszhang@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Jiri Slaby <jirislaby@kernel.org>
Cc:     linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20221120082114.3030-1-jszhang@kernel.org>
 <20221120082114.3030-2-jszhang@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221120082114.3030-2-jszhang@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/11/2022 09:21, Jisheng Zhang wrote:
> Add bindings doc for Bouffalolab UART Driver

Subject: drop second, redundant "bindings doc".

> 
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> ---
>  .../bindings/serial/bouffalolab,uart.yaml     | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/serial/bouffalolab,uart.yaml
> 
> diff --git a/Documentation/devicetree/bindings/serial/bouffalolab,uart.yaml b/Documentation/devicetree/bindings/serial/bouffalolab,uart.yaml
> new file mode 100644
> index 000000000000..6cef956d33d2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/serial/bouffalolab,uart.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2022 Jisheng Zhang <jszhang@kernel.org>
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/serial/bouffalolab,uart.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"

Drop quotes from both lines.

> +
> +title: Bouffalolab UART Controller
> +
> +maintainers:
> +  - Jisheng Zhang <jszhang@kernel.org>
> +
> +allOf:
> +  - $ref: serial.yaml#
> +
> +properties:
> +  compatible:
> +    const: bouffalolab,uart

No model number? From bouffalolab there will be only one, exactly UART
model? No new models in next 5, 10, 100 years?

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    aliases {
> +        serial0 = &uart0;
> +    };

Drop aliases, not related.



Best regards,
Krzysztof

