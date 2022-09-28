Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56AE95ED631
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 09:35:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233204AbiI1HfX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 03:35:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233686AbiI1HfL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 03:35:11 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42254D5760
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 00:34:55 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id s6so19067802lfo.7
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 00:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=W84wrHvVvAgWhyh1WS/eLy6/o7Le2iFXNrohu7GUsCk=;
        b=NBAnH1KSEUqlchKnxRsgUvFEv9abO5xjXfHwbhygSEOQVMkUlrbPqLu4kzyW/v5vkT
         hf9Z/UL6un8qpptuEiDHQmkzduE+XekrebEoYp6CwU3pQJKQ7M0jx33VZbjgBeUHWUlO
         xqwQ9yoNjMehBIQhzakLFglLgdkpNM8LJy24ygJ964lTnbV/OzJJEKPdi0oy8esg5M9q
         S7JJXnwOrxJS438SXJcPp+wyiqg88B4HjbwO2OZQjQUu3hTzfxxMU5ehFmZmv30IOjaX
         xwBUIa6xYf32/K2WPRsKOKlejej5lml/aDenDWAtLAt1xcpRhp4I+E/HfzLRAwmn8nFk
         O3zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=W84wrHvVvAgWhyh1WS/eLy6/o7Le2iFXNrohu7GUsCk=;
        b=LpJUZeVmjxOHafZ5rHplQJFy/ZZ/ydFVO2WpnAvkQImX6gT0wMwBRwuCvStqrA3nwG
         iU3jobHUwwE+JxI+am7JzBc3TZ6sCUduA0I1rlMG5XRDuyzzhtwb4hqb2e1AABQu4fFd
         DcV85rPuVyVkomEvXXhGnAjrNTi5TCgMEhskQc5cm1PlSxgqY1vn07pav/kC1vd1OeZp
         /eg9AAkK8QkvTTQi5sQAvH2G2H0OsAxqDki91yjFe37ZVwIrRxdT65ucB3NOIN6iDe9w
         QY9UNHEgmw8pjqKIvSwcxIF4O5pCigBX2D6wrc+O5fGOq4mfyeftQ7RUqjbabFmktzoH
         2dcA==
X-Gm-Message-State: ACrzQf05SoyANAyMRsmfBk9jBfH7czc1vKsmqSCLedkfZhPH/qsX6EOr
        2+3fSXiMAJJfXvO8XuNy14csHA==
X-Google-Smtp-Source: AMsMyM4s9FD4pbLqo1tYHW7wHCeJO/EhwQuexdGfirp3jEWQdNrKBFwJ9RvGgx9b18FtcGBH/PMTlw==
X-Received: by 2002:a05:6512:1325:b0:4a1:d80e:1cd5 with SMTP id x37-20020a056512132500b004a1d80e1cd5mr5194661lfu.497.1664350447109;
        Wed, 28 Sep 2022 00:34:07 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v9-20020a056512348900b0049465afdd38sm395786lfr.108.2022.09.28.00.34.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 00:34:06 -0700 (PDT)
Message-ID: <0e53c7c8-e04c-5a87-9703-02748b64e491@linaro.org>
Date:   Wed, 28 Sep 2022 09:34:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 02/13] arm64: dts: rockchip: Add Hardkernel ODROID-M1
 board
Content-Language: en-US
To:     Aurelien Jarno <aurelien@aurel32.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/Rockchip SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC support" 
        <linux-rockchip@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>
Cc:     Dongjin Kim <tobetter@gmail.com>
References: <20220926183727.1893566-1-aurelien@aurel32.net>
 <20220926183727.1893566-3-aurelien@aurel32.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220926183727.1893566-3-aurelien@aurel32.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/09/2022 20:37, Aurelien Jarno wrote:
> From: Dongjin Kim <tobetter@gmail.com>
> 
> This patch is to add a device tree for new board Hardkernel ODROID-M1
> based on Rockchip RK3568, includes basic peripherals -
> uart/eMMC/uSD/i2c and on-board ethernet.

Thank you for your patch. There is something to discuss/improve.


> 
> Signed-off-by: Dongjin Kim <tobetter@gmail.com>
> [aurelien@aurel32.net: addressed issues from initial review]
> Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3568-odroid-m1.dts    | 414 ++++++++++++++++++
>  2 files changed, 415 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index ef79a672804a..12e2ef73fe80 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -66,3 +66,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-cm4.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb

Mismatched order.

Best regards,
Krzysztof

