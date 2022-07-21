Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34DD357CE92
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 17:06:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229765AbiGUPGs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 11:06:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbiGUPGr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 11:06:47 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43AF3664FB
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 08:06:46 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id a13so1991307ljr.11
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 08:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=TzpnjbbO+IVs3qfOd3o+Cr61rfWAsaSxmeg2JC0qNPI=;
        b=RTaxtBTvAaJJlbsZle/nXb70Ns5yqS2MQYrc8g/udMQSnRzGm3FHSVPN8I2Pp8/M+P
         VbVz/dm6EqVfUNa1cCptv+RoT7/iLNVjiICQkIwrUZlXjXboHIdJ5Q8aq3DNpZ5Jgj4F
         uXSBuuYRHmE/jWw7YRowhK/0p4fGr/megQvSjmg/LXEGGq32AvnMpcaUCCiwdGMFFPYt
         Y1eb/cAf24K+Df3V6xHyUr8I1ueB1GAZEwkjerPzjsSkpYzoULNFOoEG9XSFzBTQ/gE0
         1PiLEA0fboOWQV/q53z/rNU5HYuJGOItsK3zJNSZ8bx5eaD0xhgnXR4XFONXqhMYPwP6
         iZ3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TzpnjbbO+IVs3qfOd3o+Cr61rfWAsaSxmeg2JC0qNPI=;
        b=4De1nIJ6NjSHBufo/s/PbD1AeiBLTqlEA7txtVAZ4TYeZ4abwsPxJoxY4JCcHxFPTY
         5rCOsRlpIttENlBDZVhw570gzpFPDoye0ZLELaaBgtrZfZ3yaMHxp+U3k34FrhNw4jUX
         SRjH0o1kZ+HaiaoR+RsDqZCm2prnsmRe7qa+szvHyc3Re76D/axX8wpEU7gova5fyFI2
         /LTqb6O3e+oYIMift+G8YorayVl1eCP216iENXZtrzwGKjrE9f65+c9tFOX8d/1L3xR3
         kHGlU7iD+zFX0aI7GBOukVpf7NEe/eYL18hADKDLI5iIcajPyDL7nLk0PFlKgeQTTg9d
         1+5w==
X-Gm-Message-State: AJIora/1KGAki+xLaa3jB7xtW4MkqCbJb43imHrxqw92JHYX+kZ+RDDm
        hjYvY1w2ieNtF4jIK2c6ksCzDbKGWZkxpDAG
X-Google-Smtp-Source: AGRyM1u+fRMQg6pDd9wdQfolOD1n9wiZHIQeNJya5ntRTV+LyRolvzKPjvcNgmwbiFss0cu77RPXoA==
X-Received: by 2002:a2e:b88a:0:b0:25d:aa7b:e6ec with SMTP id r10-20020a2eb88a000000b0025daa7be6ecmr11357964ljp.67.1658416004355;
        Thu, 21 Jul 2022 08:06:44 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id v18-20020a2ea612000000b0025d681fbebdsm550236ljp.100.2022.07.21.08.06.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jul 2022 08:06:43 -0700 (PDT)
Message-ID: <2a78e185-af89-91b9-66c4-53ac6662cd1f@linaro.org>
Date:   Thu, 21 Jul 2022 17:06:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v1 4/5] ARM: configs: multi_v7_defconfig: Enable HPE GXP
 SPI driver
Content-Language: en-US
To:     nick.hawkins@hpe.com
Cc:     broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, verdun@hpe.com,
        linux@armlinux.org.uk, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, arnd@arndb.de, joel@jms.id.au
References: <20220720201158.78068-1-nick.hawkins@hpe.com>
 <20220720201158.78068-5-nick.hawkins@hpe.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220720201158.78068-5-nick.hawkins@hpe.com>
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

On 20/07/2022 22:11, nick.hawkins@hpe.com wrote:
> From: Nick Hawkins <nick.hawkins@hpe.com>
> 
> Enable the SPI driver on the HPE GXP BMC.
> 
> Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>
> ---
>  arch/arm/configs/multi_v7_defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> index ce9826bce29b..9dd827a6c3bc 100644
> --- a/arch/arm/configs/multi_v7_defconfig
> +++ b/arch/arm/configs/multi_v7_defconfig
> @@ -443,6 +443,7 @@ CONFIG_SPI_CADENCE=y
>  CONFIG_SPI_DAVINCI=y
>  CONFIG_SPI_FSL_QUADSPI=m
>  CONFIG_SPI_GPIO=m
> +CONFIG_SPI_GXP=y

Module, so =m


Best regards,
Krzysztof
