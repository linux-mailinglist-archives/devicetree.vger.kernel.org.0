Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D0A55B3D28
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 18:39:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230037AbiIIQjW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 12:39:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230108AbiIIQjJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 12:39:09 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7284B142DA0
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 09:39:07 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id r12so953273ljg.10
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 09:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=C8EFOrarFgcH9AimKTDz/kV+dDC4aGl58YpTJdmNSjU=;
        b=m4xdA0A0cbvAzvVI69pUofSXJcUZHq8o/kzFhmSVtGPDXMsaRHIbqvCF4PdTp0UAI7
         S+F0Q4RnehEwjK0N+6Fcy9N/PLicbeQawYrjQj91X3xXHpetqLKwnZKZ9qEORyxnYaXD
         mV1KQHXAz75M3s5YnXyC08gKAyRuDa+I6amGAaxshpuUHpEBYZ3Mlf2qV5peTmqSbk58
         7KAtuRMokdnJ7LOZJqxAgVL9TFh+AgPUNwNayVXO8GKj7uP9uDoE7oIzNZcDbi8JNWs8
         Epq8tJ4sotYEql6Jn/3O7I4ORZ+uj+w6fw9Y3eP72ogq9vpkMb96soZfTxZdDGGO0o9e
         ImGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=C8EFOrarFgcH9AimKTDz/kV+dDC4aGl58YpTJdmNSjU=;
        b=3T07TKbtfiQXcBoRjLn+MynlPF/zybpWZVsBanPU2N6HCktFsW6BjOV5aq0pfgbPmN
         w6ZuSAaw0cltCFk2HBsZ5+9s5GSBqc+sBBhrdkpxSqJ07FxOg93v/3qUyIwY0FP4+OTl
         /iH/BkkBeotOr2qjlEhhwFgQh9iRj7DNbL1A1a9Lx1Mq4Rv2ffOh26DGPaV+/pS3jFSU
         0OCwGHIGdU3l+iWv0zOvZDvhVT52SQrvVCmVeOJJ2b/PwtAcqlRwGzGO/l+NoArpstCr
         irVazlT5hnpM4IRTzMo7elT5qugYOBlZoz+MXgKWq+hS5ElnPTlHhgKeSf+EswUKGzHI
         96SQ==
X-Gm-Message-State: ACgBeo2L6S1DhMue8NfFleSQlF9EFfwAbn+wMjz22H1jU0UPRkX5G+8T
        s17oNKo7yc7XpeZ9FJdBbkutqQ==
X-Google-Smtp-Source: AA6agR4SNJRWarydZ5VLp359Lgv+QR+yZRAFXcH/WrnxMJMgK9lSw/Vl7ODP9YCBx7Qb7RooCS+bLg==
X-Received: by 2002:a05:651c:1cd:b0:261:bef9:ada8 with SMTP id d13-20020a05651c01cd00b00261bef9ada8mr4128624ljn.387.1662741545867;
        Fri, 09 Sep 2022 09:39:05 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 6-20020a05651c00c600b0026ac3fedd20sm139001ljr.86.2022.09.09.09.39.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 09:39:05 -0700 (PDT)
Message-ID: <7585e56e-0983-de27-7c1b-9ec30898d4bd@linaro.org>
Date:   Fri, 9 Sep 2022 18:39:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] dt-bindings: pwm: tegra: Document Tegra234 pwm binding
Content-Language: en-US
To:     Sandipan Patra <spatra@nvidia.com>, thierry.reding@gmail.com,
        jonathanh@nvidia.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     bbasu@nvidia.com, kyarlagadda@nvidia.com
References: <20220909155258.17908-1-spatra@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220909155258.17908-1-spatra@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/09/2022 17:52, Sandipan Patra wrote:
> The PWM controller blocks are identical to ones found on the
> Tegra194 SoC. No driver changes are required and compatible string
> "nvidia,tegra194-pwm" will be used as a fallback.
> 
> Signed-off-by: Sandipan Patra <spatra@nvidia.com>
> ---
> V4: Mention fallback compatible

The patch is not titled v4.

> 
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

No differences here. You sent something old...

Best regards,
Krzysztof
