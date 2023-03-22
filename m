Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D12396C4423
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 08:34:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229823AbjCVHei (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 03:34:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229757AbjCVHeh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 03:34:37 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48EDF532B9
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 00:34:35 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id r11so69087359edd.5
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 00:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679470474;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/p12NuQFP94bOvfc2eks9Atu7uo8jXQco78Qffrhh+s=;
        b=eKFcf+FOQH0uBXkR2qrAWXmQPoHUKCjF23liWL4mincOmW8FJvvYV2YCQQHp3PMQ5N
         SGf/In0ZtoyNTcTrMxTpA/FywagIWvHxu12s2beuNPTFrylzTNPMCUSFP09twit7eYOV
         0CevOts9I6xLlD9+JvZF6xSFKiIDafXu/6q9CEwtqgo4hLOQfyHVH06in6h1j+YOVfQR
         w8gXckp1RkensIJ31JMXYo8rfkbJE2LIhnmX78wUo7dpO2r7e2iwtzVFuk1gxdksOWU6
         lWi3FZ2AYYZbHlxRcLtVNPpZ9WDWQ0HQO8CsC1ep05+FLA64/grWgGKhVwncIyq/QQuc
         vKDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679470474;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/p12NuQFP94bOvfc2eks9Atu7uo8jXQco78Qffrhh+s=;
        b=1tcrAs0CKxdrzbKwIX73SArmPY0IyBl9mwpDcIQo9b58JxA6Z7n+K6Kc7aLU1bbhQg
         QKEnoe8wZBOd6QF/X7ifdeWlRCQXBwTWMJuomnGaXow1l2A8KPSKC5dVTwdRLQi5O6eY
         pW9uaislCXP6wGetZ7X1ChzAqbbn9HIicXwpboBTeXi9Z4Qn09n4GGwuTMLvwuZYR9J4
         Fp4Nhqrpqs4F/82uln5BRoLhAl/053xM/L79d5I5oC5sAiLHAxL+FcxRAKLd5qMsQuXz
         di5C8J7+2hu5L0qeZIgpZaz3B8pDNBZnC8acYLFHuz0WSS09WdP+12/yHG32bMb1Rda3
         U5pw==
X-Gm-Message-State: AO0yUKVQFSVwVv0cnNvCjidQbgCcDXhKNYldpUDqRMBQNjRS7PmaokVE
        l8BKasFq3HB8wev/JXvkbzor1Q==
X-Google-Smtp-Source: AK7set8Iab/7Uyn1GEFw+EikRjr3zSf1f9IaFaYVH+PkmHiBcqg+ioKns+DnFCl1T+O657FU3nm47A==
X-Received: by 2002:a17:906:15d0:b0:92e:3b80:9841 with SMTP id l16-20020a17090615d000b0092e3b809841mr5425176ejd.42.1679470473666;
        Wed, 22 Mar 2023 00:34:33 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5050:151b:e755:1c6? ([2a02:810d:15c0:828:5050:151b:e755:1c6])
        by smtp.gmail.com with ESMTPSA id g1-20020a1709061c8100b0092669fb4ba1sm6753266ejh.130.2023.03.22.00.34.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 00:34:33 -0700 (PDT)
Message-ID: <88a6856e-c766-d4a5-1882-5350fd0e248a@linaro.org>
Date:   Wed, 22 Mar 2023 08:34:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 1/4] dt-bindings: mfd: Add TI TPS6594 PMIC
Content-Language: en-US
To:     Julien Panis <jpanis@baylibre.com>, lee@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        corbet@lwn.net, arnd@arndb.de, gregkh@linuxfoundation.org,
        derek.kiernan@xilinx.com, dragan.cvetic@xilinx.com
Cc:     eric.auger@redhat.com, jgg@ziepe.ca, razor@blackwall.org,
        stephen@networkplumber.org, davem@davemloft.net,
        christian.koenig@amd.com, contact@emersion.fr,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-doc@vger.kernel.org, sterzik@ti.com, u-kumar1@ti.com,
        eblanc@baylibre.com, jneanne@baylibre.com
References: <20230321171020.74736-1-jpanis@baylibre.com>
 <20230321171020.74736-2-jpanis@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230321171020.74736-2-jpanis@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/03/2023 18:10, Julien Panis wrote:
> TPS6594 is a Power Management IC which provides regulators and others
> features like GPIOs, RTC, watchdog, ESMs (Error Signal Monitor), and
> PFSM (Pre-configurable Finite State Machine) managing the state of the
> device.
> TPS6594 is the super-set device while TPS6593 and LP8764X are derivatives.
> 
> Signed-off-by: Julien Panis <jpanis@baylibre.com>
> ---
>  .../devicetree/bindings/mfd/ti,tps6594.yaml   | 231 ++++++++++++++++++
>  1 file changed, 231 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/ti,tps6594.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/ti,tps6594.yaml b/Documentation/devicetree/bindings/mfd/ti,tps6594.yaml
> new file mode 100644
> index 000000000000..4e4565a68e40
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/ti,tps6594.yaml
> @@ -0,0 +1,231 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/ti,tps6594.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TI TPS6594 Power Management Integrated Circuit
> +
> +maintainers:
> +  - Julien Panis <jpanis@baylibre.com>
> +
> +description:
> +  TPS6594 is a Power Management IC which provides regulators and others
> +  features like GPIOs, RTC, watchdog, ESMs (Error Signal Monitor), and
> +  PFSM (Pre-configurable Finite State Machine) managing the state of the device.
> +  TPS6594 is the super-set device while TPS6593 and LP8764X are derivatives.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ti,lp8764x

Does x stand for a wildcard? If so, then fix it. Compatibles should be
specific.

> +      - ti,tps6593
> +      - ti,tps6594
> +
> +  reg:
> +    description: I2C slave address or SPI chip select number.
> +    maxItems: 1
> +
> +  ti,primary-pmic:
> +    type: boolean
> +    description: |
> +      Identify the primary PMIC on SPMI bus.
> +      A multi-PMIC synchronization scheme is implemented in the PMIC device
> +      to synchronize the power state changes with other PMIC devices. This is
> +      accomplished through a SPMI bus: the primary PMIC is the controller
> +      device on the SPMI bus, and the secondary PMICs are the target devices
> +      on the SPMI bus.
> +
> +  system-power-controller: true
> +
> +  gpio-controller: true
> +
> +  '#gpio-cells':
> +    const: 2
> +    description: |
> +      The first cell is the pin number, the second cell is used to specify flags.
> +      See ../gpio/gpio.txt for more information.
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  ti,multi-phase-id:
> +    description: |
> +      Describes buck multi-phase configuration, if any. For instance, XY id means
> +      that outputs of buck converters X and Y are combined in multi-phase mode.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array

No improvements here. As Rob pointed out, this looks like coupled
regulators.

Best regards,
Krzysztof

