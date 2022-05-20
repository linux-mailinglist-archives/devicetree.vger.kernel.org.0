Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69F9A52EA21
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 12:46:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230100AbiETKqc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 06:46:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348254AbiETKqb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 06:46:31 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6B6F1C92C
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 03:46:29 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id u7so8501796ljd.11
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 03:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=NpVWvREIh58/LHu13eUchb+fJEVBqK/3PdnkHXlwMgE=;
        b=SZwKyWRAArJ9d5hGnCd+KJRQ4gwh9P0wHi5G6rlL/9KC5j7YCGSYbrcRAxjJth0yAA
         oPXwWx1dfUB8EXqJsIKK0kZfn6CZSMcHiKf7RDBzNZbKi0zc18nAoADeTpob/TVSIM9V
         UIC/8hQu9zLuAY3BALIFAC7Ay6JFoX9dNvKKPdsXxL2yn+r+ybOLocSPfl9OR/d1zZAq
         SiobhJ/nV3TAk3yPaLCqS6sNycjgIeP42Vr9WYpCPQyJEVzGLw6bVbcjdJPMCpMVmtuQ
         FnEI26iVD3jOeyVkpZlhuqOzJherI6A3SfXO7wc8a4ccx8KTOmdjoc0fl9JYi6mk+Ak5
         qHTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=NpVWvREIh58/LHu13eUchb+fJEVBqK/3PdnkHXlwMgE=;
        b=ZhQDCEFqIhleX06kt+SxgoqCu2bad1b6tbJL7GXu+ygu9LgyawZ7jqxH9jC/pirUFG
         v/DIuS9jME8ePZ5O7iqj5jwHN8bMTLiTlDLEUNp0Bh7PTN3GWK7HEpTmm1TzWEWsGVR0
         sdh+49GZVsEgxOgxtbp/mb8uejZN7gh8XMGjoHIwLRW9y2RMp/iBdl01ApobJks6TS8d
         4DuyC67ZcAWWoIfJhN18pZb1TlLlyw8wplUPFkB27TRjkKBm2Dkw+m/AB7HAFc3hJYQH
         mN2mu4lXZsFlxDFv7rewV/E8alM79mNd9llWPrH7veNniLAU6pvORN25H/dAF4nEb2RP
         ML1g==
X-Gm-Message-State: AOAM531OeSjkyl+ALftq8guh0+KXKCQRSUFHYfYWnuB4s5/ok6w7Vvka
        d6ZBS1Wk1gMMf8BKXpXZK8D99Q==
X-Google-Smtp-Source: ABdhPJzEYbhH3kFvrJ4gGx6P3qn8f2dClOO6VYa+DUtkKv4APbXFg/fHqfFNqceqseNkigxPmf2rtw==
X-Received: by 2002:a2e:804e:0:b0:253:cb15:38ba with SMTP id p14-20020a2e804e000000b00253cb1538bamr5297526ljg.204.1653043588322;
        Fri, 20 May 2022 03:46:28 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x9-20020a056512078900b0047255d211f9sm611468lfr.296.2022.05.20.03.46.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 May 2022 03:46:27 -0700 (PDT)
Message-ID: <13662a9c-19c6-cb3d-6073-c87835a3c95d@linaro.org>
Date:   Fri, 20 May 2022 12:46:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH] arm64: dts: exynoautov9: add syscon reboot/reboot_mode
 support
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Alim Akhtar <alim.akhtar@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
References: <CGME20220520045124epcas2p12235472b7e9f7588003a7c8c238e8866@epcas2p1.samsung.com>
 <20220520045210.55132-1-chanho61.park@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220520045210.55132-1-chanho61.park@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/05/2022 06:52, Chanho Park wrote:
> Reboot of exynosautov9 SoC can be handled by setting the bit(
> SWRESET_SYSTEM[1]) of SYSTEM_CONFIGURATION register(PMU + 0x3a00).
> syscon-reboot-mode can be used to indicate the reboot mode for
> bootloader. SYSIP_DAT0 register(PMU + 0x810) will not be cleared after
> reboot so bootloader can enter the boot mode according to the value.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  arch/arm64/boot/dts/exynos/exynosautov9.dtsi | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
> index 0ce46ec5cdc3..d99e53406ee0 100644
> --- a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
> +++ b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
> @@ -312,6 +312,22 @@ pinctrl_peric1: pinctrl@10830000 {
>  		pmu_system_controller: system-controller@10460000 {
>  			compatible = "samsung,exynos7-pmu", "syscon";
>  			reg = <0x10460000 0x10000>;
> +
> +			reboot: syscon-reboot {
> +				compatible = "syscon-reboot";
> +				regmap = <&pmu_system_controller>;
> +				offset = <0x3a00>; /* SYSTEM_CONFIGURATION */
> +				value = <0x2>;
> +				mask = <0x2>;
> +			};
> +
> +			reboot_mode: syscon-reboot-mode {

Node name: just "reboot-mode"

> +				compatible = "syscon-reboot-mode";
> +				offset = <0x810>; /* SYSIP_DAT0 */
> +				mode-bootloader = <0xfc>;
> +				mode-fastboot = <0xfa>;
> +				mode-recovery = <0xff>;

These are magic values understood by firmware, so please add a header
for them (something like include/dt-bindings/soc/rockchip,boot-mode.h
but with some prefixes like EXYNOSAUTOV9_BOOT_FASTBOOT))

> +			};
>  		};
>  
>  		syscon_fsys2: syscon@17c20000 {


Best regards,
Krzysztof
