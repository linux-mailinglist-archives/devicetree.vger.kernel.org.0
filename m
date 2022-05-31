Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65FFE5391B5
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 15:21:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344707AbiEaNV1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 09:21:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344713AbiEaNV0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 09:21:26 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEFFB98086
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 06:21:23 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id jx22so26512803ejb.12
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 06:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=zYX6/jvx2pbywY/slcBL5U+3fmGGoOywbgeBC8Ifd/I=;
        b=wMqg8bGVHe9NXDwDJ7uLWBrELFWky9hIMwFig+bFGTRfrZj2Zm6Q4UaNNudpBVbYoa
         hrvQd8xAgR8a8C5tA6U0LjHgJADuvXhyDmsaIK/2Lr+v8315787Sti8rsJP0ZWyxM7jc
         dbag/XVKvYcrZ6MQtl9+BrhOyJeH5HwiIJm46j5GkRC/CIT5eErh2ACiKBn5gT2zrA8/
         RrKdS50ASrzMKRvbcgIokTuYBX4mXCGysyBmbGJ9OWFo5d7FsyA5zKp0BjCbiYGydZ/j
         dlAuG5QznlzlVuLa9ZSWZNFsJnTKNlcM0AfdH7bHSqd7vIwf3XR8zEwY+m1EcwwbJ4kY
         MRUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=zYX6/jvx2pbywY/slcBL5U+3fmGGoOywbgeBC8Ifd/I=;
        b=At5D5R52D+DtsPgCzyJ7ZISdmGe5vOOxxhiTqHaJHKCtNbhv7x1znbMAf6BP3x+Y7/
         3sVKOiQp+3zUzykNeUhg0wy8V6xQqFthLnbosl3g1X/LvyEBYaQLwvsy8lZaiwF4k8bZ
         CT68pthIN7mXwrK3DlKIZzkdGSu9u05E4/ulffLtxH9ai9zgMNJ0EHTrNUryjVOsM8jQ
         EP4+vw3+QDmipWlUk2bpurzhW/NwOF14ohzYzwqX8v0vPWh57YHRrn5lIJInJm6yHJMm
         PpkcO3B/RzIlybuuAQvDY9jB7/uvU+gVHtl0cPLAO0rMivFN+GXwJdUiZnkB+UIgfCx6
         A7dg==
X-Gm-Message-State: AOAM531jlZ9oU56rpMFyc8Vi4YpwOrcfqhjvCTieoZbWOB0RxL4EgJDm
        +viKcnvek63BDu/HLuUlg35VJQ==
X-Google-Smtp-Source: ABdhPJxcswzON8g7Xj34rartxp6BsJC91ug76tqqMOFi30pmoud7LoGOS6GOOAgudOP0/jxWf+FqCw==
X-Received: by 2002:a17:906:a397:b0:6fe:a1e5:de70 with SMTP id k23-20020a170906a39700b006fea1e5de70mr49326619ejz.2.1654003282094;
        Tue, 31 May 2022 06:21:22 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id bm3-20020a170906c04300b006fe8bf56f53sm5074245ejb.43.2022.05.31.06.21.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 06:21:21 -0700 (PDT)
Message-ID: <5fc17d02-d28c-2ad2-8a8f-dfeaf6712d6f@linaro.org>
Date:   Tue, 31 May 2022 15:21:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 3/4] arm64: dts: exynosautov9: add secondary ufs devices
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20220531121913.48722-1-chanho61.park@samsung.com>
 <CGME20220531121922epcas2p428c51f13e61e06477d96ab4aa6d1377c@epcas2p4.samsung.com>
 <20220531121913.48722-4-chanho61.park@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531121913.48722-4-chanho61.park@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2022 14:19, Chanho Park wrote:
> Add ufs_1_phy and ufs_1 for secondary ufs hci controller and phy
> device.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  arch/arm64/boot/dts/exynos/exynosautov9.dtsi | 32 ++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
> index 3e23db8f09d9..c146271af477 100644
> --- a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
> +++ b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
> @@ -380,6 +380,17 @@ ufs_0_phy: ufs0-phy@17e04000 {
>  			status = "disabled";
>  		};
>  
> +		ufs_1_phy: ufs0-phy@17f04000 {

Node name: "phy" (or ufs-phy). The previous node also could be corrected.

> +			compatible = "samsung,exynosautov9-ufs-phy";
> +			reg = <0x17f04000 0xc00>;
> +			reg-names = "phy-pma";
> +			samsung,pmu-syscon = <&pmu_system_controller 0x72c>;
> +			#phy-cells = <0>;
> +			clocks = <&xtcxo>;
> +			clock-names = "ref_clk";
> +			status = "disabled";
> +		};
> +
>  		ufs_0: ufs0@17e00000 {
>  			compatible ="samsung,exynosautov9-ufs";
>  
> @@ -400,6 +411,27 @@ ufs_0: ufs0@17e00000 {
>  			samsung,sysreg = <&syscon_fsys2 0x710>;
>  			status = "disabled";
>  		};
> +
> +		ufs_1: ufs0@17f00000 {
> +			compatible ="samsung,exynosautov9-ufs";
> +
> +			reg = <0x17f00000 0x100>,  /* 0: HCI standard */
> +				<0x17f01100 0x410>,  /* 1: Vendor-specific */
> +				<0x17f80000 0x8000>,  /* 2: UNIPRO */
> +				<0x17de0000 0x2200>;  /* 3: UFS protector */

Align these please with first <> entry.

> +			reg-names = "hci", "vs_hci", "unipro", "ufsp";
> +			interrupts = <GIC_SPI 235 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cmu_fsys2 CLK_GOUT_FSYS2_UFS_EMBD1_ACLK>,
> +				 <&cmu_fsys2 CLK_GOUT_FSYS2_UFS_EMBD1_UNIPRO>;
> +			clock-names = "core_clk", "sclk_unipro_main";
> +			freq-table-hz = <0 0>, <0 0>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&ufs_rst_n_1 &ufs_refclk_out_1>;
> +			phys = <&ufs_1_phy>;
> +			phy-names = "ufs-phy";
> +			samsung,sysreg = <&syscon_fsys2 0x714>;
> +			status = "disabled";
> +		};
>  	};
>  };
>  


Best regards,
Krzysztof
