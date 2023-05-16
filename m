Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB4D7704C1C
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 13:16:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232869AbjEPLQ6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 07:16:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232937AbjEPLQq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 07:16:46 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFA157AA8
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 04:16:21 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3f50020e0f8so22208965e9.0
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 04:16:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20221208.gappssmtp.com; s=20221208; t=1684235752; x=1686827752;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Lq5IsEAkaPSiujnXqSyVdfrsJWc6r8BwGUnAVEvmYL4=;
        b=UyL7HlDV6EEynWLkR4v39oLJb9d7VETOD2ndVNLPS/YRT8mBHnJK3d6z8PUN1gUiqt
         7jxjFLhrv9EQDqUZWH/dtAJgbpVwBzGUlSrCYLT9DmnLu1r72kEGVCCsLHFc52Hcn+YT
         fIuBZVxZMykXs8876T7DtqMDGntAXL+xXqvXGfj2bm7zrUoBb9icwcJD5Z8eoIUHW3Wo
         cFikfQhkZ5SMzqa7K2cphqx7eIZM3TvrKmhFvyt18QQ4SvdP5ZJDNvaISMGfs2sdcaG6
         k029fUwHjRkX4bxtswsm+OGlq2cpgzGK6nX9/MSH1R4BxhIFCuEGvH+c+qlpW/zatx16
         QDIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684235752; x=1686827752;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Lq5IsEAkaPSiujnXqSyVdfrsJWc6r8BwGUnAVEvmYL4=;
        b=DXMM4MBnXNZwOO9Ch+B7AdOQu3fiUOH6SO9idBmkrrzgyqg5N26EZxHmvH02uGv7ZN
         YyAuMDFVF7W4w1OpG9M2EWKT70pyfX+cdqymUQgKWcgMh5XrxMRqm7pkYtZW+dwMmSU7
         G4K4mApyjE9ajODjNcvhVfpjPv/E1avwqXBeHY25KjUuNvj37bDSfwDn7ye1NqnVekhT
         +w1juqTvoyQzIhaJz7DmmPvl6zVpUWh1TEAMVVk30iD1Nqs7olOyj/DHHmaPhBokL5WB
         /H3wxXvbS76W+OQvQznLDlxrNQEOL6JNPnCvq4rnBBlv4P+TWBwInAT7BYW3ZBuoyXdq
         he5Q==
X-Gm-Message-State: AC+VfDwQyIvYJ9QNgli8W21HN/FHnolH5lYYm2rHyQoGO7jmAPyzTwiG
        /Qo6hj/jVB0tqbLdBFYofsSU4w==
X-Google-Smtp-Source: ACHHUZ7MhAGxaKlB7sDAllgMYwa5yhZlRhNyICUoPhaYvhVY9QjxAvEKbH/ex/vaZEXckVms9uS6ow==
X-Received: by 2002:adf:decf:0:b0:307:cdfb:b7af with SMTP id i15-20020adfdecf000000b00307cdfbb7afmr13978591wrn.19.1684235752087;
        Tue, 16 May 2023 04:15:52 -0700 (PDT)
Received: from [192.168.0.105] (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id k9-20020a05600c1c8900b003f4283f5c1bsm35579049wms.2.2023.05.16.04.15.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 04:15:51 -0700 (PDT)
Message-ID: <3c1de0a9-6843-7378-4ba7-ff483599f8fc@monstr.eu>
Date:   Tue, 16 May 2023 13:15:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: xilinx: Use zynqmp prefix for SOM dt overlays
Content-Language: en-US
To:     Michal Simek <michal.simek@amd.com>, linux-kernel@vger.kernel.org,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <49c1b8c992929610ba17b9c6edf5d40d4b28d2ed.1683033163.git.michal.simek@amd.com>
From:   Michal Simek <monstr@monstr.eu>
In-Reply-To: <49c1b8c992929610ba17b9c6edf5d40d4b28d2ed.1683033163.git.michal.simek@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 5/2/23 15:12, Michal Simek wrote:
> U-Boot is using zynqmp- prefix to compose DT name for board detection
> that's why also generate DT in this format in the kernel.
> 
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> ---
> 
>   arch/arm64/boot/dts/xilinx/Makefile | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/xilinx/Makefile b/arch/arm64/boot/dts/xilinx/Makefile
> index 4e159540d031..686d50752b00 100644
> --- a/arch/arm64/boot/dts/xilinx/Makefile
> +++ b/arch/arm64/boot/dts/xilinx/Makefile
> @@ -21,12 +21,12 @@ dtb-$(CONFIG_ARCH_ZYNQMP) += zynqmp-zcu111-revA.dtb
>   dtb-$(CONFIG_ARCH_ZYNQMP) += zynqmp-sm-k26-revA.dtb
>   dtb-$(CONFIG_ARCH_ZYNQMP) += zynqmp-smk-k26-revA.dtb
>   
> -sm-k26-revA-sck-kv-g-revA-dtbs := zynqmp-sm-k26-revA.dtb zynqmp-sck-kv-g-revA.dtbo
> -sm-k26-revA-sck-kv-g-revB-dtbs := zynqmp-sm-k26-revA.dtb zynqmp-sck-kv-g-revB.dtbo
> -smk-k26-revA-sm-k26-revA-sck-kv-g-revA-dtbs := zynqmp-smk-k26-revA.dtb zynqmp-sck-kv-g-revA.dtbo
> -smk-k26-revA-sm-k26-revA-sck-kv-g-revB-dtbs := zynqmp-smk-k26-revA.dtb zynqmp-sck-kv-g-revB.dtbo
> +zynqmp-sm-k26-revA-sck-kv-g-revA-dtbs := zynqmp-sm-k26-revA.dtb zynqmp-sck-kv-g-revA.dtbo
> +zynqmp-sm-k26-revA-sck-kv-g-revB-dtbs := zynqmp-sm-k26-revA.dtb zynqmp-sck-kv-g-revB.dtbo
> +zynqmp-smk-k26-revA-sck-kv-g-revA-dtbs := zynqmp-smk-k26-revA.dtb zynqmp-sck-kv-g-revA.dtbo
> +zynqmp-smk-k26-revA-sck-kv-g-revB-dtbs := zynqmp-smk-k26-revA.dtb zynqmp-sck-kv-g-revB.dtbo
>   
> -dtb-$(CONFIG_ARCH_ZYNQMP) += sm-k26-revA-sck-kv-g-revA.dtb
> -dtb-$(CONFIG_ARCH_ZYNQMP) += sm-k26-revA-sck-kv-g-revB.dtb
> -dtb-$(CONFIG_ARCH_ZYNQMP) += smk-k26-revA-sm-k26-revA-sck-kv-g-revA.dtb
> -dtb-$(CONFIG_ARCH_ZYNQMP) += smk-k26-revA-sm-k26-revA-sck-kv-g-revB.dtb
> +zynqmp-sm-k26-revA-sck-kr-g-revA-dtbs := zynqmp-sm-k26-revA.dtb zynqmp-sck-kr-g-revA.dtbo
> +zynqmp-sm-k26-revA-sck-kr-g-revB-dtbs := zynqmp-sm-k26-revA.dtb zynqmp-sck-kr-g-revB.dtbo
> +zynqmp-smk-k26-revA-sck-kr-g-revA-dtbs := zynqmp-smk-k26-revA.dtb zynqmp-sck-kr-g-revA.dtbo
> +zynqmp-smk-k26-revA-sck-kr-g-revB-dtbs := zynqmp-smk-k26-revA.dtb zynqmp-sck-kr-g-revB.dtbo

Applied.
M

-- 
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP/Versal ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal/Versal NET SoCs
TF-A maintainer - Xilinx ZynqMP/Versal/Versal NET SoCs
