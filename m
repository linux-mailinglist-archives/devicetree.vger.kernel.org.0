Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7962518433
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 14:24:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235202AbiECM1c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 08:27:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbiECM1b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 08:27:31 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C31C5344F2
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 05:23:58 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id l7so33136269ejn.2
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 05:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=1+B0nDSelxPWBKeFfyRMZYaCgDIYB4AAPe14B7+Vz4E=;
        b=Nq6gKXjCnhJbwyezIt3Nz5aUKU9CQkaKn1KS85YpIE/HGNvvbyjxmIwG1vBOQ6xm6n
         iIFZXpaaIjmrrf/1Xo0aHiYZRQ7/KjU2cC7wsdSpRSueROUQ+Y4GXHYFcqYHg5i4255s
         s3zIJyZ2sY3Mv6lK8QUvv7Jj5DMfsUXCQcrAuTqQa6K+332zH5ynu/2NLdgPseVqNmS8
         79FZuyKNvnhMAhnNqekydF/KqC3YGtPIXdzDEBkWb/lCpVObE2ufIOuKn5kou4By3rjT
         8LfnbipANv3e5rwfREo0KPr7twucvaFgQ7Xl0fbh2u928zpsZXzLVAWBjv7NlDzmPi2M
         NY8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=1+B0nDSelxPWBKeFfyRMZYaCgDIYB4AAPe14B7+Vz4E=;
        b=t06BTqyK4EOy2bTbeMx8o511eQKOdkdV2X3vxyZiumaIPCVRlRmhXwWh5alVUj0uAM
         +TRxsRjrsQHjNnbjMApiYE5SwFaupFz9cG24onkkfCNuDsTuHxltDd8JWwgJJn05Sn99
         +4a/XqkpN7sAbOCrLEDECwpQHrD/j8Xo1mFyobWJDROTA6xxi+FcYlgLDcV0ZG7kQgz0
         Fft07mmjgAjZoI9I3uay375D0Mm2iMIrl4sEpQoEOeVhlUuUZTJ3iv5t9THRhuIDp9Td
         tSygwIuZXrGEd3rWXuDPj8V+YonDuk6WAQuOISgizPDdgIvaUd28Mf/0Sc7eLcOsl6Mv
         YPYA==
X-Gm-Message-State: AOAM532+zbMzBeSy39XORm6qs0HPEXmkcxwr34WHr3qmKz0COCWgXZN/
        EC8brbNV/iEmqpUTzXGN6iYACg==
X-Google-Smtp-Source: ABdhPJxZ+H08qPQ20bNY26ofF/QfZilqLtIYkSJAGvGJKzajufuYx5Jh4Ht0ribtEK3RmbE2ZTRyxA==
X-Received: by 2002:a17:906:5793:b0:6f3:d546:1764 with SMTP id k19-20020a170906579300b006f3d5461764mr16045203ejq.247.1651580637319;
        Tue, 03 May 2022 05:23:57 -0700 (PDT)
Received: from [192.168.0.203] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id eo9-20020a1709069b0900b006f3ef214e00sm4561289ejc.102.2022.05.03.05.23.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 May 2022 05:23:56 -0700 (PDT)
Message-ID: <e549b689-4043-e689-d0b0-f274ed08a665@linaro.org>
Date:   Tue, 3 May 2022 14:23:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] arm64: dts: intel: add device tree for n6000
Content-Language: en-US
To:     matthew.gerlach@linux.intel.com, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, dinguyen@vger.kernel.org,
        robh+dt@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org
References: <20220502165818.4002157-1-matthew.gerlach@linux.intel.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220502165818.4002157-1-matthew.gerlach@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/05/2022 18:58, matthew.gerlach@linux.intel.com wrote:
> From: Matthew Gerlach <matthew.gerlach@linux.intel.com>
> 
> Add a device tree for the n6000 instantiation of Agilex
> Hard Processor System (HPS).
> 
> Signed-off-by: Matthew Gerlach <matthew.gerlach@linux.intel.com>
> ---
>  arch/arm64/boot/dts/intel/Makefile            |  1 +
>  .../boot/dts/intel/socfpga_agilex_n6000.dts   | 77 +++++++++++++++++++
>  2 files changed, 78 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/intel/socfpga_agilex_n6000.dts
> 
> diff --git a/arch/arm64/boot/dts/intel/Makefile b/arch/arm64/boot/dts/intel/Makefile
> index 0b5477442263..1425853877cc 100644
> --- a/arch/arm64/boot/dts/intel/Makefile
> +++ b/arch/arm64/boot/dts/intel/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += socfpga_agilex_socdk.dtb \
>  				socfpga_agilex_socdk_nand.dtb \
> +				socfpga_agilex_n6000.dtb \
>  				socfpga_n5x_socdk.dtb
>  dtb-$(CONFIG_ARCH_KEEMBAY) += keembay-evm.dtb
> diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex_n6000.dts b/arch/arm64/boot/dts/intel/socfpga_agilex_n6000.dts
> new file mode 100644
> index 000000000000..07f5a5983e5c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex_n6000.dts
> @@ -0,0 +1,77 @@
> +// SPDX-License-Identifier:     GPL-2.0

Except what Rob said: remove the indentation before license.

> +/*
> + * Copyright (C) 2021-2022, Intel Corporation
> + */
> +#include "socfpga_agilex.dtsi"
> +
> +/ {
> +	model = "SoCFPGA Agilex n6000";
> +
> +	aliases {
> +		serial0 = &uart1;
> +		serial1 = &uart0;
> +		ethernet0 = &gmac0;
> +		ethernet1 = &gmac1;
> +		ethernet2 = &gmac2;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	memory {
> +		device_type = "memory";
> +		/* We expect the bootloader to fill in the reg */
> +		reg = <0 0 0 0>;
> +	};
> +
> +	soc {
> +		clocks {
> +			osc1 {
> +				clock-frequency = <25000000>;

This does not look like SoC property... If it is part of Soc, why it is
not provided by clock controller? Where compatible?

If you intended to override nodes, override by label, not by path.

Best regards,
Krzysztof
