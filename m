Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46614577D08
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 10:02:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233392AbiGRICg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 04:02:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233272AbiGRICg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 04:02:36 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CA01FD15
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 01:02:35 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id az2-20020a05600c600200b003a301c985fcso6581189wmb.4
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 01:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=Bb5/lM+GRxAa42IupCRmP1fczOrPwTmyAqspZ+OTEr0=;
        b=lIK4VnICjYO/FSib0CuiP0Ty9FS5V5HeSDTRVvHSE3kEBDtBt5kncpqJdVdp88rCVE
         r5SPVF6BkPrnsK7gINwsbCRAobI10eFBcnvN/gNv8bnpeFRQ3Vwyb8kJthUwOV1EbfdC
         hAcZ3rSloUFp05Eb0qLFzV3sfqMqpqrTgyn9w6yUsLoSsiEGEahnTzTgiF6X6/dT/xdl
         oDqt3Ho+MhXxW8jBNDRiiHQC/abKQm67PqGiYX862DRrZNLhW3kllGOQ0HRfzE7xFKNq
         o9HF+2uRA8OIIcNuN+5cuVwhEQ77MrPXJzGDFGoORH2s9ICWlnoBNq6dbZ+xUTzQXYwp
         5IqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=Bb5/lM+GRxAa42IupCRmP1fczOrPwTmyAqspZ+OTEr0=;
        b=r0jMA3JYIOMLZfQkflXXBs0hyznReiix8GL1YHIoNITsmvputQAHSpnNw/wF6Zn0fB
         g5IR7sRm1sC39vlAerozVdVz7BD9OTf6aUC7vYY5DolgFd0YjtdYgulqS1kXLjDcOB/a
         4o624sJr+4jymzjl5gh7p9cTJVDWR4uqRXH7kFB1Wo/axtEA8KymxmUFfZUODYaMm/4P
         E1zTDX6ZkzNtGfZPQag7aO8IoFOE/zbEKw8b8KgRtO4PlBLntYMCIvdgmLfpHPBXwKR4
         cPnHb5Ir5goyNOxl6lUVyVCiMPCEJYbIX6wQFw+piTW3fST09hFDYlj+aAb9+Ifc//Dx
         eTSQ==
X-Gm-Message-State: AJIora88vG5r/4g3w8w6xZpvDm5adOUVDMDtemSvgPPurLPHWL3idXTT
        VNFQLycwVbjCbjE/m9Uqc1IphA==
X-Google-Smtp-Source: AGRyM1uJQtTmoxMAsdym6wWB8qaOW4x9WJFAjInH6TcNkN08gGgfGVZN73TTqZ53xQV1tJy7SHs8rA==
X-Received: by 2002:a05:600c:4ece:b0:3a3:1c7d:daaf with SMTP id g14-20020a05600c4ece00b003a31c7ddaafmr2355238wmq.181.1658131353926;
        Mon, 18 Jul 2022 01:02:33 -0700 (PDT)
Received: from ?IPV6:2001:861:44c0:66c0:a2b7:375c:fabd:3626? ([2001:861:44c0:66c0:a2b7:375c:fabd:3626])
        by smtp.gmail.com with ESMTPSA id d14-20020adffd8e000000b0021d6a23fdf3sm10130704wrr.15.2022.07.18.01.02.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jul 2022 01:02:33 -0700 (PDT)
Message-ID: <050c3f94-5c65-d745-ffe7-6035e55a372f@baylibre.com>
Date:   Mon, 18 Jul 2022 10:02:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH] Add MagicBox M16S support
Content-Language: en-US
To:     Zhang Ning <zhangn1985@qq.com>, robh+dt@kernel.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
References: <tencent_5FC75850BB8ECD9374E98461C38C41CAC506@qq.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
In-Reply-To: <tencent_5FC75850BB8ECD9374E98461C38C41CAC506@qq.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 12/07/2022 16:24, Zhang Ning wrote:
> MagicBox M16S or MagicBox 3Pro is popular Tv box in China.
> 
> it's gxm_q201_v1 according u-boot log.
> and it's almost same as Q201 reference design.
> 
> add a simple dts to support this Tv box.
> 
> Signed-off-by: Zhang Ning <zhangn1985@qq.com>
> ---
>   arch/arm64/boot/dts/amlogic/Makefile          |  1 +
>   .../dts/amlogic/meson-gxm-magicbox-m16s.dts   | 20 +++++++++++++++++++
>   2 files changed, 21 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/amlogic/meson-gxm-magicbox-m16s.dts
> 
> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
> index 8773211df50e..e0907fb41829 100644
> --- a/arch/arm64/boot/dts/amlogic/Makefile
> +++ b/arch/arm64/boot/dts/amlogic/Makefile
> @@ -44,6 +44,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905x-libretech-cc.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905x-nexbox-a95x.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905x-p212.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-gxm-khadas-vim2.dtb
> +dtb-$(CONFIG_ARCH_MESON) += meson-gxm-magicbox-m16s.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-gxm-mecool-kiii-pro.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-gxm-minix-neo-u9h.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-gxm-nexbox-a1.dtb
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-magicbox-m16s.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-magicbox-m16s.dts
> new file mode 100644
> index 000000000000..be543d65a529
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxm-magicbox-m16s.dts
> @@ -0,0 +1,20 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2022 Zhang Ning <zhangn1985@qq.com>
> + */
> +
> +/dts-v1/;
> +
> +#include "meson-gxm.dtsi"
> +#include "meson-gx-p23x-q20x.dtsi"
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/leds/common.h>
> +
> +/ {
> +	compatible = "magicbox,m16s", "amlogic,s912", "amlogic,meson-gxm";
> +	model = "MagicBox M16S";
> +};

The compatible should be documented in the DT bindings in:
Documentation/devicetree/bindings/arm/amlogic.yaml

> +&ethmac {
> +        phy-mode = "rmii";
> +        phy-handle = <&internal_phy>;
> +};

Is the sd_emmc_a change incompatible with the M16S ?

Neil
