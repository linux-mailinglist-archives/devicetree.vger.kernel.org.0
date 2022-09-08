Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0A9B5B1C86
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 14:13:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229761AbiIHMNk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 08:13:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231543AbiIHMNi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 08:13:38 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07DA1E55B7
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 05:13:37 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id bt10so27395994lfb.1
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 05:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=CdTbzayCWTpd5wt/KieqkvbzD1bEPUGBRGGODsZ9rls=;
        b=DiH1e9VsgX7T95VSZ2Z9aEMHESPF3rbmT++m2zbpKfSg12yOg5KQkmFf+wkMJUKmKy
         GmDUo/FLJ/Z/h5E5muTlVudD3kjLuOo14UAdm38OCGGVEU6nKIURxSeSusgbvm97yeGO
         DfN921K/VOud1cuajk+Lvetf8nSqVJkuwpACimFczoraXc/e2slbOkdGH/I7wNkYtagL
         KIEVmh+ywzO/+aExdEGVMTWUUWFJINX6L/A1ihT2cd1DcP/qB48zJ2KiVvKPCJwhIqef
         pnLLSVS1rpuHUnmrU3ZaTPiotpMM50s76orGpG9fBXdnA8WJ8q8UJCwHbX2Gyu471U+e
         Nx3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=CdTbzayCWTpd5wt/KieqkvbzD1bEPUGBRGGODsZ9rls=;
        b=w5dweuvwfwapk+jpbU+FJUA88TwFAv1Gsp7paFkK51coTDTAnEYD1EXVygwSjmckao
         Yorwx15COP95vk3AaYFaMlqH3W2b6HZdn6i8Ccld4l0sTK34lelTrWdD1SA+hBiB4x9r
         61+ruk4n9gu6Ej5IzEydejvtFJvMIqbFPq808G01znydNyV2fCADSLIC/n8LqP5QyDkX
         +IEuRG/ivWYrot4fxPVGCl1eWWOr8N7QT9MeqU/Cuj+OAoWw23jpBUJvjbIkQ4Z4xHr7
         7m4vZYjhMCsNYBqz3j//JrYiP1elBHd53g+6yZ/8/L0WSSOW/lQuUcoJOeRIPfL7q5hA
         HxLA==
X-Gm-Message-State: ACgBeo0zWRyoXe7xB2LMAUEaQ0WEAtMUuKktMfgF4xf/QN/ZusNzgryo
        MQhwvDZ3IR/uUFk7z0WomK29Vw==
X-Google-Smtp-Source: AA6agR4ROtO1banKCTqX6GzhOCTGZsXNy9bx/yMxFW8AkEFsUDy2TxCY1EHHk1Udcg/9Ec4uBnr9+Q==
X-Received: by 2002:a05:6512:1112:b0:494:6e1c:f889 with SMTP id l18-20020a056512111200b004946e1cf889mr2436191lfg.423.1662639215402;
        Thu, 08 Sep 2022 05:13:35 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v4-20020ac258e4000000b0048ae518364dsm173890lfo.148.2022.09.08.05.13.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 05:13:34 -0700 (PDT)
Message-ID: <75d5e29e-7418-3b8f-f549-6a69fd479852@linaro.org>
Date:   Thu, 8 Sep 2022 14:13:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/3] dt-bindings: pwm: tegra: Add compatible string for
 Tegra234
Content-Language: en-US
To:     Sandipan Patra <spatra@nvidia.com>, thierry.reding@gmail.com,
        jonathanh@nvidia.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     bbasu@nvidia.com, kyarlagadda@nvidia.com
References: <20220907062545.30203-1-spatra@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220907062545.30203-1-spatra@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/09/2022 08:25, Sandipan Patra wrote:
> Tegra234 has 8 different PWM controllers and each controller has only
> one output. Add a device tree compatible string for Tegra234.
> 
> Signed-off-by: Sandipan Patra <spatra@nvidia.com>
> ---
>  Documentation/devicetree/bindings/pwm/nvidia,tegra20-pwm.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pwm/nvidia,tegra20-pwm.txt b/Documentation/devicetree/bindings/pwm/nvidia,tegra20-pwm.txt
> index 74c41e34c3b6..331c1e66e8fa 100644
> --- a/Documentation/devicetree/bindings/pwm/nvidia,tegra20-pwm.txt
> +++ b/Documentation/devicetree/bindings/pwm/nvidia,tegra20-pwm.txt
> @@ -9,7 +9,7 @@ Required properties:
>    - "nvidia,tegra132-pwm", "nvidia,tegra20-pwm": for Tegra132
>    - "nvidia,tegra210-pwm", "nvidia,tegra20-pwm": for Tegra210
>    - "nvidia,tegra186-pwm": for Tegra186
> -  - "nvidia,tegra194-pwm": for Tegra194
> +  - "nvidia,tegra194-pwm": for Tegra194, Tegra234

The commit msg suggest it is different. Are you sure they are exactly
the same? If not the same, but compatible, you should use fallback.

Best regards,
Krzysztof
