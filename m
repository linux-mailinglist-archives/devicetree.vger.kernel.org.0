Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1343A5EF7F2
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 16:45:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230349AbiI2Oph (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 10:45:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233904AbiI2Oph (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 10:45:37 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D0F761D62
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 07:45:29 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id o2so2564007lfc.10
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 07:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=qzBDhl7t1REqzvir5ZdPbV96Uq1Uf8HIWsulX9tDLco=;
        b=UE2OLueI9yxUnBykbJzpgEuis+WsG9HBCzYKdl7C4VHvvupku4ndsX3EytfCrNbNRo
         WquUzKkuz2U/dFsQUlAodrirE42L7NPf6qa92U+V8TO9o4PverBizzi8iX1+3POTxt1R
         ANI+tlbFXLD1gG9sNrARaoRZm4+m04SxRiDAey7sLbBG4tg/rleq/PJl3kQo6uOkOFrv
         eaR+MJQQLYesrFvmelBq9OuWYn38PfkuArN98goynhBlWaOxblhDXyeY0Aamv2voLvUb
         A2lmgNWpLxIino1vSaQT8P/v6u/UhfZXDnjrBLKjML2kbwY1TBTm2J/nouhZshh6jmFM
         jEBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=qzBDhl7t1REqzvir5ZdPbV96Uq1Uf8HIWsulX9tDLco=;
        b=IdhoNB5qdjh0iW1smYgg967qna6nu2H9HAopKqGK9VEJPXEZl3NsWHOSucJ7YUjYpT
         MGo8PnsDwoMGi6jZoaAlQ0yMPB9tPsL3ODuHe5/cSpHDtYvzQaAmA+P+/GKFR/ZcvuGZ
         J0WTh1DpciDjadPXp/Cpl7jtcMzz/0iCyanxlSmHcbg2bDcazkxIIjm0MDd0GdtTyCTi
         9hc+/l5XG5Ww8EuaySf/LgvZOGOWmA/8+abBddkGbd6vUQdl8ouWGyXNfsaTITkTggue
         rCs8nukfxLw8TKA7xxRXl6oKgp3KLJzUFxifeMs2kzRFkVkCdddattgqfirkZhKS5sa7
         2gwQ==
X-Gm-Message-State: ACrzQf3FMskxqgGzTqntyN/6Pslb615nMVcOR98K11hLLBrNejzp48VT
        b89HtLMSwWmNNzp7FbIXKPDoFA==
X-Google-Smtp-Source: AMsMyM4KXJ2MlU8uJdcg/31skmTZciBaJAm9dGDzpXsimxBLfYQrpN6veJNIvTuoeeINPpRin+aQ/w==
X-Received: by 2002:a05:6512:31d5:b0:498:f3dc:dd2 with SMTP id j21-20020a05651231d500b00498f3dc0dd2mr1451559lfe.101.1664462728238;
        Thu, 29 Sep 2022 07:45:28 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u11-20020ac243cb000000b00497ad8e6d07sm801754lfl.222.2022.09.29.07.45.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Sep 2022 07:45:27 -0700 (PDT)
Message-ID: <4ddabe3a-9f55-2a6a-c1c1-ccc3fc74e98a@linaro.org>
Date:   Thu, 29 Sep 2022 16:45:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v1 00/30] Basic StarFive JH7110 RISC-V SoC support
Content-Language: en-US
To:     Hal Feng <hal.feng@linux.starfivetech.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        linux-kernel@vger.kernel.org
References: <20220929143225.17907-1-hal.feng@linux.starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220929143225.17907-1-hal.feng@linux.starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/09/2022 16:31, Hal Feng wrote:

> This series is also available at 
> https://github.com/hal-feng/linux/commits/visionfive2-minimal
> 
> [1] https://www.cnx-software.com/2022/08/23/starfive-visionfive-2-quad-core-risc-v-sbc-linux/
> [2] https://wiki.rvspace.org/
> 
> Emil Renner Berthing (17):
>   dt-bindings: riscv: Add StarFive JH7110 bindings
>   dt-bindings: timer: Add StarFive JH7110 clint
>   dt-bindings: interrupt-controller: Add StarFive JH7110 plic
>   dt-bindings: sifive-l2-cache: Support StarFive JH71x0 SoCs
>   soc: sifive: l2 cache: Convert to platform driver
>   soc: sifive: l2 cache: Add StarFive JH71x0 support
>   reset: starfive: jh7100: Use 32bit I/O on 32bit registers
>   dt-bindings: reset: Add StarFive JH7110 reset definitions
>   clk: starfive: Factor out common clock driver code
>   dt-bindings: clock: Add StarFive JH7110 system clock definitions
>   dt-bindings: clock: Add starfive,jh7110-clkgen-sys bindings
>   clk: starfive: Add StarFive JH7110 system clock driver
>   dt-bindings: clock: Add StarFive JH7110 always-on definitions
>   dt-bindings: clock: Add starfive,jh7110-clkgen-aon bindings
>   clk: starfive: Add StarFive JH7110 always-on clock driver
>   RISC-V: Add initial StarFive JH7110 device tree
>   RISC-V: Add StarFive JH7110 VisionFive2 board device tree

Where is the rest of patches? Lists got only 5 of them. Anyway this is a
bit too big patchset. Split per subsystem.

Best regards,
Krzysztof

