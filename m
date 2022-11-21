Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C92A9631DD2
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 11:10:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231254AbiKUKKa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 05:10:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231253AbiKUKKU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 05:10:20 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50326DF51
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 02:10:19 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id b3so18097406lfv.2
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 02:10:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yts7SFQTOzD/Zmg+pBx8VAiiYiBWh2/r7q0385trxog=;
        b=HIPCJCLb4vItCW6ypgokSruO/dw52ZPFFUzEkKdTzelE6YiuhqCaDNssRbwZFd3h1l
         x+ubADq1KAhDDWg9+y9JMPFNdKfgUdvS16KRlY0lByvvx2lrlJPbluLfK5ya3zQP5tVW
         XfyNq1V5XpMNeblDgRBPCDMi7tmTtI7CvgGQwPVhlgewPk6yd45Fjor/djLQu9OqmdN9
         v7C2svCocSZJWJonsqcSOlsZojaRAJioHQhndmnRSRYI2YrzfUW572nUr4CfDy2CkDMh
         QaDQTzgRLr5iJx59vyQGrYP9p523iU2UyigISbU2X2QxV6CVoTveZWsFy58fCaU450sK
         5CtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Yts7SFQTOzD/Zmg+pBx8VAiiYiBWh2/r7q0385trxog=;
        b=qVK6ld8fnbWXlQJVcDcLKwWAYoJVTUjcpOjlCkOQ3vBSDjZMvgwXpO0kKWa4gL6puf
         yswJonNnom3mK7a/rXphuDU3rba2ftTjIszEKufD2zVk9kWTkzm+PLcol2AIZULrzxSv
         P3g1LrW0FBGAEX2PuLzRXUbKTWwd0pQB7H6shhWnAhahgueAMyLILgv3DSNiAkL/bieX
         bn3Q4iqMb+esby4Kh+1lcneUQgzhJeovpiPTJpq0maTPGuYObaO3PDHifd/5QEYln4Vr
         DtEc78sUKMN5z1OWjLgY+oIv2LU21Qt7NIvvmF0Tuzm5M9f1+UXCRKMBog9hWa4USyso
         /X2A==
X-Gm-Message-State: ANoB5pkocBgDNPTYieCaWH1d3tGoSuMGan8REEtgRZo30XF2kF8zqPZv
        GWc0BNZ6JFCVhc+mIvQOUKeVLw==
X-Google-Smtp-Source: AA0mqf5GAJIM1z6ZAoGTvS5DKX4b9e6G7EJ/wZ8M/Mz9jOSEoYVWXxpxsOnBEgyrX2uxxAh9Fa4lZA==
X-Received: by 2002:a05:6512:708:b0:4a2:6d30:fef2 with SMTP id b8-20020a056512070800b004a26d30fef2mr367826lfs.324.1669025417695;
        Mon, 21 Nov 2022 02:10:17 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id m7-20020a056512358700b004b4b69af17dsm1961156lfr.214.2022.11.21.02.10.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 02:10:17 -0800 (PST)
Message-ID: <a712462b-5039-dfc2-b8c2-5a447128dc56@linaro.org>
Date:   Mon, 21 Nov 2022 11:10:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 6/7] riscv: dts: bouffalolab: add Sipeed M1S dock
 devicetree
Content-Language: en-US
To:     Jisheng Zhang <jszhang@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Jiri Slaby <jirislaby@kernel.org>
Cc:     linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20221120082114.3030-1-jszhang@kernel.org>
 <20221120082114.3030-7-jszhang@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221120082114.3030-7-jszhang@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/11/2022 09:21, Jisheng Zhang wrote:
> Sipeed manufactures a M1S system-on-module and dock board, add basic
> support for them.
> 
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> ---
>  arch/riscv/boot/dts/bouffalolab/Makefile      |  2 ++
>  .../boot/dts/bouffalolab/bl808-sipeed-m1s.dts | 30 +++++++++++++++++++
>  2 files changed, 32 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/bouffalolab/Makefile
>  create mode 100644 arch/riscv/boot/dts/bouffalolab/bl808-sipeed-m1s.dts
> 
> diff --git a/arch/riscv/boot/dts/bouffalolab/Makefile b/arch/riscv/boot/dts/bouffalolab/Makefile
> new file mode 100644
> index 000000000000..42e17e1a97bd
> --- /dev/null
> +++ b/arch/riscv/boot/dts/bouffalolab/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0
> +dtb-$(CONFIG_SOC_BOUFFALOLAB) += bl808-sipeed-m1s.dtb
> diff --git a/arch/riscv/boot/dts/bouffalolab/bl808-sipeed-m1s.dts b/arch/riscv/boot/dts/bouffalolab/bl808-sipeed-m1s.dts
> new file mode 100644
> index 000000000000..64421fb2ad67
> --- /dev/null
> +++ b/arch/riscv/boot/dts/bouffalolab/bl808-sipeed-m1s.dts
> @@ -0,0 +1,30 @@
> +// SPDX-License-Identifier: (GPL-2.0+ or MIT)
> +/*
> + * Copyright (C) 2022 Jisheng Zhang <jszhang@kernel.org>
> + */
> +
> +/dts-v1/;
> +
> +#include "bl808.dtsi"
> +
> +/ {
> +	model = "Sipeed M1S";
> +	compatible = "sipeed,m1s", "bouffalolab,bl808";

Missing bindings.


Best regards,
Krzysztof

