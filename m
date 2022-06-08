Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7EA5A542CFA
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 12:16:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236079AbiFHKQo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 06:16:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236534AbiFHKPY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 06:15:24 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22AFB26855C
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 03:03:04 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id y19so40415165ejq.6
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 03:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=NKyyO0R/DNBe59uojHSKmle13FrO8LlGaKpDZKb02gw=;
        b=OvE5wtNhJO0yn86Zz3zu3mzyNkKn7fTbPsleOrROptyar67lYp7iBvV0A8rhvLMK0g
         XecsXNhpS5zPcG2cwpy+7acWRYTjicHPWf4iuaFDyd/nF3ooShNIRtRISnJ5IbZNA6Oz
         SH5IG7yCc5V5JU5IBa/7F8VbwwR43osXPnkxCDbO/LK9O6AFNLMTcsV+EjlF32SKGu8j
         43tItwuTySQFLekPq8+NRO3h0frN2k+vqaEJC5O7OsD7nkyd1nahx3PLK6IyFPglpOr2
         bDtEagFdRPBZcDvu5V7V61WrK20ghbDX/Bs6KW5qDYu9qscfSAUGJSFmDP2ytDKQvfiS
         JAXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=NKyyO0R/DNBe59uojHSKmle13FrO8LlGaKpDZKb02gw=;
        b=gwuSvE8ykKr5GJ04as4bg4qw3tGHou+6sj5mmrMpS8j1c/SGJEnaOqa1IsPXy9zhIc
         p93TFzUTiXSxAW5JYDNKGnQTXWFGIM+1L4WqqLS8SSkBdXbgwPKWDjdMojeivLqeEzr1
         ca4dOUzEL9YVmBZh/asu4TzPL1Q3AjG0iPFo9Y6VttqXYKSaKcvPYwsBv3hJzYCDMRxy
         iopzADXgFGjemmwBs6fOWrmc5gLu9xBrqppISfZzpMPpPdh08wz8AvnNs4hTdOBIOFIf
         b5Aik4RsxzSfVYb6hDfQlFjdg3u3EatF21/3dBaPa08GdL9jiIEUZVYAnAZkp9QC7BF8
         ZKiw==
X-Gm-Message-State: AOAM532VhCukFpdORICbiSUTbmW+EUoojhhGVPYuBYhI9ZIp81HNGyRA
        pN9cM2s4+Unsk5nrtY9Dg0IsjA==
X-Google-Smtp-Source: ABdhPJzV0KH21jeek+JIQQNjs8yfpPCv0lnb9LX8dRez4j3ORgyTDpTexd8DT7y+4Qfu8ickVNGoXQ==
X-Received: by 2002:a17:906:9753:b0:6fe:dece:982a with SMTP id o19-20020a170906975300b006fedece982amr31180089ejy.560.1654682583385;
        Wed, 08 Jun 2022 03:03:03 -0700 (PDT)
Received: from [192.168.0.191] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id h1-20020a170906590100b006fe97996423sm8869782ejq.219.2022.06.08.03.03.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 03:03:02 -0700 (PDT)
Message-ID: <f4899b6d-fec3-5940-709a-f5fbc7ae6233@linaro.org>
Date:   Wed, 8 Jun 2022 12:03:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 06/20] dt-binding: clk: npcm845: Add binding for
 Nuvoton NPCM8XX Clock
Content-Language: en-US
To:     Tomer Maimon <tmaimon77@gmail.com>, avifishman70@gmail.com,
        tali.perry1@gmail.com, joel@jms.id.au, venture@google.com,
        yuenn@google.com, benjaminfair@google.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
        sboyd@kernel.org, p.zabel@pengutronix.de,
        gregkh@linuxfoundation.org, daniel.lezcano@linaro.org,
        tglx@linutronix.de, wim@linux-watchdog.org, linux@roeck-us.net,
        catalin.marinas@arm.com, will@kernel.org, arnd@arndb.de,
        olof@lixom.net, jirislaby@kernel.org, shawnguo@kernel.org,
        bjorn.andersson@linaro.org, geert+renesas@glider.be,
        marcel.ziswiler@toradex.com, vkoul@kernel.org,
        biju.das.jz@bp.renesas.com, nobuhiro1.iwamatsu@toshiba.co.jp,
        robert.hancock@calian.com, j.neuschaefer@gmx.net, lkundrak@v3.sk
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-serial@vger.kernel.org,
        linux-watchdog@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220608095623.22327-1-tmaimon77@gmail.com>
 <20220608095623.22327-7-tmaimon77@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220608095623.22327-7-tmaimon77@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/06/2022 11:56, Tomer Maimon wrote:
> Add binding for the Arbel BMC NPCM8XX Clock controller.
> 
> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
> ---
>  .../bindings/clock/nuvoton,npcm845-clk.yaml   | 63 +++++++++++++++++++
>  .../dt-bindings/clock/nuvoton,npcm8xx-clock.h | 50 +++++++++++++++
>  2 files changed, 113 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/nuvoton,npcm845-clk.yaml
>  create mode 100644 include/dt-bindings/clock/nuvoton,npcm8xx-clock.h
> 
> diff --git a/Documentation/devicetree/bindings/clock/nuvoton,npcm845-clk.yaml b/Documentation/devicetree/bindings/clock/nuvoton,npcm845-clk.yaml
> new file mode 100644
> index 000000000000..e1f375716bc5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/nuvoton,npcm845-clk.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/nuvoton,npcm845-clk.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Nuvoton NPCM8XX Clock Controller Binding
> +
> +maintainers:
> +  - Tomer Maimon <tmaimon77@gmail.com>
> +
> +description: |
> +  Nuvoton Arbel BMC NPCM8XX contains an integrated clock controller, which
> +  generates and supplies clocks to all modules within the BMC.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - nuvoton,npcm845-clk
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: 25M reference clock
> +      - description: CPU reference clock
> +      - description: MC reference clock
> +
> +  clock-names:
> +    items:
> +      - const: refclk
> +      - const: sysbypck
> +      - const: mcbypck
> +

I asked what is the suffix about and you replied "ck"... ok, so let's
make clear. This should be:

    items:
      - const: ref
      - const: sysbyp
      - const: mcbyp

or something similar, without the same suffix all over.

> diff --git a/include/dt-bindings/clock/nuvoton,npcm8xx-clock.h b/include/dt-bindings/clock/nuvoton,npcm8xx-clock.h
> new file mode 100644
> index 000000000000..229915a254a5
> --- /dev/null
> +++ b/include/dt-bindings/clock/nuvoton,npcm8xx-clock.h

Same comment as before. No changes here...



Best regards,
Krzysztof
