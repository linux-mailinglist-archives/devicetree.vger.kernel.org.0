Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20DBF623017
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 17:23:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231192AbiKIQXa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 11:23:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231340AbiKIQX3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 11:23:29 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3296F263F
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 08:23:27 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id k19so26451976lji.2
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 08:23:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WoC80miIsefyGPSKEVbqnhPJ5dqV5iYIfoFbbK6zWNQ=;
        b=b1SGHKo1YSCc83J2/YYNCcxsuiYQjYBE0WYEgwHWAi7L8bHG4UJn3J9LDEtbnfsptP
         aFyreDLfxolxz6zuvEZ8RuZ56wBlR0Y/oBBX2ZGjjKSMeEXmUNjILpNpnCgN+TnsGTx+
         YYiSOToUjDs3rWhKR/oU78lB68ObJrIhp7gcKsfhneijr+WngpEMq7+J8jOG2Ua2ltff
         92FQovOsb1dCI0UwwLr/HvOBGOzEibBj9NwclpmoPW5CfkaLPMmcQlElsS5VMz32j6TO
         5xR0eVb4sy1JDjiHEnbUWMx4Tj3EiWxMYVoVkWJGhYXpJ8C7bHHO7VYgrddwhCVwvmEH
         XhKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WoC80miIsefyGPSKEVbqnhPJ5dqV5iYIfoFbbK6zWNQ=;
        b=IZvPdmQEgNFTca10lMmz21uzfo1PPtiHRXlpqMmyF2o40rU3qDJyPvI/KLWJMPgY2C
         6bnbrI7FqD8xBN8Z+u4MuwGPYdps0dTFP5/BI6srMVorj3eQxCGzN/h5BWgn+gI4K507
         KiBloRnyDJwgDDvYXdzpTsN2drfqWPgSevkQIPYsN7ZmGi8XUEqjd5/FVmzDqtuVIUHd
         ZmOTbgYmtVXZH6+Dhdod94wUrxDvoH76Nw4A6CukKZqOQ6qNdU9ixHDc/vJzt5W5BRVi
         MVx5cqBsTolgKKLtHqzjLxFmVhNwyAEXrUQ1juFYjKFiAi1gp1a/vZMZS6yBKTc8r9G0
         wuZQ==
X-Gm-Message-State: ACrzQf1oKr2vnxURY6gLRblkXoLNbJOsj9d0j7RtCS42bK+HMU9/OtiL
        BeVkuqCbas25egDNEH97y+yXMg==
X-Google-Smtp-Source: AMsMyM41aYXAjxNst/WXtyt1D+AEVyJiMLEf/mCm4wDOU6I9XLV4i0vsbNyrnHIE6D2ED2nad+m2jQ==
X-Received: by 2002:a05:651c:1c3:b0:277:206:9c45 with SMTP id d3-20020a05651c01c300b0027702069c45mr8596358ljn.457.1668011005554;
        Wed, 09 Nov 2022 08:23:25 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id h12-20020a19ca4c000000b004b40f2e25d3sm751966lfj.122.2022.11.09.08.23.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 08:23:24 -0800 (PST)
Message-ID: <2af9a47e-acc4-d2f1-8fc9-281385d18d51@linaro.org>
Date:   Wed, 9 Nov 2022 17:23:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 3/5] ARM: dts: nanobone: Enable I2C temperature sensor
Content-Language: en-US
To:     Mark Jackson <mpfj@newflow.co.uk>,
        =?UTF-8?Q?Beno=c3=aet_Cousson?= <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221109160904.183147-1-mpfj@newflow.co.uk>
 <20221109160904.183147-4-mpfj@newflow.co.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221109160904.183147-4-mpfj@newflow.co.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/11/2022 17:09, Mark Jackson wrote:
> The NanoBone platform supports a temperature sensor on the I2C bus.
> 
> Signed-off-by: Mark Jackson <mpfj@newflow.co.uk>
> ---
>  arch/arm/boot/dts/am335x-nano.dts | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/am335x-nano.dts b/arch/arm/boot/dts/am335x-nano.dts
> index cecc2afaeff4..2be831927af6 100644
> --- a/arch/arm/boot/dts/am335x-nano.dts
> +++ b/arch/arm/boot/dts/am335x-nano.dts
> @@ -212,6 +212,11 @@ &uart5 {
>  	status = "okay";
>  };
>  
> +temperature-sensor@48 {
> +	compatible = "lm75";
> +	reg = <0x48>;
> +};

This should not work - you put the node in some random place.

Best regards,
Krzysztof

