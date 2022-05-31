Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23E62538E7B
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 12:09:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243392AbiEaKJJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 06:09:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233161AbiEaKJI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 06:09:08 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36F738AE55
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 03:09:06 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id b8so8853429edf.11
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 03:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BDMy+QvuwpMJoJZmNlqonBPh8rUerQxjy9AQ0pCJoD0=;
        b=bsHXPWMHEwqDEladOBAHwYSJDdQ4TQ2X65eASv93zj6cUOA9TJuK2ta0tgOzpFh8Tr
         0VUOVCHVuuIxZVj8AXpO7I8rZbrKrAyvTh5LNDHyDIZs2wGv668t9fBbQxNqOAqH7+67
         +8jTKNmhEf25i+0XpczMH/MVUZnm1Z50+c2CAOBZ40JjlxEcARj3uNDF+JS8xvdnp2cH
         n+AIQlXBt/+Z1Eaz66/z8OYtdZTnrq0vGrSMyK80wq1DIugSoD3GoneXoVHHnhBOzHf4
         DzWSO6G1Tt20n7uPaH3o94dqLbLgo1c9YC2Pa7Q1LU08xAWAHvjf+9naY9rfDm6NIy0F
         6A/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BDMy+QvuwpMJoJZmNlqonBPh8rUerQxjy9AQ0pCJoD0=;
        b=HDDan1jiZBGizwXsmle7jkZDx8QKpVdlc06S1TDML5zNLQUn2Tgwm4C61NgXaYJzHx
         75wZtH0hQ2zHDo+lhi+KUcC3v0XATYjefVUmjx3+3RmEjAGtCVwo+wLO274jUt46b0l3
         l16PmpjurptMXSvRhV31KitxXeMe30pQB1n5DBcUp7Q2DxlW3GLPCxMDssVqOUeFmt25
         1ccGMDbq9r6kIDAbMA+F8+Wtiei1A+yu5s9RRFOCfRGvj5wZ6uXYui+ffSbL+3azpg1p
         O7EidfZw786PHr3NG4/3zvuJmN85cr7iLLjG42Qk71mbxhQ2K5k5x+ej/MhVOuqkqEkK
         uvLQ==
X-Gm-Message-State: AOAM531POoMBu0HK58EMifi+pUTqRllILfWI/u4ZKthCHd6fYKotPp92
        xBgw5AJ64/6S9hJpx7ky7NDqTw==
X-Google-Smtp-Source: ABdhPJxYrWO4cU6BubVeecPRztLNlr3PWrEQD2QBNVKkjOznU77Nqd6m6SzwBXLCLBE/Q6oRO30xeg==
X-Received: by 2002:a05:6402:330:b0:42d:cd47:89f3 with SMTP id q16-20020a056402033000b0042dcd4789f3mr12175779edw.301.1653991744792;
        Tue, 31 May 2022 03:09:04 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u10-20020a50950a000000b0042617ba63a5sm8019509eda.47.2022.05.31.03.09.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 03:09:04 -0700 (PDT)
Message-ID: <a449d475-132e-f8b2-8822-69aa3ab6bf9c@linaro.org>
Date:   Tue, 31 May 2022 12:09:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 6/6] arm64: dts: fsd: add ufs device node
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
        avri.altman@wdc.com, bvanassche@acm.org,
        martin.petersen@oracle.com, chanho61.park@samsung.com,
        pankaj.dubey@samsung.com, linux-fsd@tesla.com,
        Bharat Uppal <bharat.uppal@samsung.com>
References: <20220531012220.80563-1-alim.akhtar@samsung.com>
 <CGME20220531012400epcas5p1c30b75a928097bd19855dcd0d929ff10@epcas5p1.samsung.com>
 <20220531012220.80563-7-alim.akhtar@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531012220.80563-7-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2022 03:22, Alim Akhtar wrote:
> Adds FSD ufs device node and enable the same
> for fsd board. This also adds the required
> pin configuration for the same.
> 
> Cc: linux-fsd@tesla.com
> Signed-off-by: Bharat Uppal <bharat.uppal@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  arch/arm64/boot/dts/tesla/fsd-evb.dts      |  4 +++
>  arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi | 14 +++++++++++
>  arch/arm64/boot/dts/tesla/fsd.dtsi         | 29 ++++++++++++++++++++++
>  3 files changed, 47 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/tesla/fsd-evb.dts b/arch/arm64/boot/dts/tesla/fsd-evb.dts
> index 5af560c1b5e6..1db6ddf03f01 100644
> --- a/arch/arm64/boot/dts/tesla/fsd-evb.dts
> +++ b/arch/arm64/boot/dts/tesla/fsd-evb.dts
> @@ -37,3 +37,7 @@ &fin_pll {
>  &serial_0 {
>  	status = "okay";
>  };
> +
> +&ufs {
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi b/arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi
> index d4d0cb005712..387a41e251d5 100644
> --- a/arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi
> +++ b/arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi
> @@ -50,6 +50,20 @@ gpf5: gpf5-gpio-bank {
>  		interrupt-controller;
>  		#interrupt-cells = <2>;
>  	};
> +
> +	ufs_rst_n: ufs-rst-n-pins {
> +		samsung,pins = "gpf5-0";
> +		samsung,pin-function = <EXYNOS_PIN_FUNC_2>;
> +		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
> +		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV2>;
> +	};
> +
> +	ufs_refclk_out: ufs-refclk-out-pins {
> +		samsung,pins = "gpf5-1";
> +		samsung,pin-function = <EXYNOS_PIN_FUNC_2>;
> +		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
> +		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV2>;
> +	};
>  };
>  
>  &pinctrl_peric {
> diff --git a/arch/arm64/boot/dts/tesla/fsd.dtsi b/arch/arm64/boot/dts/tesla/fsd.dtsi
> index af39655331de..a5972e9a2585 100644
> --- a/arch/arm64/boot/dts/tesla/fsd.dtsi
> +++ b/arch/arm64/boot/dts/tesla/fsd.dtsi
> @@ -740,6 +740,35 @@ timer@10040000 {
>  			clocks = <&fin_pll>, <&clock_imem IMEM_MCT_PCLK>;
>  			clock-names = "fin_pll", "mct";
>  		};
> +
> +		ufs: ufs@15120000 {
> +			compatible = "tesla,fsd-ufs";
> +			reg = <0x0  0x15120000 0x0 0x200>,  /* 0: HCI standard */

Double space after 0x0

> +				<0x0 0x15121100 0x0 0x200>,  /* 1: Vendor specified */

Please align with opening < in line before.

> +				<0x0 0x15110000 0x0 0x8000>,  /* 2: UNIPRO */
> +				<0x0 0x15130000 0x0 0x100>;  /* 3: UFS protector */
> +			reg-names = "hci", "vs_hci", "unipro", "ufsp";
> +			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clock_fsys0 UFS0_TOP0_HCLK_BUS>,
> +				<&clock_fsys0 UFS0_TOP0_CLK_UNIPRO>;

Also align.


Best regards,
Krzysztof
