Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A036512C75
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 09:13:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241359AbiD1HQo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 03:16:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232132AbiD1HQm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 03:16:42 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 100EA996A5
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 00:13:29 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id l18so7680489ejc.7
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 00:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=iGqqNXodCdUDh7H9P3dABdV87d92uw3GOCws81glz0A=;
        b=bZSDYZK3nZ8gNy0m2zOk1wfcaP/wBfAJTWrD4X7zoB+oJBYlWudyPmULtS1NYm4mxp
         7HfiUBgkOKIwAzB4l4kApY3BoLGk/ZoyLxYc7OtY4Whi+KY/JkuV3ZOkSXu/28vUE/0D
         3v/J3lI7c5WbaegYPuiWYmUX/pR/+IiERbtnl07Ek3QmqFEeA6DrJnzri8MhZzRsePQ2
         NQII16PWfwWBGz9/z3Q5wfP/Ng2BvuX7NxP8ZzvtU+aQ4JFFPKB2A8eJR61JyS9BAr+B
         VWKOYXYjyzGazWswq8q7jjB6GWV27+/fCtbo+sGDf7xKX1cuHHekM1EQEMVSicse3rjh
         ywFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=iGqqNXodCdUDh7H9P3dABdV87d92uw3GOCws81glz0A=;
        b=RToDrQfgkWqB8mNNiVdUwgzXuTCkAba+3BO4AGnBX9x8kgPkNt0q8Osc5ZulgdYI7e
         PA0RF/d1Hsf3ZW7AkT2uwTqUuNEDGYm7f3h3rXFMB5JQBwexPifjEiLSDGLwtHDkfNL/
         IUCZYdC1eq+cRmaS7QPGCjTmvKpA1xZkrK2ol8y7YpyBDVo8/xbyuTnfRQaGjjepq7go
         wUuNJLWzZy40LVNw3exWFndJwEvJZokN3ZV8BbrGhHIyVC+PRBC3BBChAQJ0pKgst81t
         fZ5fy64GilJFCDXLJuimxIJlL4obKeX06XRMOjWMMUxVy2lwQ34KS8Xo7xrzjJVPVyZj
         oTUA==
X-Gm-Message-State: AOAM533EJAPU5BuXdVNw7FiQbTyIYi44RpUqwNkAOYGLmZwtQacn1Of0
        sk/CygEOXiot+MyN02JK0HM1DQ==
X-Google-Smtp-Source: ABdhPJzklgMRo6K6Lgff0kJeIZiKiKNlkH0bcxPoFqazCmfw8oQiB7HgE78X2TJm3gxs/k62MWTUpg==
X-Received: by 2002:a17:907:e88:b0:6ef:bce9:ff6a with SMTP id ho8-20020a1709070e8800b006efbce9ff6amr32059892ejc.275.1651130007604;
        Thu, 28 Apr 2022 00:13:27 -0700 (PDT)
Received: from [192.168.0.160] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id k26-20020a17090666da00b006ef79b595e9sm7946644ejp.80.2022.04.28.00.13.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Apr 2022 00:13:26 -0700 (PDT)
Message-ID: <a1d5cec3-b883-319c-c413-b09cca1fa518@linaro.org>
Date:   Thu, 28 Apr 2022 09:13:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC RFT PATCH v1 1/1] ARM: orion5x: convert D-Link DNS-323 to
 the Device Tree
Content-Language: en-US
To:     Mauri Sandberg <maukka@ext.kapsi.fi>, soc@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     arnd@arndb.de, olof@lixom.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, andrew@lunn.ch,
        sebastian.hesselbarth@gmail.com
References: <20220427162123.110458-1-maukka@ext.kapsi.fi>
 <20220427162123.110458-2-maukka@ext.kapsi.fi>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220427162123.110458-2-maukka@ext.kapsi.fi>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/04/2022 18:21, Mauri Sandberg wrote:
> Convert D-Link DNS-323 to use the device tree and remove associated
> mach file.
> 

Thank you for your patch. There is something to discuss/improve.

> Signed-off-by: Mauri Sandberg <maukka@ext.kapsi.fi>
> ---
>  arch/arm/boot/dts/Makefile                   |   3 +
>  arch/arm/boot/dts/orion5x-dlink-dns323.dtsi  | 217 ++++++
>  arch/arm/boot/dts/orion5x-dlink-dns323a1.dts |  59 ++
>  arch/arm/boot/dts/orion5x-dlink-dns323b1.dts |  38 +
>  arch/arm/boot/dts/orion5x-dlink-dns323c1.dts |  80 ++
>  arch/arm/mach-orion5x/Kconfig                |   6 +-
>  arch/arm/mach-orion5x/Makefile               |   2 +-
>  arch/arm/mach-orion5x/board-dns323.c         | 118 +++
>  arch/arm/mach-orion5x/board-dt.c             |   3 +
>  arch/arm/mach-orion5x/common.h               |   6 +
>  arch/arm/mach-orion5x/dns323-setup.c         | 724 -------------------
>  11 files changed, 528 insertions(+), 728 deletions(-)
>  create mode 100644 arch/arm/boot/dts/orion5x-dlink-dns323.dtsi
>  create mode 100644 arch/arm/boot/dts/orion5x-dlink-dns323a1.dts
>  create mode 100644 arch/arm/boot/dts/orion5x-dlink-dns323b1.dts
>  create mode 100644 arch/arm/boot/dts/orion5x-dlink-dns323c1.dts
>  create mode 100644 arch/arm/mach-orion5x/board-dns323.c
>  delete mode 100644 arch/arm/mach-orion5x/dns323-setup.c

DTS goes separately.

> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 7c16f8a2b738..c7c5c0b6c843 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -949,6 +949,9 @@ dtb-$(CONFIG_SOC_DRA7XX) += \
>  	dra71-evm.dtb \
>  	dra76-evm.dtb
>  dtb-$(CONFIG_ARCH_ORION5X) += \
> +	orion5x-dlink-dns323a1.dtb \
> +	orion5x-dlink-dns323b1.dtb \
> +	orion5x-dlink-dns323c1.dtb \
>  	orion5x-kuroboxpro.dtb \
>  	orion5x-lacie-d2-network.dtb \
>  	orion5x-lacie-ethernet-disk-mini-v2.dtb \
> diff --git a/arch/arm/boot/dts/orion5x-dlink-dns323.dtsi b/arch/arm/boot/dts/orion5x-dlink-dns323.dtsi
> new file mode 100644
> index 000000000000..2b033d37cbf8
> --- /dev/null
> +++ b/arch/arm/boot/dts/orion5x-dlink-dns323.dtsi
> @@ -0,0 +1,217 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2022 Mauri Sandberg <maukka@ext.kapsi.fi>
> + *
> + */
> +
> +/ {
> +	model = "D-Link DNS-323";
> +	compatible = "dlink,dns323", "marvell,orion5x";
> 

You need to also document the compatibles in bindings file for boards.
It would be nice to convert
Documentation/devicetree/bindings/arm/marvell/marvell,orion5x.txt to DT
Schema (see armada-7k-8k.yaml for example), but it is not a requirement.


Best regards,
Krzysztof
