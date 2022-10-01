Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 587275F1B90
	for <lists+devicetree@lfdr.de>; Sat,  1 Oct 2022 11:47:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229627AbiJAJri (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Oct 2022 05:47:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbiJAJrh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Oct 2022 05:47:37 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC4E948C8B
        for <devicetree@vger.kernel.org>; Sat,  1 Oct 2022 02:47:35 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id p5so7098183ljc.13
        for <devicetree@vger.kernel.org>; Sat, 01 Oct 2022 02:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=VZz6wsPP7z+3Nm9U551l2twY4ylGLnRatB6p8NgjSzY=;
        b=QamL+i5zZlwPemg4u+D6kKlrYYAf3A+7oslgMaO9oMI12L4qXw+tuN4iccN2bx5hQ3
         HiXxDEQ61/tAa1L7AVds3RYDgl2Z7iJLyc8h4IHqkkhMWvb5C9p7WbjTUjgIjiDz3Sj1
         MMa2lqsWVhB3RTAQQw3vdGCYQAXJXY8Nebgxq8rDLSRqf1DL2+eMepuSknSy/rvQgizI
         1ghMEH6robRBNQQZHBoVV7TVtH+o9tJmIX8x3bXJQbWlNCiwclxyxukf0egC+UIJIY7u
         zT06gYYLdkbOK43KJm+PJlpkW6RxXuOGopNk1e60JKeClDAwePcIvBDpekTyPw5KzPi6
         swiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=VZz6wsPP7z+3Nm9U551l2twY4ylGLnRatB6p8NgjSzY=;
        b=jIuZIPJJrbyg4qsY6W6bvLeYmRMClT40/pO3pVRrKB97q2gQQxAB8RKVFF9lcc9FWr
         hcG56hvuoLFnohCZohZqqm1LXyaMQwx/6DTkOXamzqirryXCozBTQ8rT5h2bHhbzvHXu
         m4wbEx5RFcRbb7W+1UmoBewO+4L4sA8mDlzBuDA5/cViV/UWkY5ox1st61lgK7pVo+fu
         E4XTeimLE8yL+ISaH4qriyFsw8aX7ZMHUH6XOswSoxPmxz40xqqFbWWwVk3D6UudRepQ
         TqeQPYNJGXTsRjjxMKqad9+pVzTO9jM9Ox+1cRAkDsQ9VQAwieOSdy4cLTgWxiWbdSqN
         rvqQ==
X-Gm-Message-State: ACrzQf39nczElIEM0jwqU5F4RuTmd99S09woOjVjXI6WnPVkGN1+yubV
        FRnl92aGP6Lqn5A7OFGitLQ8KQ==
X-Google-Smtp-Source: AMsMyM42pznuaeUmNhnd/UfxvEDFI8r1pzQybK1ytrxDBlcAe/8mEdsXHhIYQG3xEW05kKaqv6zrIQ==
X-Received: by 2002:a2e:980d:0:b0:26d:c785:51b0 with SMTP id a13-20020a2e980d000000b0026dc78551b0mr1192267ljj.354.1664617654114;
        Sat, 01 Oct 2022 02:47:34 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id z13-20020a056512308d00b004946bec4e7fsm712916lfd.41.2022.10.01.02.47.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Oct 2022 02:47:33 -0700 (PDT)
Message-ID: <ce6c360a-f364-72db-4f44-dea66dc5e744@linaro.org>
Date:   Sat, 1 Oct 2022 11:47:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v4 2/2] dt-bindings: mips: brcm: convert Broadcom SoCs to
 schema
Content-Language: en-US
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>,
        devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
        zhouyanjie@wanyeetech.com, linux-mips@vger.kernel.org,
        arinc.unal@arinc9.com
References: <20221001043855.933528-1-sergio.paracuellos@gmail.com>
 <20221001043855.933528-3-sergio.paracuellos@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221001043855.933528-3-sergio.paracuellos@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/10/2022 06:38, Sergio Paracuellos wrote:
> Convert Broadcom cable/DSL/settop platforms to YAML schema.

Where is the conversion? Conversion is remove+add, but there is no
removal here.

> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  .../devicetree/bindings/mips/brcm/soc.yaml    | 110 ++++++++++++++++++
>  1 file changed, 110 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mips/brcm/soc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mips/brcm/soc.yaml b/Documentation/devicetree/bindings/mips/brcm/soc.yaml
> new file mode 100644
> index 000000000000..0ddf1fe51802
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mips/brcm/soc.yaml
> @@ -0,0 +1,110 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mips/brcm/soc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom cable/DSL/settop platforms Device Tree Bindings

Drop "Device Tree Bindings"

> +
> +maintainers:
> +  - Hauke Mehrtens <hauke@hauke-m.de>
> +  - Rafał Miłecki <zajec5@gmail.com>
> +
> +description: |
> +    Boards Broadcom cable/DSL/settop SoC shall have the following properties.
> +    The experimental -viper variants are for running Linux on the 3384's
> +    BMIPS4355 cable modem CPU instead of the BMIPS5000 application processor.
> +
> +properties:
> +  $nodename:
> +    const: '/'

Blank line.

> +  compatible:
> +    oneOf:
> +      - description: Boards with Broadcom bcm3368 SoC
> +        items:
> +          - const: brcm,bcm3368
> +
> +      - description: Boards with Broadcom bcm3384 SoC
> +        items:
> +          - const: brcm,bcm3384

I don't understand what did you want to achieve here. Either you
document SoC or boards. If boards, where are the actual boards? If SoC,
then why calling it boards, why making it oneOf?


> +
> +      - description: Boards with Broadcom bcm33843 SoC
> +        items:
> +          - const: brcm,bcm33843
> +
> +      - description: Boards with Broadcom bcm3384-viper SoC
> +        items:
> +          - const: brcm,bcm3384-viper
> +
> +      - description: Boards with Broadcom bcm33843-viper SoC
> +        items:
> +          - const: brcm,bcm33843-viper
> +
> +      - description: Boards with Broadcom bcm6328 SoC
> +        items:
> +          - const: brcm,bcm6328
> +
> +      - description: Boards with Broadcom bcm6358 SoC
> +        items:
> +          - const: brcm,bcm6358
> +
> +      - description: Boards with Broadcom bcm6362 SoC
> +        items:
> +          - const: brcm,bcm6362
> +
> +      - description: Boards with Broadcom bcm6368 SoC
> +        items:
> +          - const: brcm,bcm6368
> +
> +      - description: Boards with Broadcom bcm63168 SoC
> +        items:
> +          - const: brcm,bcm63168
> +
> +      - description: Boards with Broadcom bcm63268 SoC
> +        items:
> +          - const: brcm,bcm63268
> +
> +      - description: Boards with Broadcom bcm7125 SoC
> +        items:
> +          - const: brcm,bcm7125
> +
> +      - description: Boards with Broadcom bcm7346 SoC
> +        items:
> +          - const: brcm,bcm7346
> +
> +      - description: Boards with Broadcom bcm7358 SoC
> +        items:
> +          - const: brcm,bcm7358
> +
> +      - description: Boards with Broadcom bcm7360 SoC
> +        items:
> +          - const: brcm,bcm7360
> +
> +      - description: Boards with Broadcom bcm7362 SoC
> +        items:
> +          - const: brcm,bcm7362
> +
> +      - description: Boards with Broadcom bcm7420 SoC
> +        items:
> +          - const: brcm,bcm7420
> +
> +      - description: Boards with Broadcom bcm7425 SoC
> +        items:
> +          - const: brcm,bcm7425
> +
> +  cpus:
> +    $ref: "/schemas/mips/cpus.yaml#"

No need for quotes.

> +    unevaluatedProperties: false
> +
> +    properties:
> +      mips-hpt-frequency:
> +        description: This is common to all CPUs in the system so it lives
> +         under the "cpus" node.

You need to describe what is this. Not where it lives. Because where it
lives, we can easily see from the schema.

> +        $ref: /schemas/types.yaml#/definitions/uint32
> +
> +    required:
> +      - mips-hpt-frequency
> +
> +additionalProperties: true
> +
> +...

Best regards,
Krzysztof

