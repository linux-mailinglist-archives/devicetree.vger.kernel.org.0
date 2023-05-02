Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E07346F4B12
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 22:14:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229580AbjEBUOJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 16:14:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229911AbjEBUNt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 16:13:49 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC3B010FF
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 13:13:48 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-94f3cd32799so862243866b.0
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 13:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683058427; x=1685650427;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o2w+Wha5d6pNOpy+IF4g45uyponM0gyc/yF+Yav3Ocw=;
        b=vD63Nt3jIl2qjqd0okRcdXjngtcFaKC1GDdJquxnTuGDyQcuPXPyfgwO5Q6u86GAn7
         iEo3XekMeEKQsStcBuf2VI9FVs4ux2LNWAm2R8GU4ocl9TwzpVmy84j2sUgtXFymKgvG
         sfzAeV5mhzNY4n/T0YQYvIjJDsbYejbPeNDeT4ioauUr3si0nWrKVo4MznTG0HniwF7o
         3s0q0VMk3YwsEP8B99g/1L+vFpWdyRyGEC9C+TtR+8J9eRBI0ZwrM5//9Z7KEkJUXFUl
         oX3/+4AEpRwOYRaArb95sdo0b+eswB6KV73DMdgMovZ4TIkqJxoaXBnEyuZPt0/W9gNg
         6mCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683058427; x=1685650427;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o2w+Wha5d6pNOpy+IF4g45uyponM0gyc/yF+Yav3Ocw=;
        b=fKVIPO4uTRCjtj9WBXYFcsU9s6rqeWfEhNzbVpe6jbubnccdsWp6sI81tZvG9UKLm3
         2hRpVYuii7bKE6Ab2j8LHz+X7yvKM2Nbgk4JGxWlCmOr28OqRZDSb/fxxfIU5zrz5R1l
         ogk3DmUgYnwFFw2p2TeL/NQoEZmSZJOyvJZzhSsUxIZLcmVV1bovkSvJueje6cNuNjVR
         i8tBPwX2opPzCTqIja+vBVvKb5nYUObaEt4RTePWrYbPbPSvq+8N8C2q2/nrP6xU6lkG
         XYksaqN7CBtFbk5MZacPw6XpzuqDtdJWumZkX+RkjbwqbFqNXGNzVtVD740X9O0qXS1I
         yGCQ==
X-Gm-Message-State: AC+VfDzlq3V3BVt+NDGzc4SA1pSxgnX1EROYMiT5YeaYTsJ5At+DSKy+
        /V+uxKPRVf+uezWy2saF2BaaNA==
X-Google-Smtp-Source: ACHHUZ50UOjD0Ym/zi+b23+V2ZiKjsCpotGAFLzCfG46apW+KYdYvy8r5ncZKeeWQhtRxtakEdsyZg==
X-Received: by 2002:a17:906:c156:b0:94e:2db:533e with SMTP id dp22-20020a170906c15600b0094e02db533emr1529033ejc.49.1683058427203;
        Tue, 02 May 2023 13:13:47 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:37be:eda5:e303:19e0? ([2a02:810d:15c0:828:37be:eda5:e303:19e0])
        by smtp.gmail.com with ESMTPSA id e1-20020a17090681c100b0094f67ea6598sm16405001ejx.193.2023.05.02.13.13.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 13:13:46 -0700 (PDT)
Message-ID: <e0b50ae1-b501-cb41-829f-736903e5794f@linaro.org>
Date:   Tue, 2 May 2023 22:13:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH] ARM: zynq: dts: Setting default i2c clock frequency to
 400kHz
Content-Language: en-US
To:     Michal Simek <michal.simek@amd.com>, linux-kernel@vger.kernel.org,
        monstr@monstr.eu, michal.simek@xilinx.com, git@xilinx.com
Cc:     Varalaxmi Bingi <varalaxmi.bingi@amd.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <4dde5d1eb8e4572dae4295a19a4c83002a58e5da.1683035611.git.michal.simek@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4dde5d1eb8e4572dae4295a19a4c83002a58e5da.1683035611.git.michal.simek@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/05/2023 15:53, Michal Simek wrote:
> From: Varalaxmi Bingi <varalaxmi.bingi@amd.com>
> 
> Setting default i2c clock frequency for Zynq to maximum rate of 400kHz.
> Current default value is 100kHz.
> 
> Signed-off-by: Varalaxmi Bingi <varalaxmi.bingi@amd.com>
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> ---
> 
>  arch/arm/boot/dts/zynq-7000.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/zynq-7000.dtsi b/arch/arm/boot/dts/zynq-7000.dtsi
> index cd9931f6bcbd..a7db3f3009f2 100644
> --- a/arch/arm/boot/dts/zynq-7000.dtsi
> +++ b/arch/arm/boot/dts/zynq-7000.dtsi
> @@ -149,6 +149,7 @@ i2c0: i2c@e0004000 {
>  			clocks = <&clkc 38>;
>  			interrupt-parent = <&intc>;
>  			interrupts = <0 25 4>;
> +			clock-frequency = <400000>;

I think this should be rather property of the board, because it depends
on I2C devices, right?

Best regards,
Krzysztof

