Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0AA468D4CD
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 11:50:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231539AbjBGKuQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 05:50:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231793AbjBGKuP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 05:50:15 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94D5820D15
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 02:50:01 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id a2so12837843wrd.6
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 02:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JPU4c6/2gEvDtOJmqDP/4N5iEFs8HAMHjdinLwd7U9w=;
        b=KS00MfejmcUU1BvzSUWzY0Wfupwn5RVVrvD7TcZlXs38iLPRNpuIxW3JpIcfutHQGJ
         LxQe5IIqJAAGALAa7vyb0nipoMP1ghPy+057DHh8vsLd9l5EkB6JJMsnSx0+JRmiYmh5
         OFqyijgU1YrkTZ097IsJn8uHnt2YqRhjt6AXFLIbC8zu14DhnrFZkgVscPB47P4mcRkz
         9DJr5IukM/bJ9VvJj4ZJeFm4lzeey09+otIvPGCaNEX0d+zZN/z6UQh1v1dSKmD/M+96
         48EtrTdfSNS9SLeBy8KNCRVEriQne6Utd4YrYvjsckOScYliE2EK4ZUIgX1x1lEhrzxP
         LjMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JPU4c6/2gEvDtOJmqDP/4N5iEFs8HAMHjdinLwd7U9w=;
        b=EzbseNh4o101U8KbPC4c7+1Xaz2wA1DO+HA8lqJSq6RpBHRPcNs5UAOCzREk2M9/zA
         yFlBASVEXYPmGyK3eOgwKARzbt/ntjLPr5MoMFr58Hlq1JFRO5g5QC1D/hTI2ZtG8209
         3rwI/0bJQxLheFeOqIx8ojhGc5HY7R1K6eEq67CdVSsKagxENJy/ImE9AknUkwez5TeQ
         a5YPLudAWfJAMPF0cRnJaW2Wo4VyPJ+Rk/Zg76JP6ARzBqFFfwAREY5k7oXt44biXXdq
         p1PznFruz6Hfdt5TG7jDYNEcMUK5YB9s0G+Gh1ngqqFO5qmvNcAC/jpiciS6+T1/eVGv
         uN5g==
X-Gm-Message-State: AO0yUKWBvmkXlokoiYNlWe5n59mu27JNtTj0JgL/9EdhhBz4YiywN+NB
        OCzGyRzBX384526VZhlwVvVB3g==
X-Google-Smtp-Source: AK7set/9wUxsy0yxrzdEVeRLiji+UFrxC9IExegSW7jS2gIGAJxl7AYghO9t+wSI2fha3uyOdOBN9A==
X-Received: by 2002:a5d:4cc6:0:b0:2c3:d657:e951 with SMTP id c6-20020a5d4cc6000000b002c3d657e951mr2237304wrt.29.1675767000164;
        Tue, 07 Feb 2023 02:50:00 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h7-20020adffa87000000b002c3e698d7a4sm5533129wrr.24.2023.02.07.02.49.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Feb 2023 02:49:59 -0800 (PST)
Message-ID: <159d831a-7a36-bf2b-3ee8-d4338e999b9f@linaro.org>
Date:   Tue, 7 Feb 2023 11:49:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 1/2] ARM: dts: socfpga: Add enclustra PE1 devicetree
Content-Language: en-US
To:     Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        Dinh Nguyen <dinguyen@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de
References: <20230207094101.522240-1-s.trumtrar@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230207094101.522240-1-s.trumtrar@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/02/2023 10:41, Steffen Trumtrar wrote:
> The enclustra PE1 is a baseboard from enclustra GmbH for the enclustra
> Mercury AA1+ SOM.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/boot/dts/Makefile                    |  1 +
>  .../boot/dts/socfpga_arria10_mercury_pe1.dts  | 55 +++++++++++++++++++
>  2 files changed, 56 insertions(+)
>  create mode 100644 arch/arm/boot/dts/socfpga_arria10_mercury_pe1.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index d08a3c450ce7..2714b70f2a67 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1179,6 +1179,7 @@ dtb-$(CONFIG_ARCH_S5PV210) += \
>  dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += \
>  	socfpga_arria5_socdk.dtb \
>  	socfpga_arria10_chameleonv3.dtb \
> +	socfpga_arria10_mercury_pe1.dtb \
>  	socfpga_arria10_socdk_nand.dtb \
>  	socfpga_arria10_socdk_qspi.dtb \
>  	socfpga_arria10_socdk_sdmmc.dtb \
> diff --git a/arch/arm/boot/dts/socfpga_arria10_mercury_pe1.dts b/arch/arm/boot/dts/socfpga_arria10_mercury_pe1.dts
> new file mode 100644
> index 000000000000..a236489afbc2
> --- /dev/null
> +++ b/arch/arm/boot/dts/socfpga_arria10_mercury_pe1.dts
> @@ -0,0 +1,55 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2023 Steffen Trumtrar <kernel@pengutronix.de>
> + */
> +/dts-v1/;
> +#include "socfpga_arria10_mercury_aa1.dtsi"
> +
> +/ {
> +	model = "enclustra,mercury-pe1";

This is user-visible string, not compatible. git grep for examples.

Best regards,
Krzysztof

